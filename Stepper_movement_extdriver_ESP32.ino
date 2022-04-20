#include <AccelStepper.h>

// Define a stepper and the pins it will use with TB6600 external stepper driver
AccelStepper stepperY(1, 33, 32); //(mode, Pul, Dir)
AccelStepper stepperX(1, 14, 27); //(mode, Pul, Dir)

int steps_per_mm_y = 200; //find out based on individual setups
int steps_per_mm_x = 200; //find out based on individual setups

long max_y_mm = 200; //max distance the gantry can travel in mm for y axis
long max_x_mm = 200; //max distance the gantry can travel in mm for x axis

//both pins here can be tied to digital pins as well for full automation, recommended to have manual control to hardstop
byte run_sketch_pin = 5; //master control of whether machine runs the sketch or not, needs to be pulled low to run sketch
byte manual_sketch_rerun_pin = 13; //when the run_sketch_pin is low and the sketch has already run 1 time, trigger LOW to rerun sketch

byte motor_y_enable = 35;
byte motor_y_endStop = 25;
byte motor_x_enable = 26;
byte motor_x_endStop = 12;

bool homed = false; //check if axes are homed once
bool movement_complete = false; //check if sketch has run at least once, will be reset by pulling manual_sketch_rerun_pin LOW

//a sample array of predetermined points that the machine will travel to
const int x1 = 10, yone = 2;
const int x2 = 20, y2 = 4;
const int x3 = 30, y3 = 6;
const int x4 = 40, y4 = 8;
const int x5 = 50, y5 = 10;
const int x6 = 60, y6 = 12;
const int x7 = 70, y7 = 14;
const int x8 = 80, y8 = 16;
const int x9 = 90, y9 = 18;
const int x10 = 100, y10 = 20;
const int x11 = 10, y11 = 22; //have a variant here for testing
const int x12 = 20, y12 = 24;
const int x13 = 30, y13 = 26;
const int x14 = 40, y14 = 28;
const int x15 = 50, y15 = 30;
const int x16 = 60, y16 = 32;
const int x17 = 70, y17 = 34;
const int x18 = 80, y18 = 36;
const int x19 = 90, y19 = 38;
const int x20 = 100, y20 = 40;

//create 2 arrays of point values for easy iteration through points
const int x_positions[20] = {x1, x2, x3, x4,
                             x5, x6, x7, x8,
                             x9, x10, x11, x12,
                             x13, x14, x15, x16,
                             x17, x18, x19, x20
                            };
const int y_positions[20] = {yone, y2, y3, y4,
                             y5, y6, y7, y8,
                             y9, y10, y11, y12,
                             y13, y14, y15, y16,
                             y17, y18, y19, y20
                            };
int counter = 0; //will iterate through arrays

int pos_value = 1; //just a place holder value for the run_function_at_position function, not necessary


void setup()
{
  stepperY.setMaxSpeed(6400); //in steps per second, I'm using 6400 pulses per revolution
  stepperY.setAcceleration(3200); //I found this to be a good balance of getting up to speed
  stepperY.disableOutputs(); //to prevent the coils from getting hot
  stepperY.setPinsInverted(true); //!!! only set to true to reverse motor spin direction if necessary

  stepperX.setMaxSpeed(6400); //in steps per second
  stepperX.setAcceleration(3200);
  stepperX.disableOutputs(); //to prevent the coils from getting hot
  stepperX.setPinsInverted(true); //!!! only set to true to reverse motor spin direction if necessary

  pinMode(motor_y_endStop, INPUT_PULLUP);
  pinMode(motor_y_enable, OUTPUT); //pin to control whether stepper is active
  digitalWrite(motor_y_enable, HIGH); //disable the motor first

  pinMode(motor_x_endStop, INPUT_PULLUP);
  pinMode(motor_x_enable, OUTPUT); //pin to control whether stepper is active
  digitalWrite(motor_x_enable, HIGH); //disable the motor first

  pinMode(manual_sketch_rerun_pin, INPUT_PULLUP);

  delay(2000);

  Serial.begin(115200);
  enable_motor_y();
  enable_motor_x();
  home_motors(); //home all axes to start at (0,0)
  disable_movement();

  pinMode(run_sketch_pin, INPUT_PULLUP); //pin to control whether the sketch run or not
}

void enable_motor_y() {
  digitalWrite(motor_y_enable, LOW);
}

void enable_motor_x() {
  digitalWrite(motor_x_enable, LOW);
}

void disable_motors() { //warning, this overrides all movement, home all motors before continuing
  digitalWrite(motor_y_enable, HIGH);
  delay(20);
  digitalWrite(motor_x_enable, HIGH);
}

void disable_movement() {
  stepperY.disableOutputs(); //to prevent the coils from getting hot but motors still enabled
  delay(20);
  stepperX.disableOutputs();
}

