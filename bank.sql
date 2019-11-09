-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2019 at 07:34 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `BankID` int(15) NOT NULL,
  `BankName` varchar(20) DEFAULT NULL,
  `Headquaters` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`BankID`, `BankName`, `Headquaters`) VALUES
(80001, 'Allahabad Bank', 'Kolkata'),
(80002, 'Andhra Bank', 'Hyderabad'),
(80003, 'Bank Of Baroda', 'Baroda'),
(80004, 'Bank Of India', 'Mumbai'),
(80005, 'Bank Of  Maharashtra', 'Pune'),
(80006, 'Canara Bank', 'Bengaluru'),
(80007, 'Central Bank Of Indi', 'Mumbai'),
(80008, 'Corporation Bank', 'Mangalore'),
(80009, 'Dena Bank', 'Mumbai'),
(80010, ' IDBI Bank', 'Mumbai'),
(80011, 'Indian Bank', 'Chennai'),
(80014, 'Panjab National Bank', 'New Delhi'),
(80015, 'Syndicate Bank', 'Manipal'),
(80016, 'State Bank of India', 'Mumbai'),
(80018, 'Union Bank of India', 'Mumbai'),
(80020, 'Vijaya Bank', 'Bengaluru');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `LoanID` int(15) NOT NULL,
  `BankID` int(15) DEFAULT NULL,
  `LoanType` varchar(20) DEFAULT NULL,
  `RepayPeriod` int(15) DEFAULT NULL,
  `LoanInterest` float DEFAULT NULL,
  `MaxAmount` double NOT NULL,
  `Margin` float DEFAULT NULL,
  `URL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`LoanID`, `BankID`, `LoanType`, `RepayPeriod`, `LoanInterest`, `MaxAmount`, `Margin`, `URL`) VALUES
(20001, 80001, 'Crop Loan', 9, 4, 1000000, 15, 'https://www.allahabadbank.in/akshay_krishi.aspx'),
(20002, 80002, 'Crop Loan', 5, 5.5, 2500000, 15, 'https://www.andhrabank.in/english/KisanKalpataru.aspx'),
(20003, 80003, 'Crop Loan', 5, 10.9, 1000000, 15, 'https://www.bankbazaar.com/bank-of-baroda-kisan-credit-card.html'),
(20005, 80005, 'Crop Loan', 15, 3.75, 1000000, 25, 'https://www.bankofmaharashtra.in/scheme_for_construction_of_farmhouse_to_agriculturists'),
(20006, 80006, 'Crop Loan', 5, 7, 10000000, 16, 'https://www.creditmantri.com/article-agriculture-loan-in-canara-bank/'),
(20008, 80008, 'Crop Loan', 7, 6, 2000000, 30, 'https://corpbank.com/node/58822'),
(20018, 80018, 'Crop Loan', 2, 5, 2500000, 15, 'https://www.unionbankofindia.co.in/english/rabd-short-crop-loan.aspx'),
(30001, 80001, 'Tractor Loan', 10, 8.5, 600000, 25, 'https://www.allahabadbank.in/tactor_power_tiller.aspx'),
(30002, 80002, 'Tractor Loan', 5, 10, 500000, 15, 'https://www.andhrabank.in/english/AgriKisanBandhu.aspx'),
(30003, 80003, 'Tractor Loan', 5, 8, 700000, 20, 'vhttp://tractorbuyersguide.in/tractor-finance/Tractor-Finance-by-Banks/Tractor-Loan-Schemes/Bank-of-Baroda-Tractor-Loan-Scheme.html'),
(30005, 80005, 'Tractor Loan', 8, 8, 100000, 0, 'https://www.bankofmaharashtra.in/farm_mechanization'),
(30006, 80006, 'Tractor Loan', 9, 10, 1500000, 15, 'http://www.codeforbanks.com/banking/canara-bank/tractor-loan-interest-rates/'),
(30008, 80008, 'Tractor Loan', 9, 9, 1500000, 30, 'https://corpbank.com/node/58822'),
(30018, 80018, 'Tractor Loan', 9, 8, 700000, 15, 'https://www.unionbankofindia.co.in/english/agriculture-loan.aspx'),
(40001, 80001, 'Drip Irrigation Loan', 8, 7, 700000, 10, 'https://www.allahabadbank.in/Agri.aspx'),
(40002, 80002, 'Drip Irrigation Loan', 5, 9, 900000, 15, 'https://andhrabank.in/english/InterestLoans.aspx'),
(40003, 80003, 'Drip Irrigation Loan', 9, 6, 1200000, 17, 'https://www.bankofbaroda.in/rural-agriculture.htm'),
(40005, 80005, 'Drip Irrigation Loan', 4, 10, 100000, 0, 'https://www.bankofmaharashtra.in/farm_mechanization'),
(40006, 80006, 'Drip Irrigation Loan', 9, 10, 600000, 20, 'http://www.codeforbanks.com/banking/canara-bank/'),
(40008, 80008, 'Drip Irrigation Loan', 7, 5, 900000, 15, 'https://corpbank.com/node/58822'),
(40018, 80018, 'Drip Irrigation Loan', 7, 8, 500000, 9, 'https://www.unionbankofindia.co.in/english/agriculture-loan.aspx'),
(50001, 80001, 'Dairy Loan', 7, 10, 500000, 12, 'https://www.allahabadbank.in/Agri.aspx'),
(50002, 80002, 'Dairy Loan', 5, 12, 300000, 10, 'https://andhrabank.in/english/InterestLoans.aspx'),
(50003, 80003, 'Dairy Loan', 5, 8.5, 600000, 10, 'https://www.bankofbaroda.in/rural-agri/loans-advances/agriculture/scheme-for-financing-mini-dairy-units.htm'),
(50005, 80005, 'Dairy Loan', 6, 7, 100000, 8, 'https://www.bankofmaharashtra.in/mahabank_kisan_all_purpose_term_loan'),
(50006, 80006, 'Diary Loan', 8, 7.5, 2500000, 30, 'https://www.canarabank.com/english/bank-services/priority-portal/schemes/agriculture-and-rural-credit-schemes/'),
(50008, 80008, 'Diary Loan', 10, 10, 1000000, 10, 'https://corpbank.com/node/58822'),
(50018, 80018, 'Dairy Loan', 6, 8, 500000, 15, 'https://www.unionbankofindia.co.in/english/rabd-finance-nddb.aspx'),
(60001, 80001, 'Poultry Loan', 8, 9, 300000, 10, 'https://www.allahabadbank.in/Agri.aspx'),
(60002, 80002, 'Poultry Loan', 6, 11.5, 500000, 10, 'https://andhrabank.in/english/InterestLoans.aspx'),
(60003, 80003, 'Poultry Loan', 6, 9.12, 500000, 10, 'https://www.bankofbaroda.in/index.htm'),
(60005, 80005, 'Poultry Loan', 7, 8, 600000, 10, 'https://www.bankofmaharashtra.in/mahabank_kisan_all_purpose_term_loan'),
(60006, 80006, 'Poultry Loan', 5, 7, 1000000, 30, 'https://www.canarabank.com/english/bank-services/priority-portal/schemes/agriculture-and-rural-credit-schemes/'),
(60008, 80008, 'Poultry Loan', 9, 7, 1500000, 20, 'https://corpbank.com/node/58822'),
(60018, 80018, 'Poultry Loan', 5, 9.25, 700000, 15, 'https://www.unionbankofindia.co.in/english/agriculture-loan.aspx'),
(70001, 80001, 'Fisheries Loan', 9, 9.2, 800000, 10, 'https://www.allahabadbank.in/Agri.aspx'),
(70002, 80002, 'Fisheries Loan', 5, 9.8, 700000, 15, 'https://andhrabank.in/english/InterestLoans.aspx'),
(70003, 80003, 'Fisheries Loan', 7, 10, 500000, 10, 'https://www.bankofbaroda.in/index.htm'),
(70005, 80005, 'Fisheries Loan', 8, 8.2, 1000000, 10, 'https://www.bankofmaharashtra.in/mahabank_kisan_all_purpose_term_loan'),
(70006, 80006, 'Fisheries Loan', 9, 9, 900000, 30, 'https://www.canarabank.com/english/bank-services/priority-portal/schemes/agriculture-and-rural-credit-schemes/'),
(70008, 80008, 'Fisheries Loan', 10, 7, 1000000, 30, 'https://corpbank.com/node/58822'),
(70018, 80018, 'Fisheries Loan', 9, 11.5, 800000, 20, 'https://www.unionbankofindia.co.in/english/agriculture-loan.aspx');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BranchID` int(15) NOT NULL,
  `BankID` int(15) DEFAULT NULL,
  `Branch` varchar(20) DEFAULT NULL,
  `BranchLocation` varchar(255) DEFAULT NULL,
  `IFSC` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BranchID`, `BankID`, `Branch`, `BranchLocation`, `IFSC`) VALUES
(80015, 80015, 'Manipal', 'Pb No 13, , Manipal, , Udupi, Karnataka, 576 104', 'SYNB0000111'),
(80018, 80018, 'Bangalore-Cantonment', '171,COMMERCIAL STREET,DEVIDOSS BUILDING,BANGALORE, KARNATAKA,PIN - 560 001.', 'UBINO533114'),
(80020, 80020, 'Bangalore Urban ', 'P b no 8227, 29,hosur road, adugodi, bangalore,karnataka, 560030 ', 'VBOI5332'),
(90001, 80001, 'Branch Kolkata', 'ALLAHABAD BANK BUILDING, 14, India Exchange Pl Rd, 1st Floor, Murgighata, B.B.D. Bagh, Kolkata, West Bengal 700001', 'ALLA0210031'),
(90002, 80002, 'Hyderguda', '1st Floor/United India Insurance Buildingbasheerbagh,Hyderabad-500029', 'ANDB0000208 '),
(90003, 80003, 'AKOTA BRANCH', 'AKOTA BRANCH, SHREE SHARNAM COMPLEX, PRODUCTIVITY ROAD, BARODA, BARODA, 390020', 'BARB0AKOTAX'),
(90004, 80004, 'Altamount Road', 'Altamount road, eastman house, 2-669 altamount road, mumbai(bombay), india, 400026, maharashtra ', 'BKID0000066'),
(90005, 80005, 'Dakshina Kannada', '1st Floor, Centenary Building, Opp. Janatha Bazar, G H S Road, Mangalore - 575001, Dakshina Kannada - Karnataka', 'MAHB0000381 '),
(90006, 80006, 'Bangalore', 'P B 5471, Krishi Bhavan, Near Polic Corner, Nrupathunga Road, Bangalore -560 002', 'CNRB0000469'),
(90007, 80007, ' 7. Central Bank Of ', ' 7. Central Bank Of India (Mumbai)', ' 7. Central Bank Of '),
(90008, 80008, 'Mukka', '8-120, Nh-17, Mukka-574177, Mangalore Taluk', 'CORP0000177'),
(90009, 80009, 'Mumbai', 'Dena Bank, Ifb, 9 Th Floor, Maker Tower E, Cuffe Parade, Mumbai - 400005, Mumbai - Maharashtra', 'BKDN0INDFIN '),
(90016, 80016, 'Mumbai', 'Mumbai, Mumbai - Maharashtra', 'SBIN0000300 '),
(90018, 80018, 'Padavu Maroli Mangal', 'P. B. NO.932 ,Ramakrishna Complex,Kulshekar Post, D.K. ,Maroli-Pad Karnataka', 'UBINO536440');

-- --------------------------------------------------------

--
-- Table structure for table `faccount`
--

CREATE TABLE `faccount` (
  `AccNo` bigint(15) NOT NULL,
  `FarmerID` int(15) DEFAULT NULL,
  `BranchID` int(15) DEFAULT NULL,
  `Balance` float DEFAULT NULL,
  `Interest` float DEFAULT NULL,
  `AccType` varchar(20) DEFAULT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faccount`
