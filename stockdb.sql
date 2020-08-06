-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2020 at 10:50 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `amountdue`
--

CREATE TABLE IF NOT EXISTS `amountdue` (
  `fkCustomerEmailId` varchar(60) NOT NULL,
  `transactionDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amountDue` decimal(10,0) NOT NULL,
  `amountPaid` decimal(10,0) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amountdue`
--

INSERT INTO `amountdue` (`fkCustomerEmailId`, `transactionDate`, `amountDue`, `amountPaid`, `description`) VALUES
('boomboom@gmail.com', '2020-06-04 14:37:23', '-750', '750', 'Advance payment through G-Pay'),
('boomboom@gmail.com', '2020-06-04 14:38:34', '870', '0', 'Invoice issued on Date Thu Jun 04 2020 14:38:20 GM'),
('boomboom@gmail.com', '2020-06-04 14:43:06', '523', '0', 'Invoice issued on Date Thu Jun 04 2020 14:42:59 GM'),
('boomboom@gmail.com', '2020-06-04 14:48:38', '555', '0', 'Invoice issued on Date Thu Jun 04 2020 14:48:30 GM'),
('boomboom@gmail.com', '2020-06-04 14:50:10', '755', '0', 'Invoice issued on Date Thu Jun 04 2020 14:50:04 GM'),
('boomboom@gmail.com', '2020-06-04 15:34:16', '0', '755', 'Cash payment'),
('boomboom@gmail.com', '2020-06-04 15:34:35', '-500', '500', 'Advance Cash payment'),
('boomboom@gmail.com', '2020-06-04 15:35:49', '-700', '200', 'Advance Cash payment');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `branchId` varchar(40) NOT NULL,
  `branchName` varchar(40) NOT NULL,
  `branchAddress` varchar(200) NOT NULL,
  `branchPhoneNo` char(10) NOT NULL,
  `reportLastDate` timestamp NULL DEFAULT NULL,
  `gstNumber` varchar(20) DEFAULT NULL,
  `cash` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchId`, `branchName`, `branchAddress`, `branchPhoneNo`, `reportLastDate`, `gstNumber`, `cash`) VALUES
('4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b', 'Ahmedabad', 'Ahmedabad, Gujarat', '9988998899', NULL, '789654123657896', 0),
('a42ed96a-6c24-11ea-83f5-588a5a24e720', 'Surat', 'Surat, Gujarat', '7878785965', NULL, '741abcdef214569', 359),
('af3bcd9c-6c24-11ea-83f5-588a5a24e720', 'Baroda', 'Baroda, Gujarat', '7485965412', NULL, 'abcd12345678jhg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customerEmailId` varchar(60) NOT NULL,
  `customerName` varchar(60) NOT NULL,
  `customerAddress` varchar(200) NOT NULL,
  `customerPhoneNo` varchar(10) NOT NULL,
  `customerGstNo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerEmailId`, `customerName`, `customerAddress`, `customerPhoneNo`, `customerGstNo`) VALUES