void moveto_motor_y(int distance_y_mm_to_move) { //move to absolute position
  if (0 <= distance_y_mm_to_move <= max_y_mm) { //check that ymax limit not reached
    long steps = distance_y_mm_to_move * steps_per_mm_y;
    stepperY.moveTo(steps); //set the target, this is absolute, zerod at current position
    while (stepperY.currentPosition() != steps) { // Full speed up to 300
      stepperY.run();
      if (digitalRead(run_sketch_pin) == HIGH) {
        disable_movement();
        break;
      }
    }
    //Serial.println(stepperY.currentPosition());
    stepperY.stop(); // Stop as fast as possible: sets new target
    stepperY.runToPosition(); // Now stopped after quickstop
  } else {
    Serial.println("Y movement results in out of range situation");
  }
}

void moveto_motor_x(int distance_x_mm_to_move) { //move to absolute position
  if (0 <= distance_x_mm_to_move <= max_x_mm) {
    long steps = distance_x_mm_to_move * steps_per_mm_x;
    stepperX.moveTo(steps); //set the target, this is absolute, zerod at current position
    while (stepperX.currentPosition() != steps) { // Full speed up to 300
      stepperX.run();
      if (digitalRead(run_sketch_pin) == HIGH) {
        disable_movement();
        break;
      }
    }
    //Serial.println(stepperX.currentPosition());
    stepperX.stop(); // Stop as fast as possible: sets new target
    stepperX.runToPosition(); // Now stopped after quickstop
  } else {
    Serial.println("X movement results in out of range situation");
  }
}

void home_motors() {
  if (digitalRead(motor_x_endStop) == HIGH) {
    while (digitalRead(motor_x_endStop) == HIGH) {
      stepperX.move(-10000000); //some large number
      stepperX.run();
      if (digitalRead(motor_x_endStop) == LOW) {
        stepperX.setCurrentPosition(0); //override current posisiton, can use for homing
        Serial.println(stepperX.currentPosition());
        Serial.println("X homed");
        break;
      }
    }
  } else {
    stepperX.setCurrentPosition(0); //override current posisiton, can use for homing
    Serial.println(stepperX.currentPosition());
    Serial.println("X homed");
  }

  if (digitalRead(motor_y_endStop) == HIGH) {
    while (digitalRead(motor_y_endStop) == HIGH) {
      stepperY.move(-10000000); //some large number
      stepperY.run();
      if (digitalRead(motor_y_endStop) == LOW) {
        stepperY.setCurrentPosition(0); //override current posisiton, can use for homing
        Serial.println(stepperY.currentPosition());
        Serial.println("Y homed");
        break;
      }
    }
  } else {
    stepperY.setCurrentPosition(0); //override current posisiton, can use for homing
    Serial.println(stepperY.currentPosition());
    Serial.println("Y homed");
  }

  homed = true;

}

void zero_motor_position() { //use this to set a new zero point if necessary
  stepperY.setCurrentPosition(0); //override current posisiton, can use for zeroing after moving to new point
  Serial.println(stepperY.currentPosition());
  stepperX.setCurrentPosition(0); //override current posisiton, can use for zeroing after moving to new point
  Serial.println(stepperX.currentPosition());
}

//replace with function that reads a sensor or something, since esp32 is used, perhaps log values to a DB somewhere
void run_function_at_position(int curr_x_pos, int curr_y_pos) {
  Serial.print(curr_x_pos);
  Serial.print(",");
  Serial.print(curr_y_pos);
  Serial.print(",");
  Serial.println(pos_value);
  pos_value++;
  delay(1000);
}

void loop() {
  while (digitalRead(run_sketch_pin) != HIGH && movement_complete == false) {
    homed = false; //to auto home once loop is complete
    enable_motor_x();
    enable_motor_y();

    //just run through the basic coordinates
    while (counter < 20) {
      moveto_motor_x(x_positions[counter]);
      moveto_motor_y(y_positions[counter]);
      run_function_at_position(x_positions[counter], y_positions[counter]);
      counter++;
      if (counter == 20 || digitalRead(run_sketch_pin) == HIGH) {
        counter = 0;
        pos_value = 1;
        movement_complete = true;
        break;
      }
    }

    //break out of outer while loop
    if (digitalRead(run_sketch_pin) == HIGH) {
      break;
    }

    //some examples of basic movement
    /*
      moveto_motor_x(50);
      moveto_motor_y(50);
      moveto_motor_x(0);
      moveto_motor_y(0);
    */
  }

  //once sketch has run once, the axes will autohome again
  while (homed == false) {
    home_motors();
    if (homed == true) {
      disable_motors();
      disable_motors();
      break;
    }
  }

  //to run the sketch again when pressed or pulled low, requires run_sketch_pin to be LOW first
  if (digitalRead(manual_sketch_rerun_pin) == LOW && digitalRead(run_sketch_pin) == LOW) {
    movement_complete = false; //reset this value
  }

}