--

INSERT INTO `faccount` (`AccNo`, `FarmerID`, `BranchID`, `Balance`, `Interest`, `AccType`, `Password`) VALUES
(111222333444555, 10002, 90018, 15000000, 7, 'Savings Account', '2345'),
(123456789000000, 10000, 90018, 2751850, 4, 'Savings Account', '1234'),
(222333555666777, 10001, 90016, 4444300, 6, 'Business Account', '1234'),
(333444555666777, 10001, 90018, 3000000, 7, 'Savings Account', '2345'),
(555666777888999, 10002, 90016, 2000000, 5, 'Business Account', '1234'),
(987654321000000, 10000, 90004, 1000000, 4.5, 'Business Account', '2345');

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `FarmerID` int(15) NOT NULL,
  `Fname` varchar(100) DEFAULT NULL,
  `PAN` varchar(20) DEFAULT NULL,
  `Aadhar` bigint(16) DEFAULT NULL,
  `Faddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`FarmerID`, `Fname`, `PAN`, `Aadhar`, `Faddress`) VALUES
(10000, 'Deon Lobo', 'AYNPL5148F', 277044432210, 'Hi Streak ,#403 ,Kulshekar Mangalore'),
(10001, 'Mark Dsouza', 'AYNPL5148G', 112344567765, 'Meena House,Kumbulure,Mubai-110045'),
(10002, 'Gagan Bekal', 'AYNPL5148H', 546733228877, 'Sarika Coplex,#302,Mulki-300674');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `LoanNo` int(11) NOT NULL,
  `AccNo` bigint(20) DEFAULT NULL,
  `LoanID` int(11) DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  `LoanDate` timestamp NULL DEFAULT current_timestamp(),
  `Lstatus` varchar(15) DEFAULT NULL,
  `PayDate` timestamp NULL DEFAULT NULL,
  `Approve` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`LoanNo`, `AccNo`, `LoanID`, `Amount`, `LoanDate`, `Lstatus`, `PayDate`, `Approve`) VALUES
(77031, 222333555666777, 20001, 100000, '2019-10-31 04:36:05', 'Paid', '2019-10-31 04:37:10', 'Approved'),
(77032, 123456789000000, 20001, 100000, '2019-10-31 08:34:28', 'Pending', NULL, 'Approved'),
(77033, 222333555666777, 20001, 100000, '2019-10-31 08:39:26', 'Pending', NULL, 'Approved'),
(77034, 123456789000000, 20002, 100000, '2019-10-31 09:01:23', 'Paid', '2019-10-31 09:02:11', 'Approved'),
(77035, 123456789000000, 50001, 100000, '2019-10-31 09:07:43', 'Paid', NULL, 'Approved'),
(77036, 123456789000000, 30001, 100000, '2019-10-31 09:34:31', 'Paid', NULL, 'Approved'),
(77037, 123456789000000, 30001, 100000, '2019-11-04 11:53:03', 'Pending', NULL, 'Approved'),
(77040, 987654321000000, 20018, 500000, '2019-11-04 12:51:40', 'Paid', '2019-11-04 12:58:51', 'Approved'),
(77041, 123456789000000, 20002, 800000, '2019-11-04 12:53:17', 'Pending', NULL, 'Not Approved'),
(77042, 123456789000000, 20018, 400000, '2019-11-04 13:04:44', 'Pending', NULL, 'Not Approved'),
(77043, 987654321000000, 20008, 1000000, '2019-11-04 13:05:14', 'Pending', NULL, 'Not Approved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`BankID`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`LoanID`),
  ADD KEY `BankID` (`BankID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`BranchID`),
  ADD KEY `BankID` (`BankID`);

--
-- Indexes for table `faccount`
--
ALTER TABLE `faccount`
  ADD PRIMARY KEY (`AccNo`),
  ADD KEY `FarmerID` (`FarmerID`),
  ADD KEY `BranchID` (`BranchID`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`FarmerID`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`LoanNo`),
  ADD KEY `AccNo` (`AccNo`),
  ADD KEY `LoanID` (`LoanID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `LoanNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77044;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrow`
--
ALTER TABLE `borrow`
  ADD CONSTRAINT `borrow_ibfk_1` FOREIGN KEY (`BankID`) REFERENCES `bank` (`BankID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`BankID`) REFERENCES `bank` (`BankID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faccount`
--
ALTER TABLE `faccount`
  ADD CONSTRAINT `faccount_ibfk_1` FOREIGN KEY (`FarmerID`) REFERENCES `farmer` (`FarmerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `faccount_ibfk_2` FOREIGN KEY (`BranchID`) REFERENCES `branch` (`BranchID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`AccNo`) REFERENCES `faccount` (`AccNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `loan_ibfk_2` FOREIGN KEY (`LoanID`) REFERENCES `borrow` (`LoanID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
