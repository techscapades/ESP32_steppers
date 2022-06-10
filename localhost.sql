-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 09, 2022 at 08:56 AM
-- Server version: 10.3.34-MariaDB-0+deb10u1
-- PHP Version: 7.3.31-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esp32_coor`
--
CREATE DATABASE IF NOT EXISTS `esp32_coor` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `esp32_coor`;

-- --------------------------------------------------------

--
-- Table structure for table `test_coor`
--

CREATE TABLE `test_coor` (
  `id` int(6) UNSIGNED NOT NULL,
  `x_coor` int(6) NOT NULL,
  `y_coor` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test_coor`
--

INSERT INTO `test_coor` (`id`, `x_coor`, `y_coor`) VALUES
(1, 10, 10),
(2, 20, 20),
(3, 30, 30),
(4, 40, 40),
(5, 50, 50),
(6, 60, 60),
(7, 70, 70),
(8, 80, 80),
(9, 90, 90),
(10, 100, 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test_coor`
--
ALTER TABLE `test_coor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test_coor`
--
ALTER TABLE `test_coor`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

--
-- Dumping data for table `pma__bookmark`
--

INSERT INTO `pma__bookmark` (`id`, `dbase`, `user`, `label`, `query`) VALUES
(1, 'xinterra_hansenDB', 'admin', 'create_24_array_sensor', 'CREATE TABLE sensor1 (\r\n    reading_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,\r\n    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,\r\n    sensor1 INT(8),\r\n    sensor2 INT(8),\r\n    sensor3 INT(8),\r\n    sensor4 INT(8),\r\n    sensor5 INT(8),\r\n    sensor6 INT(8),\r\n    sensor7 INT(8),\r\n    sensor8 INT(8),\r\n    sensor9 INT(8),\r\n    sensor10 INT(8),\r\n    sensor11 INT(8),\r\n    sensor12 INT(8),\r\n    sensor13 INT(8),\r\n    sensor14 INT(8),\r\n    sensor15 INT(8),\r\n    sensor16 INT(8),\r\n    sensor17 INT(8),\r\n    sensor18 INT(8),\r\n    sensor19 INT(8),\r\n    sensor20 INT(8),\r\n    sensor21 INT(8),\r\n    sensor22 INT(8),\r\n    sensor23 INT(8),\r\n    sensor24 INT(8)\r\n)');

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('admin', '{\"relation_lines\":\"true\",\"angular_direct\":\"direct\",\"snap_to_grid\":\"on\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('admin', '[{\"db\":\"esp32_coor\",\"table\":\"test_coor\"},{\"db\":\"xinterra_hansenDB\",\"table\":\"HansenS1_state_lid\"},{\"db\":\"xinterra_hansenDB\",\"table\":\"HansenS1\"},{\"db\":\"xinterra_hansenDB\",\"table\":\"hansen_sensor_startupstate_lid\"},{\"db\":\"xinterra_hansenDB\",\"table\":\"sensor1\"},{\"db\":\"test\",\"table\":\"scores\"},{\"db\":\"test\",\"table\":\"test\"},{\"db\":\"test\",\"table\":\"users\"},{\"db\":\"test\",\"table\":\"person\"},{\"db\":\"test\",\"table\":\"Ali\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('admin', 'xinterra_hansenDB', 'HansenS1', '{\"sorted_col\":\"`HansenS1`.`id`  DESC\"}', '2022-06-08 15:05:54');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('admin', '2022-06-08 10:53:08', '{\"collation_connection\":\"utf8mb4_unicode_ci\",\"ThemeDefault\":\"pmahomme\",\"SendErrorReports\":\"always\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `xinterra_hansenDB`
--
CREATE DATABASE IF NOT EXISTS `xinterra_hansenDB` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `xinterra_hansenDB`;

-- --------------------------------------------------------

--
-- Table structure for table `HansenS1`
--

CREATE TABLE `HansenS1` (
  `reading_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id` int(6) UNSIGNED NOT NULL,
  `sensor1` int(8) DEFAULT NULL,
  `sensor2` int(8) DEFAULT NULL,
  `sensor3` int(8) DEFAULT NULL,
  `sensor4` int(8) DEFAULT NULL,
  `sensor5` int(8) DEFAULT NULL,
  `sensor6` int(8) DEFAULT NULL,
  `sensor7` int(8) DEFAULT NULL,
  `sensor8` int(8) DEFAULT NULL,
  `sensor9` int(8) DEFAULT NULL,
  `sensor10` int(8) DEFAULT NULL,
  `sensor11` int(8) DEFAULT NULL,
  `sensor12` int(8) DEFAULT NULL,
  `sensor13` int(8) DEFAULT NULL,
  `sensor14` int(8) DEFAULT NULL,
  `sensor15` int(8) DEFAULT NULL,
  `sensor16` int(8) DEFAULT NULL,
  `sensor17` int(8) DEFAULT NULL,
  `sensor18` int(8) DEFAULT NULL,
  `sensor19` int(8) DEFAULT NULL,
  `sensor20` int(8) DEFAULT NULL,
  `sensor21` int(8) DEFAULT NULL,
  `sensor22` int(8) DEFAULT NULL,
  `sensor23` int(8) DEFAULT NULL,
  `sensor24` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HansenS1`
--

INSERT INTO `HansenS1` (`reading_time`, `id`, `sensor1`, `sensor2`, `sensor3`, `sensor4`, `sensor5`, `sensor6`, `sensor7`, `sensor8`, `sensor9`, `sensor10`, `sensor11`, `sensor12`, `sensor13`, `sensor14`, `sensor15`, `sensor16`, `sensor17`, `sensor18`, `sensor19`, `sensor20`, `sensor21`, `sensor22`, `sensor23`, `sensor24`) VALUES
('2022-06-08 10:43:22', 1, 191, 168, 158, 130, 108, 98, 182, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 11:43:36', 2, 154, 188, 175, 154, 140, 145, 232, 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 14:39:16', 3, 201, 177, 100, 85, 84, 63, 290, 277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 14:39:23', 4, 201, 175, 101, 85, 84, 63, 291, 277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 14:39:55', 5, 202, 173, 105, 89, 87, 67, 292, 277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:05:34', 6, 202, 166, 119, 102, 98, 78, 293, 277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:07:14', 7, 200, 162, 124, 108, 103, 84, 292, 276, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:07:52', 8, 200, 158, 127, 111, 106, 87, 292, 275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:05', 9, 198, 153, 126, 110, 105, 86, 291, 275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:06', 10, 194, 146, 125, 109, 104, 85, 290, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:06', 11, 190, 142, 124, 109, 103, 85, 290, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:06', 12, 190, 140, 124, 109, 103, 85, 290, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:07', 13, 189, 139, 124, 109, 103, 85, 290, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:07', 14, 187, 136, 123, 108, 103, 85, 290, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:07', 15, 185, 134, 122, 108, 103, 84, 290, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:07', 16, 184, 133, 121, 108, 103, 84, 290, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:08', 17, 184, 133, 121, 108, 103, 84, 290, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:08', 18, 184, 133, 121, 108, 103, 84, 290, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:08', 19, 184, 134, 121, 108, 103, 84, 290, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:08', 20, 185, 134, 121, 108, 103, 84, 290, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:09', 21, 185, 134, 121, 108, 103, 84, 290, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:09', 22, 185, 133, 121, 108, 103, 84, 290, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:09', 23, 184, 132, 121, 108, 103, 84, 290, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:09', 24, 182, 131, 121, 108, 103, 84, 290, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:10', 25, 181, 129, 120, 108, 103, 84, 289, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:10', 26, 180, 128, 120, 108, 103, 84, 289, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:10', 27, 180, 127, 120, 108, 103, 84, 289, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:11', 28, 180, 126, 119, 108, 103, 84, 289, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:11', 29, 180, 126, 119, 108, 103, 84, 289, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:11', 30, 180, 126, 119, 108, 103, 84, 289, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:11', 31, 180, 126, 119, 108, 102, 84, 289, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:12', 32, 180, 126, 119, 108, 102, 84, 289, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:12', 33, 179, 126, 119, 108, 102, 84, 289, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:12', 34, 179, 126, 119, 108, 102, 84, 289, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:12', 35, 179, 125, 118, 107, 102, 84, 289, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:13', 36, 178, 120, 113, 105, 102, 84, 289, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:13', 37, 176, 116, 108, 102, 102, 84, 289, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:13', 38, 173, 111, 102, 99, 102, 84, 289, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:14', 39, 173, 110, 108, 103, 102, 84, 289, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:14', 40, 179, 123, 115, 106, 102, 84, 289, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:14', 41, 186, 133, 120, 108, 102, 84, 289, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:14', 42, 190, 138, 123, 108, 102, 84, 289, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:15', 43, 190, 140, 124, 108, 102, 84, 289, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:15', 44, 191, 141, 124, 108, 102, 84, 289, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:15', 45, 191, 141, 124, 109, 102, 84, 289, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:15', 46, 190, 140, 124, 109, 102, 84, 289, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:16', 47, 190, 139, 123, 109, 102, 84, 289, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:16', 48, 189, 138, 122, 109, 102, 84, 289, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:16', 49, 187, 136, 122, 108, 102, 84, 289, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:16', 50, 185, 133, 121, 108, 102, 84, 289, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:17', 51, 183, 131, 120, 108, 102, 84, 289, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:17', 52, 182, 130, 120, 108, 102, 84, 289, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:17', 53, 181, 129, 120, 108, 102, 84, 289, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:18', 54, 180, 127, 119, 108, 102, 84, 289, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:18', 55, 180, 127, 119, 108, 102, 84, 289, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:18', 56, 179, 126, 119, 108, 102, 84, 288, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:18', 57, 179, 125, 119, 108, 102, 83, 288, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:19', 58, 179, 125, 119, 108, 102, 83, 288, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:19', 59, 179, 125, 119, 108, 102, 83, 288, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:19', 60, 179, 124, 119, 108, 102, 83, 288, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:19', 61, 178, 124, 119, 108, 102, 83, 287, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:21', 62, 176, 124, 119, 107, 102, 83, 287, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:21', 63, 176, 123, 118, 107, 102, 83, 287, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:21', 64, 177, 124, 118, 107, 102, 83, 288, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:21', 65, 178, 126, 118, 107, 102, 78, 287, 270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:22', 66, 177, 125, 118, 107, 100, 73, 285, 265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:22', 67, 175, 120, 116, 106, 93, 63, 283, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:22', 68, 175, 118, 115, 106, 85, 56, 281, 254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:23', 69, 170, 114, 114, 106, 75, 48, 277, 242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:23', 70, 170, 114, 114, 106, 73, 47, 277, 239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:23', 71, 169, 113, 113, 106, 70, 46, 276, 235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:24', 72, 169, 112, 113, 106, 68, 45, 275, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:24', 73, 168, 111, 112, 105, 67, 45, 274, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:24', 74, 169, 110, 111, 105, 66, 45, 274, 229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:25', 75, 169, 111, 112, 105, 64, 45, 274, 226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:25', 76, 169, 112, 112, 105, 63, 45, 274, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:25', 77, 169, 112, 112, 105, 63, 45, 274, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:25', 78, 169, 112, 113, 105, 63, 45, 274, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:26', 79, 169, 111, 112, 105, 63, 45, 274, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:26', 80, 169, 111, 112, 105, 62, 45, 274, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:26', 81, 170, 112, 113, 105, 61, 45, 274, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:26', 82, 171, 114, 114, 106, 60, 45, 274, 221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:27', 83, 171, 115, 115, 106, 60, 45, 274, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:27', 84, 170, 114, 114, 106, 61, 45, 273, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:27', 85, 169, 111, 113, 105, 61, 45, 272, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:28', 86, 169, 109, 112, 104, 61, 44, 270, 221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:28', 87, 168, 106, 110, 103, 60, 44, 266, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:28', 88, 167, 103, 109, 102, 60, 44, 264, 221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:28', 89, 167, 101, 108, 102, 61, 44, 264, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:29', 90, 166, 100, 107, 101, 62, 44, 264, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:29', 91, 166, 100, 106, 100, 61, 44, 264, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:29', 92, 166, 101, 105, 100, 61, 44, 265, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:29', 93, 165, 102, 105, 99, 60, 44, 266, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:30', 94, 165, 102, 105, 99, 60, 44, 265, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:30', 95, 165, 101, 105, 99, 60, 44, 264, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:30', 96, 165, 100, 105, 99, 60, 44, 264, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:30', 97, 165, 99, 105, 99, 60, 44, 263, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:31', 98, 165, 99, 105, 100, 61, 44, 263, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:31', 99, 165, 99, 105, 100, 61, 44, 263, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:31', 100, 166, 99, 106, 101, 62, 44, 263, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:32', 101, 166, 99, 106, 101, 62, 44, 263, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:32', 102, 166, 99, 106, 101, 62, 44, 262, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:32', 103, 166, 99, 106, 101, 62, 44, 263, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:32', 104, 166, 99, 106, 100, 62, 44, 263, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:33', 105, 166, 99, 106, 100, 62, 44, 263, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:33', 106, 166, 100, 106, 100, 62, 44, 264, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:33', 107, 166, 101, 106, 100, 62, 44, 266, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:33', 108, 166, 102, 106, 100, 62, 44, 267, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:34', 109, 166, 102, 106, 100, 62, 44, 267, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:34', 110, 166, 101, 106, 100, 61, 44, 265, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:34', 111, 165, 100, 106, 100, 61, 44, 264, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:35', 112, 165, 99, 105, 100, 60, 44, 263, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:35', 113, 165, 99, 105, 100, 60, 44, 263, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:35', 114, 165, 99, 105, 100, 60, 44, 264, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:35', 115, 165, 99, 104, 99, 59, 44, 264, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:36', 116, 165, 99, 105, 99, 59, 44, 263, 221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:36', 117, 165, 99, 105, 99, 59, 44, 262, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:36', 118, 165, 99, 105, 99, 59, 44, 261, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:36', 119, 165, 99, 105, 99, 59, 44, 261, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:37', 120, 165, 99, 105, 99, 59, 44, 262, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:37', 121, 166, 103, 107, 101, 60, 44, 266, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:37', 122, 167, 106, 109, 102, 61, 44, 269, 221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:37', 123, 168, 108, 110, 103, 62, 44, 271, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:38', 124, 169, 108, 110, 103, 63, 44, 272, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:38', 125, 169, 108, 110, 103, 63, 44, 273, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:38', 126, 170, 109, 110, 104, 63, 44, 274, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:39', 127, 170, 108, 109, 104, 64, 44, 275, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:39', 128, 170, 107, 109, 104, 64, 44, 275, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:39', 129, 170, 108, 110, 105, 63, 44, 275, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:39', 130, 171, 111, 112, 105, 62, 44, 275, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:40', 131, 172, 114, 113, 106, 62, 44, 275, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:40', 132, 173, 116, 114, 106, 62, 44, 275, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:40', 133, 173, 116, 114, 106, 62, 44, 275, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:40', 134, 173, 115, 112, 106, 61, 44, 275, 221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:41', 135, 172, 112, 109, 104, 63, 44, 276, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:41', 136, 173, 110, 108, 103, 65, 45, 276, 228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:41', 137, 174, 110, 108, 103, 63, 45, 277, 227, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:42', 138, 176, 114, 111, 105, 64, 45, 278, 228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:42', 139, 176, 114, 110, 105, 65, 45, 278, 229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:42', 140, 174, 112, 109, 104, 65, 45, 277, 231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:42', 141, 171, 110, 108, 103, 65, 45, 276, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:43', 142, 170, 109, 107, 102, 65, 45, 275, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:43', 143, 168, 109, 107, 102, 66, 45, 275, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:43', 144, 136, 106, 96, 75, 54, 42, 179, 190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:43', 145, 114, 92, 111, 92, 79, 63, 198, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:44', 146, 135, 116, 119, 101, 90, 72, 195, 209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:44', 147, 165, 128, 123, 105, 98, 78, 243, 241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:18:44', 148, 171, 126, 120, 107, 102, 82, 265, 257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:19:26', 149, 141, 103, 95, 82, 71, 70, 221, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:19:32', 150, 167, 121, 110, 96, 88, 78, 256, 244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:20:04', 151, 175, 135, 116, 103, 97, 82, 272, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:22:07', 152, 186, 150, 119, 104, 98, 81, 281, 267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:22:24', 153, 191, 156, 120, 105, 98, 80, 286, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:23:23', 154, 197, 165, 125, 109, 102, 83, 290, 275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:27:28', 155, 197, 166, 125, 109, 103, 84, 289, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:27:50', 156, 199, 169, 127, 110, 103, 82, 289, 270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:28:57', 157, 198, 168, 126, 110, 103, 83, 289, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:29:05', 158, 198, 169, 126, 110, 104, 84, 289, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:31:55', 159, 198, 169, 126, 110, 105, 84, 289, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:31:59', 160, 198, 169, 126, 110, 105, 84, 289, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:32:20', 161, 198, 170, 126, 110, 105, 84, 290, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:33:52', 162, 199, 171, 127, 111, 105, 84, 291, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:34:57', 163, 199, 171, 127, 111, 105, 84, 290, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 15:35:38', 164, 199, 170, 127, 110, 105, 84, 290, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:38:50', 165, 165, 129, 303, 249, 284, 257, 287, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:40:39', 166, 177, 154, 303, 249, 284, 256, 288, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:40:58', 167, 128, 120, 228, 183, 184, 178, 191, 192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:41:00', 168, 107, 111, 200, 153, 134, 139, 143, 152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:41:06', 169, 148, 145, 251, 201, 209, 198, 216, 213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:41:23', 170, 169, 163, 277, 225, 246, 226, 253, 244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:44:00', 171, 179, 169, 291, 238, 265, 241, 272, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:44:07', 172, 184, 174, 298, 244, 275, 248, 281, 267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:44:10', 173, 186, 175, 301, 246, 251, 200, 284, 265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:44:12', 174, 188, 177, 303, 248, 267, 228, 287, 270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:44:14', 175, 137, 143, 221, 181, 176, 167, 191, 191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:44:31', 176, 163, 160, 261, 215, 230, 211, 240, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:44:49', 177, 176, 170, 282, 232, 257, 234, 265, 254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:45:07', 178, 183, 175, 293, 241, 271, 245, 278, 264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:45:25', 179, 186, 178, 298, 246, 278, 251, 285, 269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:45:38', 180, 188, 179, 301, 248, 281, 254, 288, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:46:13', 181, 182, 171, 300, 247, 214, 180, 285, 266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:48:14', 182, 187, 176, 302, 250, 250, 220, 289, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:48:52', 183, 189, 179, 303, 251, 268, 239, 291, 275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 16:54:47', 184, 189, 179, 258, 218, 229, 203, 290, 275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 17:17:31', 185, 200, 201, 249, 211, 226, 197, 288, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 17:21:24', 186, 206, 214, 244, 208, 225, 195, 287, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 17:43:25', 187, 211, 223, 224, 193, 205, 175, 288, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 17:49:33', 188, 213, 226, 215, 186, 196, 165, 287, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 17:49:47', 189, 213, 226, 210, 182, 192, 160, 286, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 17:50:53', 190, 213, 226, 207, 181, 190, 157, 286, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('2022-06-08 17:51:16', 191, 213, 226, 207, 180, 189, 156, 286, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `HansenS1_state_lid`
--

CREATE TABLE `HansenS1_state_lid` (
  `reading_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `lid_state` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HansenS1_state_lid`
--

INSERT INTO `HansenS1_state_lid` (`reading_time`, `lid_state`) VALUES
('2022-06-08 21:06:31', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `HansenS1`
--
ALTER TABLE `HansenS1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `HansenS1`
--
ALTER TABLE `HansenS1`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