('a@n.com', 'Sachin Tendulkar', 'Mumbai', '7747474747', 'ssllssjjkklaksj'),
('boomboom@gmail.com', 'Jasprit Bumrah', 'Ahmedabad', '7485965412', '787878787878787'),
('boss@gmail.com', 'Chris Gayle', 'Windies', '7845213657', '784521369854123'),
('djbravo@gmail.com', 'Dwayne Bravo', 'Mumbai', '7896412233', '789654123654785'),
('hitman@gmail.com', 'Rohit Sharma', 'Mumbai', '7857452368', '785412365478965'),
('kane@gmail.om', 'Kane Williamson', 'NZ', '7878787878', '789654123654789'),
('lm@gmail.com', 'Lasith Malinga', 'Srilanka', '7859654123', '785965412365478'),
('mauli@gmail.com', 'Virat Kohli', 'ahmedabad,gujarat', '9999999999', 'cccdefghji12345'),
('pandya@gmail.com', 'Hardik Pandya', 'Gujarat', '7878787878', '747474747474747'),
('prachi@gmail.com', 'MS Dhoni', 'ahmedabad,gujarat', '8899999999', 'abcdefghji12345'),
('pvs@gmail.com', 'P.V. Sindhu', 'India', '7896541236', '748596541236548'),
('saina@gmail.com', 'Saina Nehwal', 'India', '7485885965', '748596541236547');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `invoiceName` varchar(100) NOT NULL,
  `invoiceDate` date NOT NULL,
  `fkCustomerEmailId` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoiceName`, `invoiceDate`, `fkCustomerEmailId`) VALUES
('a@n.com_2020-6-1_13-59-4.pdf', '2020-06-01', 'a@n.com'),
('boss@gmail.com_2020-6-1_14-4-16.pdf', '2020-06-01', 'boss@gmail.com'),
('djbravo@gmail.com_2020-6-1_14-49-26.pdf', '2020-06-01', 'djbravo@gmail.com'),
('hitman@gmail.com_2020-6-1_14-53-39.pdf', '2020-06-01', 'hitman@gmail.com'),
('boomboom@gmail.com_2020-6-4_12-24-40.pdf', '2020-06-04', 'boomboom@gmail.com'),
('boss@gmail.com_2020-6-4_12-25-16.pdf', '2020-06-04', 'boss@gmail.com'),
('boomboom@gmail.com_2020-6-4_14-38-34.pdf', '2020-06-04', 'boomboom@gmail.com'),
('boomboom@gmail.com_2020-6-4_14-43-6.pdf', '2020-06-04', 'boomboom@gmail.com'),
('boomboom@gmail.com_2020-6-4_14-48-37.pdf', '2020-06-04', 'boomboom@gmail.com'),
('boomboom@gmail.com_2020-6-4_14-50-10.pdf', '2020-06-04', 'boomboom@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `itemId` char(36) NOT NULL,
  `name` varchar(60) NOT NULL,
  `gsm` int(11) DEFAULT NULL,
  `size` varchar(30) DEFAULT NULL,
  `minimumRate` decimal(10,0) NOT NULL,
  `reorderLevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemId`, `name`, `gsm`, `size`, `minimumRate`, `reorderLevel`) VALUES
('422f8957-20d5-44f7-970f-658b01ff52f0', 'Printout', 150, 'Tabloid Extra ', '1', 15),
('57cf7225-ed64-40ac-abe4-854bcbfa79fd', 'Photocopy', 5, '13x19', '1000', 10),
('6f30860e-bc18-4a0c-a040-35133b2b6c02', 'Print', 270, '11.00 x 19.00 inch', '1', 10),
('cc59ae51-0ebe-445a-bed7-4944f7ac425e', 'Color copy', 130, '13x1', '4', 10);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `purchaseId` char(36) NOT NULL,
  `purchaseDate` date NOT NULL,
  `fkSupplierEmailId` varchar(60) NOT NULL,
  `fkBranchId` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseId`, `purchaseDate`, `fkSupplierEmailId`, `fkBranchId`) VALUES
('0036db11-e3a6-4b13-b317-0d5054aefaa8', '2020-06-04', 'happy@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('07b79c26-32a2-4890-8b88-37f0d920329d', '2020-06-01', 'happy@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('3f605239-1694-4e4b-8809-5a9631c97dfa', '2020-06-01', 'leo@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('54e0aafa-5507-4c08-a479-ea5f01626551', '2020-06-01', 'happy@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('55cd8738-0cd3-4bed-827e-95b84d73ff48', '2020-06-01', 'sundar@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('889a4ff6-dbb0-4476-851f-e59ba6cca86f', '2020-06-01', 'leo@gmail.com', 'a42ed96a-6c24-11ea-83f5-588a5a24e720'),
('bdeee9e9-caff-4ceb-9e8a-9a6134ecafc1', '2020-06-04', 'happy@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('e07c7a57-3e76-42c9-80e0-7ba0bfbfc6d2', '2020-06-01', 'leo@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b');

-- --------------------------------------------------------

--
-- Table structure for table `purchasedetails`
--

CREATE TABLE IF NOT EXISTS `purchasedetails` (
  `fkPurchaseId` char(36) NOT NULL,
  `fkItemId` char(36) NOT NULL,
  `purchaseQuantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasedetails`
--

INSERT INTO `purchasedetails` (`fkPurchaseId`, `fkItemId`, `purchaseQuantity`) VALUES
('0036db11-e3a6-4b13-b317-0d5054aefaa8', '57cf7225-ed64-40ac-abe4-854bcbfa79fd', 1),
('07b79c26-32a2-4890-8b88-37f0d920329d', '422f8957-20d5-44f7-970f-658b01ff52f0', 1000),
('3f605239-1694-4e4b-8809-5a9631c97dfa', '57cf7225-ed64-40ac-abe4-854bcbfa79fd', 200),
('3f605239-1694-4e4b-8809-5a9631c97dfa', '6f30860e-bc18-4a0c-a040-35133b2b6c02', 250),
('3f605239-1694-4e4b-8809-5a9631c97dfa', 'cc59ae51-0ebe-445a-bed7-4944f7ac425e', 300),
('54e0aafa-5507-4c08-a479-ea5f01626551', '422f8957-20d5-44f7-970f-658b01ff52f0', 200),
('55cd8738-0cd3-4bed-827e-95b84d73ff48', '422f8957-20d5-44f7-970f-658b01ff52f0', 123),
('889a4ff6-dbb0-4476-851f-e59ba6cca86f', 'cc59ae51-0ebe-445a-bed7-4944f7ac425e', 400),
('bdeee9e9-caff-4ceb-9e8a-9a6134ecafc1', '57cf7225-ed64-40ac-abe4-854bcbfa79fd', 50),
('e07c7a57-3e76-42c9-80e0-7ba0bfbfc6d2', '57cf7225-ed64-40ac-abe4-854bcbfa79fd', 234);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `roleId` char(36) NOT NULL,
  `roleName` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleId`, `roleName`) VALUES
('6edd2ae4-6c35-11ea-92f1-ace2d35545ec', 'Operator'),
('7a41670e-6b5f-11ea-a8c8-ace2d3e54b8b', 'Admin');

--
-- Triggers `role`
--
DELIMITER $$
CREATE TRIGGER `uuid_role_insert` BEFORE INSERT ON `role`
 FOR EACH ROW BEGIN
set new.roleId=uuid();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `saleId` char(36) NOT NULL,
  `salesDate` date NOT NULL,
  `isInvoiceGenerated` tinyint(1) NOT NULL,
  `fkSaleTypeId` char(36) NOT NULL,
  `fkCustomerEmailId` varchar(60) DEFAULT NULL,
  `fkBranchId` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`saleId`, `salesDate`, `isInvoiceGenerated`, `fkSaleTypeId`, `fkCustomerEmailId`, `fkBranchId`) VALUES
('0625da25-c5d8-4db2-a3a8-8c1e6ab73cfc', '2020-06-01', 2, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'djbravo@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('0c2d70f0-05e5-4956-87a8-3ab4bca9190b', '2020-06-01', 2, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'hitman@gmail.com', 'a42ed96a-6c24-11ea-83f5-588a5a24e720'),
('1c6e20c8-dd48-4d66-ae57-86b2b91d4246', '2020-06-05', 0, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'a@n.com', 'a42ed96a-6c24-11ea-83f5-588a5a24e720'),
('1cca1eea-6fb2-4f21-8be7-683cf9e7b727', '2020-06-01', 0, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'prachi@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('1d8b3332-72ac-476b-8955-7d808dd43226', '2020-05-18', 2, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'boss@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('253b9f0a-0e50-477d-bdc4-6ff427f9f523', '2020-04-14', 2, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'hitman@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('27074e6c-98ac-461f-addf-385783fd4168', '2020-06-04', 0, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'boomboom@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('328f4dbb-03d1-499e-9593-15996e54ebd7', '2020-06-05', 0, '4d0666c5-7274-11ea-b720-588a5a24e720', NULL, 'a42ed96a-6c24-11ea-83f5-588a5a24e720'),
('3d2181de-96a0-44fd-85b2-bd90bf08722b', '2020-06-05', 0, '4d0666c5-7274-11ea-b720-588a5a24e720', NULL, 'a42ed96a-6c24-11ea-83f5-588a5a24e720'),
('51a8f651-983a-4d66-b9fd-e5a22c5545b3', '2020-06-01', 2, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'djbravo@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('51b80cad-78cc-4bc8-a0d4-1050bd2f8cd8', '2020-06-05', 0, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'a@n.com', 'a42ed96a-6c24-11ea-83f5-588a5a24e720'),
('60ad9087-2af3-4e3e-878a-9570cbfe4e7d', '2020-06-04', 0, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'boomboom@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('64e949a4-5341-4dee-b0a3-4b7fdaa5399c', '2020-02-17', 0, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'saina@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('6c7f11ce-a176-4835-b1ae-c039c9312a5e', '2020-06-06', 0, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'hitman@gmail.com', 'a42ed96a-6c24-11ea-83f5-588a5a24e720'),
('6d8f2f98-125e-4f07-90f1-46cc47dae93a', '2020-03-16', 0, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'pandya@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('715cb27f-931c-4a22-aea1-579f179d2c97', '2020-06-01', 0, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'prachi@gmail.com', 'a42ed96a-6c24-11ea-83f5-588a5a24e720'),
('7f62fc02-1505-437d-ab4b-ec2dc3fd7257', '2020-06-06', 0, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'a@n.com', 'a42ed96a-6c24-11ea-83f5-588a5a24e720'),
('80e651f4-a460-454b-bc52-801d37f27a5d', '2020-06-05', 0, '4d0666c5-7274-11ea-b720-588a5a24e720', NULL, 'a42ed96a-6c24-11ea-83f5-588a5a24e720'),
('94756b16-6e21-47ae-9e70-e4b31aa950da', '2020-06-04', 2, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'boomboom@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('a3e9be0d-8c06-4d4a-85e1-752e7fe9ed2a', '2020-01-14', 0, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'lm@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('ad7960e1-b948-4923-ba75-1a66dfb9f036', '2020-06-06', 0, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'a@n.com', 'a42ed96a-6c24-11ea-83f5-588a5a24e720'),
('bf59533a-ca53-4ee3-9cdd-c08888c0e38f', '2020-06-01', 2, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'a@n.com', 'af3bcd9c-6c24-11ea-83f5-588a5a24e720'),
('d6f2d623-4cf3-44cf-a88b-7f4dae4c3886', '2020-06-04', 2, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'boss@gmail.com', 'a42ed96a-6c24-11ea-83f5-588a5a24e720'),
('d89c41c5-9bf1-455f-a4cb-6076dfdbf886', '2020-06-01', 2, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'boomboom@gmail.com', 'af3bcd9c-6c24-11ea-83f5-588a5a24e720'),
('e7951ab8-ac39-4859-99cf-754f3a2fbd8b', '2020-06-04', 0, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'lm@gmail.com', 'a42ed96a-6c24-11ea-83f5-588a5a24e720'),
('fe3304f1-c983-45c6-b69d-f9da6063367f', '2020-06-01', 0, '0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'mauli@gmail.com', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b');

-- --------------------------------------------------------

--
-- Table structure for table `salesdetails`
--

CREATE TABLE IF NOT EXISTS `salesdetails` (
  `fkSaleId` char(36) NOT NULL,
  `fkItemId` char(36) NOT NULL,
  `saleQuantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesdetails`
--

INSERT INTO `salesdetails` (`fkSaleId`, `fkItemId`, `saleQuantity`) VALUES
('1c6e20c8-dd48-4d66-ae57-86b2b91d4246', '6f30860e-bc18-4a0c-a040-35133b2b6c02', 120),
('1c6e20c8-dd48-4d66-ae57-86b2b91d4246', 'cc59ae51-0ebe-445a-bed7-4944f7ac425e', 165),
('1cca1eea-6fb2-4f21-8be7-683cf9e7b727', '6f30860e-bc18-4a0c-a040-35133b2b6c02', 500),
('1d8b3332-72ac-476b-8955-7d808dd43226', '57cf7225-ed64-40ac-abe4-854bcbfa79fd', 150),
('1d8b3332-72ac-476b-8955-7d808dd43226', '6f30860e-bc18-4a0c-a040-35133b2b6c02', 500),
('253b9f0a-0e50-477d-bdc4-6ff427f9f523', '422f8957-20d5-44f7-970f-658b01ff52f0', 200),
('253b9f0a-0e50-477d-bdc4-6ff427f9f523', '6f30860e-bc18-4a0c-a040-35133b2b6c02', 300),
('253b9f0a-0e50-477d-bdc4-6ff427f9f523', 'cc59ae51-0ebe-445a-bed7-4944f7ac425e', 5),
('51a8f651-983a-4d66-b9fd-e5a22c5545b3', '57cf7225-ed64-40ac-abe4-854bcbfa79fd', 800),
('60ad9087-2af3-4e3e-878a-9570cbfe4e7d', '6f30860e-bc18-4a0c-a040-35133b2b6c02', 22),
('60ad9087-2af3-4e3e-878a-9570cbfe4e7d', 'cc59ae51-0ebe-445a-bed7-4944f7ac425e', 22),
('64e949a4-5341-4dee-b0a3-4b7fdaa5399c', '57cf7225-ed64-40ac-abe4-854bcbfa79fd', 180),
('64e949a4-5341-4dee-b0a3-4b7fdaa5399c', '6f30860e-bc18-4a0c-a040-35133b2b6c02', 70),
('64e949a4-5341-4dee-b0a3-4b7fdaa5399c', 'cc59ae51-0ebe-445a-bed7-4944f7ac425e', 500),
('6d8f2f98-125e-4f07-90f1-46cc47dae93a', '57cf7225-ed64-40ac-abe4-854bcbfa79fd', 140),
('6d8f2f98-125e-4f07-90f1-46cc47dae93a', '6f30860e-bc18-4a0c-a040-35133b2b6c02', 50),
('6d8f2f98-125e-4f07-90f1-46cc47dae93a', 'cc59ae51-0ebe-445a-bed7-4944f7ac425e', 700),
('715cb27f-931c-4a22-aea1-579f179d2c97', '6f30860e-bc18-4a0c-a040-35133b2b6c02', 12),
('715cb27f-931c-4a22-aea1-579f179d2c97', 'cc59ae51-0ebe-445a-bed7-4944f7ac425e', 32),
('94756b16-6e21-47ae-9e70-e4b31aa950da', 'cc59ae51-0ebe-445a-bed7-4944f7ac425e', 555),
('a3e9be0d-8c06-4d4a-85e1-752e7fe9ed2a', '422f8957-20d5-44f7-970f-658b01ff52f0', 100),
('a3e9be0d-8c06-4d4a-85e1-752e7fe9ed2a', '6f30860e-bc18-4a0c-a040-35133b2b6c02', 200),
('a3e9be0d-8c06-4d4a-85e1-752e7fe9ed2a', 'cc59ae51-0ebe-445a-bed7-4944f7ac425e', 1000),
('bf59533a-ca53-4ee3-9cdd-c08888c0e38f', '57cf7225-ed64-40ac-abe4-854bcbfa79fd', 10),
('d6f2d623-4cf3-44cf-a88b-7f4dae4c3886', '57cf7225-ed64-40ac-abe4-854bcbfa79fd', 170),
('d6f2d623-4cf3-44cf-a88b-7f4dae4c3886', '6f30860e-bc18-4a0c-a040-35133b2b6c02', 50),
('d89c41c5-9bf1-455f-a4cb-6076dfdbf886', '57cf7225-ed64-40ac-abe4-854bcbfa79fd', 22),
('d89c41c5-9bf1-455f-a4cb-6076dfdbf886', '6f30860e-bc18-4a0c-a040-35133b2b6c02', 15),
('e7951ab8-ac39-4859-99cf-754f3a2fbd8b', '422f8957-20d5-44f7-970f-658b01ff52f0', 23),
('e7951ab8-ac39-4859-99cf-754f3a2fbd8b', 'cc59ae51-0ebe-445a-bed7-4944f7ac425e', 12),
('fe3304f1-c983-45c6-b69d-f9da6063367f', '422f8957-20d5-44f7-970f-658b01ff52f0', 40),
('fe3304f1-c983-45c6-b69d-f9da6063367f', '6f30860e-bc18-4a0c-a040-35133b2b6c02', 200);

-- --------------------------------------------------------

--
-- Table structure for table `salestype`
--

CREATE TABLE IF NOT EXISTS `salestype` (
  `saleTypeId` char(36) NOT NULL,
  `saleType` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salestype`
--

INSERT INTO `salestype` (`saleTypeId`, `saleType`) VALUES
('0040a784-6b5d-11ea-a8c8-ace2d3e54b8b', 'Credit'),
('4d0666c5-7274-11ea-b720-588a5a24e720', 'Cash');

--
-- Triggers `salestype`
--
DELIMITER $$
CREATE TRIGGER `uuid_saletype_insert` BEFORE INSERT ON `salestype`
 FOR EACH ROW BEGIN
set new.saleTypeId=uuid();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `fkItemId` char(36) NOT NULL,
  `fkBranchId` char(36) NOT NULL,
  `stockQuantity` int(11) NOT NULL DEFAULT '0',
  `lastUpdatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`fkItemId`, `fkBranchId`, `stockQuantity`, `lastUpdatedDate`) VALUES
('422f8957-20d5-44f7-970f-658b01ff52f0', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b', 868, NULL),
('422f8957-20d5-44f7-970f-658b01ff52f0', 'a42ed96a-6c24-11ea-83f5-588a5a24e720', -476, NULL),
('422f8957-20d5-44f7-970f-658b01ff52f0', 'af3bcd9c-6c24-11ea-83f5-588a5a24e720', 0, NULL),
('57cf7225-ed64-40ac-abe4-854bcbfa79fd', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b', -1177, NULL),
('57cf7225-ed64-40ac-abe4-854bcbfa79fd', 'a42ed96a-6c24-11ea-83f5-588a5a24e720', -25, NULL),
('57cf7225-ed64-40ac-abe4-854bcbfa79fd', 'af3bcd9c-6c24-11ea-83f5-588a5a24e720', -266, NULL),
('6f30860e-bc18-4a0c-a040-35133b2b6c02', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b', -1314, NULL),
('6f30860e-bc18-4a0c-a040-35133b2b6c02', 'a42ed96a-6c24-11ea-83f5-588a5a24e720', -69, NULL),
('6f30860e-bc18-4a0c-a040-35133b2b6c02', 'af3bcd9c-6c24-11ea-83f5-588a5a24e720', -15, NULL),
('cc59ae51-0ebe-445a-bed7-4944f7ac425e', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b', -1853, NULL),
('cc59ae51-0ebe-445a-bed7-4944f7ac425e', 'a42ed96a-6c24-11ea-83f5-588a5a24e720', 204, NULL),
('cc59ae51-0ebe-445a-bed7-4944f7ac425e', 'af3bcd9c-6c24-11ea-83f5-588a5a24e720', -123, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `supplierEmailId` varchar(60) NOT NULL,
  `supplierName` varchar(60) NOT NULL,
  `supplierAddress` varchar(200) NOT NULL,
  `supplierPhoneNo` varchar(10) NOT NULL,
  `supplierGstNo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplierEmailId`, `supplierName`, `supplierAddress`, `supplierPhoneNo`, `supplierGstNo`) VALUES
('happy@gmail.com', 'Christiano Ronaldo', 'Madrid', '9898767890', 'abcdefghjikl123'),
('leo@gmail.com', 'Leonal Messi', 'Somewhere on earth', '7596541236', '747474747474747'),
('sundar@gmail.com', 'Sundar Pichai', 'IIT Kharagpur', '7878787878', '888855552222333');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userEmailId` varchar(60) NOT NULL,
  `userName` varchar(60) NOT NULL,
  `userPassword` varchar(20) NOT NULL,
  `userAddress` varchar(200) NOT NULL,
  `userPhoneNo` varchar(10) NOT NULL,
  `fkRoleId` char(36) DEFAULT NULL,
  `otp` varchar(10) DEFAULT '0',
  `otpTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fkBranchId` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userEmailId`, `userName`, `userPassword`, `userAddress`, `userPhoneNo`, `fkRoleId`, `otp`, `otpTime`, `fkBranchId`) VALUES
('201912101@daiict.ac.in', 'prachi soni', '123456', 'Home', '7859632145', NULL, '717806', '2020-06-07 06:40:19', 'a42ed96a-6c24-11ea-83f5-588a5a24e720'),
('prachisoni24599@gmail.com', 'Admin', '123456', 'Earth', '7777777777', '7a41670e-6b5f-11ea-a8c8-ace2d3e54b8b', '301072', '2020-05-07 15:26:30', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('operator1@gmail.com', 'Operator One', '123456', 'Earth', '7777777777', NULL, '0', '2020-04-19 06:30:55', '4d88f6c7-6ac9-11ea-a8c8-ace2d3e54b8b'),
('operator2@gmail.com', 'Operator Two', '123456', 'Earth', '7485965412', NULL, '0', '2020-06-01 03:14:30', 'a42ed96a-6c24-11ea-83f5-588a5a24e720'),
('operator3@gmail.com', 'Operator Three', '123456', 'Earth', '7859654123', NULL, '0', '2020-06-01 03:15:11', 'af3bcd9c-6c24-11ea-83f5-588a5a24e720');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerEmailId`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemId`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseId`),
  ADD KEY `supplierEmailId` (`fkSupplierEmailId`),
  ADD KEY `branchId` (`fkBranchId`);

--
-- Indexes for table `purchasedetails`
--
ALTER TABLE `purchasedetails`
  ADD PRIMARY KEY (`fkPurchaseId`,`fkItemId`),
  ADD KEY `itemId` (`fkItemId`),
  ADD KEY `purchaseId` (`fkPurchaseId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`saleId`),
  ADD KEY `saleTypeId` (`fkSaleTypeId`),
  ADD KEY `emailId` (`fkCustomerEmailId`),
  ADD KEY `fkBranchId` (`fkBranchId`);

--
-- Indexes for table `salesdetails`
--
ALTER TABLE `salesdetails`
  ADD PRIMARY KEY (`fkSaleId`,`fkItemId`),
  ADD KEY `itemId` (`fkItemId`),
  ADD KEY `saleId` (`fkSaleId`);

--
-- Indexes for table `salestype`
--
ALTER TABLE `salestype`
  ADD PRIMARY KEY (`saleTypeId`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`fkItemId`,`fkBranchId`),
  ADD KEY `itemId` (`fkItemId`),
  ADD KEY `branchId` (`fkBranchId`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplierEmailId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userEmailId`),
  ADD KEY `roleId` (`fkRoleId`),
  ADD KEY `branchId` (`fkBranchId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`fkSupplierEmailId`) REFERENCES `supplier` (`supplierEmailId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`fkBranchId`) REFERENCES `branch` (`branchId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchasedetails`
--
ALTER TABLE `purchasedetails`
  ADD CONSTRAINT `purchasedetails_ibfk_1` FOREIGN KEY (`fkPurchaseId`) REFERENCES `purchase` (`purchaseId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchasedetails_ibfk_2` FOREIGN KEY (`fkItemId`) REFERENCES `item` (`itemId`) ON UPDATE CASCADE;

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`fkCustomerEmailId`) REFERENCES `customer` (`customerEmailId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`fkSaleTypeId`) REFERENCES `salestype` (`saleTypeId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_ibfk_3` FOREIGN KEY (`fkBranchId`) REFERENCES `branch` (`branchId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salesdetails`
--
ALTER TABLE `salesdetails`
  ADD CONSTRAINT `salesdetails_ibfk_1` FOREIGN KEY (`fkSaleId`) REFERENCES `sale` (`saleId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `salesdetails_ibfk_2` FOREIGN KEY (`fkItemId`) REFERENCES `item` (`itemId`) ON UPDATE CASCADE;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`fkItemId`) REFERENCES `item` (`itemId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`fkBranchId`) REFERENCES `branch` (`branchId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`fkRoleId`) REFERENCES `role` (`roleId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`fkBranchId`) REFERENCES `branch` (`branchId`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
