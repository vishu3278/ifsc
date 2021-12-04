-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 02:03 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ifsc`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_names`
--

CREATE TABLE `bank_names` (
  `id` bigint(20) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_names`
--

INSERT INTO `bank_names` (`id`, `name`, `slug`) VALUES
(1, 'A P MAHESH CO-OPERATIVE URBAN BANK LTD', 'a-p-mahesh-co-operative-urban-bank-ltd'),
(2, 'ABHYUDAYA CO-OPERATIVE BANK LTD', 'abhyudaya-co-operative-bank-ltd'),
(3, 'ABU DHABI COMMERCIAL BANK', 'abu-dhabi-commercial-bank'),
(4, 'ADITYA BIRLA IDEA PAYMENTS BANK', 'aditya-birla-idea-payments-bank'),
(5, 'AHMEDABAD MERCANTILE CO-OPERATIVE BANK', 'ahmedabad-mercantile-co-operative-bank'),
(6, 'AHMEDNAGAR MERCHANTS CO-OPERATIVE BANK LTD', 'ahmednagar-merchants-co-operative-bank-ltd'),
(7, 'AIRTEL PAYMENTS BANK LTD', 'airtel-payments-bank-ltd'),
(8, 'AKOLA DISTRICT CENTRAL CO-OPERATIVE BANK LTD', 'akola-district-central-co-operative-bank-ltd'),
(9, 'AKOLA JANATA COMMERCIAL CO-OPERATIVE BANK LTD', 'akola-janata-commercial-co-operative-bank-ltd'),
(10, 'ALLAHABAD BANK', 'allahabad-bank'),
(11, 'ALMORA URBAN BANK LTD', 'almora-urban-bank-ltd'),
(12, 'AMBARNATH JAIHIND CO-OPERATIVE BANK LTD', 'ambarnath-jaihind-co-operative-bank-ltd'),
(13, 'ANDHRA BANK', 'andhra-bank'),
(14, 'ANDHRA PRADESH GRAMEENA VIKAS BANK', 'andhra-pradesh-grameena-vikas-bank'),
(15, 'ANDHRA PRAGATHI GRAMEENA BANK', 'andhra-pragathi-grameena-bank'),
(16, 'APNA SAHAKARI BANK LTD', 'apna-sahakari-bank-ltd'),
(17, 'AU SMALL FINANCE BANK LTD', 'au-small-finance-bank-ltd'),
(18, 'AUSTRALIA ', 'australia'),
(19, 'AXIS BANK', 'axis-bank'),
(20, 'BANDHAN BANK LTD', 'bandhan-bank-ltd'),
(21, 'BANK INTERNATIONAL INDONESIA', 'bank-international-indonesia'),
(22, 'BANK NAME', 'bank-name'),
(23, 'BANK OF AMERICA', 'bank-of-america'),
(24, 'BANK OF BAHRAIN AND KUWAIT', 'bank-of-bahrain-and-kuwait'),
(25, 'BANK OF BARODA', 'bank-of-baroda'),
(26, 'BANK OF CEYLON', 'bank-of-ceylon'),
(27, 'BANK OF INDIA', 'bank-of-india'),
(28, 'BANK OF MAHARASHTRA', 'bank-of-maharashtra'),
(29, 'BANK OF NOVA SCOTIA', 'bank-of-nova-scotia'),
(30, 'BARAMATI SAHAKARI BANK LTD', 'baramati-sahakari-bank-ltd'),
(31, 'BARCLAYS BANK PLC', 'barclays-bank-plc'),
(32, 'BASSEIN CATHOLIC COOPERATIVE BANK LTD', 'bassein-catholic-cooperative-bank-ltd'),
(33, 'BHAGINI NIVEDITA SAHAKARI BANK LTD', 'bhagini-nivedita-sahakari-bank-ltd'),
(34, 'BHARAT COOPERATIVE BANK LTD', 'bharat-cooperative-bank-ltd'),
(35, 'BNP PARIBAS', 'bnp-paribas'),
(36, 'CANARA BANK', 'canara-bank'),
(37, 'CAPITAL SMALL FINANCE BANK LTD', 'capital-small-finance-bank-ltd'),
(38, 'CENTRAL BANK OF INDIA', 'central-bank-of-india'),
(39, 'CITI BANK', 'citi-bank'),
(40, 'CITIZEN CREDIT COOPERATIVE BANK LTD', 'citizen-credit-cooperative-bank-ltd'),
(41, 'CITY UNION BANK LTD', 'city-union-bank-ltd'),
(42, 'CORPORATION BANK', 'corporation-bank'),
(43, 'COSMOS CO-OPERATIVE  BANK', 'cosmos-co-operative--bank'),
(44, 'CREDIT AGRICOLE CORPORATE AND INVESTMENT BANK', 'credit-agricole-corporate-and-investment-bank'),
(45, 'CREDIT SUISSE AG', 'credit-suisse-ag'),
(46, 'CSB BANK LTD', 'csb-bank-ltd'),
(47, 'CTBC BANK CO LTD', 'ctbc-bank-co-ltd'),
(48, 'DCB BANK LTD', 'dcb-bank-ltd'),
(49, 'DENA BANK', 'dena-bank'),
(50, 'DEOGIRI NAGARI SAHAKARI BANK LTD', 'deogiri-nagari-sahakari-bank-ltd'),
(51, 'DEPOSIT INSURANCE AND CREDIT GUARANTEE CORP', 'deposit-insurance-and-credit-guarantee-corp'),
(52, 'DEUTSCHE BANK LTD', 'deutsche-bank-ltd'),
(53, 'DEVELOPMENT BANK OF SINGAPORE', 'development-bank-of-singapore'),
(54, 'DHANALAKSHMI BANK', 'dhanalakshmi-bank'),
(55, 'DMK JAOLI BANK', 'dmk-jaoli-bank'),
(56, 'DOHA BANK', 'doha-bank'),
(57, 'DOMBIVLI NAGARI SAHAKARI BANK', 'dombivli-nagari-sahakari-bank'),
(58, 'DURGAPUR STEEL PEOPLES CO-OPERATIVE BANK LTD', 'durgapur-steel-peoples-co-operative-bank-ltd'),
(59, 'EMIRATES NBD BANK PJSC', 'emirates-nbd-bank-pjsc'),
(60, 'EQUITAS SMALL FINANCE BANK LTD', 'equitas-small-finance-bank-ltd'),
(61, 'ESAF SMALL FINANCE BANK LTD', 'esaf-small-finance-bank-ltd'),
(62, 'FEDERAL BANK', 'federal-bank'),
(63, 'FINCARE SMALL FINANCE BANK LTD', 'fincare-small-finance-bank-ltd'),
(64, 'FINO PAYMENTS BANK', 'fino-payments-bank'),
(65, 'FIRST ABU DHABI BANK PJSC', 'first-abu-dhabi-bank-pjsc'),
(66, 'FIRSTRAND BANK', 'firstrand-bank'),
(67, 'GADCHIROLI DISTRICT CENTRAL CO-OP BANK LTD', 'gadchiroli-district-central-co-op-bank-ltd'),
(68, 'GOPINATH PATIL PARSIK JANATA SAHAKARI BK LTD', 'gopinath-patil-parsik-janata-sahakari-bk-ltd'),
(69, 'GREATER BOMBAY CO-OP BANK', 'greater-bombay-co-op-bank'),
(70, 'GS Mahanagar Co-operative Bank Ltd', 'gs-mahanagar-co-operative-bank-ltd'),
(71, 'HASTI COOPERATIVE BANK LTD', 'hasti-cooperative-bank-ltd'),
(72, 'HDFC BANK', 'hdfc-bank'),
(73, 'HIMACHAL PRADESH STATE COOPERATIVE BANK LTD', 'himachal-pradesh-state-cooperative-bank-ltd'),
(74, 'HONGKONG ', 'hongkong'),
(75, 'ICICI BANK LTD', 'icici-bank-ltd'),
(76, 'IDBI BANK', 'idbi-bank'),
(77, 'IDFC FIRST BANK LTD', 'idfc-first-bank-ltd'),
(78, 'IDUKKI DISTRICT CO OPERATIVE BANK LTD', 'idukki-district-co-operative-bank-ltd'),
(79, 'INDIA POST PAYMENTS BANK LTD', 'india-post-payments-bank-ltd'),
(80, 'INDIAN BANK', 'indian-bank'),
(81, 'INDIAN OVERSEAS BANK', 'indian-overseas-bank'),
(82, 'INDUSIND BANK', 'indusind-bank'),
(83, 'INDUSTRIAL AND COMMERCIAL BANK OF CHINA LTD', 'industrial-and-commercial-bank-of-china-ltd'),
(84, 'INDUSTRIAL BANK OF KOREA', 'industrial-bank-of-korea'),
(85, 'IRINJALAKUDA TOWN CO-OPERATIVE BANK LTD', 'irinjalakuda-town-co-operative-bank-ltd'),
(86, 'JALGAON JANATA SAHAKARI BANK LTD', 'jalgaon-janata-sahakari-bank-ltd'),
(87, 'JAMMU AND KASHMIR BANK LTD', 'jammu-and-kashmir-bank-ltd'),
(88, 'JANA SMALL FINANCE BANK LTD', 'jana-small-finance-bank-ltd'),
(89, 'JANAKALYAN SAHAKARI BANK LTD', 'janakalyan-sahakari-bank-ltd'),
(90, 'JANASEVA SAHAKARI BANK LTD', 'janaseva-sahakari-bank-ltd'),
(91, 'JANASEVA SAHAKARI BANK LTD', 'janaseva-sahakari-bank-ltd'),
(92, 'JANATA SAHAKARI BANK LTD', 'janata-sahakari-bank-ltd'),
(93, 'JIO PAYMENTS BANK LTD', 'jio-payments-bank-ltd'),
(94, 'JP MORGAN CHASE BANK', 'jp-morgan-chase-bank'),
(95, 'KALLAPPANNA AWADE ICHALKARANJI JANATA SAHAKARI BANK LTD', 'kallappanna-awade-ichalkaranji-janata-sahakari-bank-ltd'),
(96, 'KALUPUR COMMERCIAL COOPERATIVE BANK', 'kalupur-commercial-cooperative-bank'),
(97, 'KALYAN JANATA SAH BANK LTD', 'kalyan-janata-sah-bank-ltd'),
(98, 'KANGRA CENTRAL CO-OP BANK LTD', 'kangra-central-co-op-bank-ltd'),
(99, 'KANGRA CO-OPERATIVE BANK LTD', 'kangra-co-operative-bank-ltd'),
(100, 'KAPOL CO-OP BANK LTD', 'kapol-co-op-bank-ltd'),
(101, 'KARAD URBAN CO-OP BANK LTD', 'karad-urban-co-op-bank-ltd'),
(102, 'KARNATAKA BANK LTD', 'karnataka-bank-ltd'),
(103, 'KARNATAKA GRAMIN BANK', 'karnataka-gramin-bank'),
(104, 'KARNATAKA VIKAS GRAMEENA BANK', 'karnataka-vikas-grameena-bank'),
(105, 'KARUR VYSYA BANK', 'karur-vysya-bank'),
(106, 'KEB Hana Bank', 'keb-hana-bank'),
(107, 'KERALA GRAMIN BANK', 'kerala-gramin-bank'),
(108, 'KOOKMIN BANK', 'kookmin-bank'),
(109, 'KOTAK MAHINDRA BANK LTD', 'kotak-mahindra-bank-ltd'),
(110, 'KOZHIKODE DISTRICT CO-OPERATIVE BANK LTD', 'kozhikode-district-co-operative-bank-ltd'),
(111, 'KRUNG THAI BANK PCL', 'krung-thai-bank-pcl'),
(112, 'KURMANCHAL NAGAR SAHAKARI BANK LTD', 'kurmanchal-nagar-sahakari-bank-ltd'),
(113, 'LAXMI VILAS BANK', 'laxmi-vilas-bank'),
(114, 'MAHANAGAR CO-OP BANK LTD', 'mahanagar-co-op-bank-ltd'),
(115, 'MAHARASHTRA GRAMIN BANK', 'maharashtra-gramin-bank'),
(116, 'MAHARASHTRA STATE CO-OPERATIVE BANK', 'maharashtra-state-co-operative-bank'),
(117, 'MAHESH SAHAKARI BANK LTD', 'mahesh-sahakari-bank-ltd'),
(118, 'MASHREQ BANK', 'mashreq-bank'),
(119, 'MEHSANA URBAN CO-OPERATIVE BANK LTD', 'mehsana-urban-co-operative-bank-ltd'),
(120, 'MIZUHO BANK LTD', 'mizuho-bank-ltd'),
(121, 'MUFG BANK LTD', 'mufg-bank-ltd'),
(122, 'MUMBAI DISTRICT CENTRAL COOP BANK LTD', 'mumbai-district-central-coop-bank-ltd'),
(123, 'MUNICIPAL COOPERATIVE BANK LTD', 'municipal-cooperative-bank-ltd'),
(124, 'NAGAR URBAN COOPERATIVE BANK LTD', 'nagar-urban-cooperative-bank-ltd'),
(125, 'NAGPUR NAGARIK SAHAKARI BANK LTD', 'nagpur-nagarik-sahakari-bank-ltd'),
(126, 'NASIK MARCHANTS CO-OP BANK LTD', 'nasik-marchants-co-op-bank-ltd'),
(127, 'NATIONAL BANK FOR AGRICULTURE AND RURAL DEVELOPMENT', 'national-bank-for-agriculture-and-rural-development'),
(128, 'NATWEST MARKETS PLC', 'natwest-markets-plc'),
(129, 'NAV JEEVAN CO OP BANK LTD', 'nav-jeevan-co-op-bank-ltd'),
(130, 'NEW INDIA CO-OP BANK', 'new-india-co-op-bank'),
(131, 'NKGSB COOP BANK LTD', 'nkgsb-coop-bank-ltd'),
(132, 'NORTH EAST SMALL FINANCE BANK LTD', 'north-east-small-finance-bank-ltd'),
(133, 'NSDL PAYMENTS BANK LTD', 'nsdl-payments-bank-ltd'),
(134, 'NUTAN NAGARIK SAHAKARI BANK LTD', 'nutan-nagarik-sahakari-bank-ltd'),
(135, 'ORIENTAL BANK OF COMMERCE', 'oriental-bank-of-commerce'),
(136, 'PANDHARPUR URBAN CO OP. BANK LTD', 'pandharpur-urban-co-op.-bank-ltd'),
(137, 'PAYTM PAYMENTS BANK LTD', 'paytm-payments-bank-ltd'),
(138, 'PRIME CO-OPERATIVE BANK LTD', 'prime-co-operative-bank-ltd'),
(139, 'PUNJAB AND SIND BANK', 'punjab-and-sind-bank'),
(140, 'PUNJAB NATIONAL BANK', 'punjab-national-bank'),
(141, 'QATAR NATIONAL BANK QPSC', 'qatar-national-bank-qpsc'),
(142, 'RABOBANK INTERNATIONAL', 'rabobank-international'),
(143, 'RAJARAMBAPU SAHAKARI BANK LTD', 'rajarambapu-sahakari-bank-ltd'),
(144, 'RAJARSHI SHAHU SAHAKARI BANK LTD', 'rajarshi-shahu-sahakari-bank-ltd'),
(145, 'RAJASTHAN MARUDHARA GRAMIN BANK', 'rajasthan-marudhara-gramin-bank'),
(146, 'RAJASTHAN STATE COOPERATIVE BANK LTD', 'rajasthan-state-cooperative-bank-ltd'),
(147, 'RAJGURUNAGAR SAHAKARI BANK LTD', 'rajgurunagar-sahakari-bank-ltd'),
(148, 'RAJKOT NAGARIK SAHAKARI BANK LTD', 'rajkot-nagarik-sahakari-bank-ltd'),
(149, 'RBL BANK LTD', 'rbl-bank-ltd'),
(150, 'RESERVE BANK OF INDIA', 'reserve-bank-of-india'),
(151, 'SAHEBRAO DESHMUKH CO-OP BANK LTD', 'sahebrao-deshmukh-co-op-bank-ltd'),
(152, 'SAMARTH SAHAKARI BANK LTD', 'samarth-sahakari-bank-ltd'),
(153, 'SANT SOPANKAKA SAHAKARI BANK LTD', 'sant-sopankaka-sahakari-bank-ltd'),
(154, 'Saraspur Nagrik Co operative Bank Ltd', 'saraspur-nagrik-co-operative-bank-ltd'),
(155, 'SARASWAT COOPERATIVE BANK LTD', 'saraswat-cooperative-bank-ltd'),
(156, 'SATARA DISTRICT CENTRAL CO OP BANK LTD', 'satara-district-central-co-op-bank-ltd'),
(157, 'Satara Sahakari Bank Ltd', 'satara-sahakari-bank-ltd'),
(158, 'SBER BANK', 'sber-bank'),
(159, 'SBM BANK INDIA LTD', 'sbm-bank-india-ltd'),
(160, 'SHIKSHAK SAHAKARI BANK LTD', 'shikshak-sahakari-bank-ltd'),
(161, 'SHINHAN BANK', 'shinhan-bank'),
(162, 'SHIVALIK MERCANTILE CO-OPERATIVE BANK LTD', 'shivalik-mercantile-co-operative-bank-ltd'),
(163, 'SHRI CHHATRAPATI RAJARSHI SHAHU URBAN CO-OP. BANK LTD', 'shri-chhatrapati-rajarshi-shahu-urban-co-op.-bank-ltd'),
(164, 'SHRI VEERSHAIV CO-OP. BANK LTD', 'shri-veershaiv-co-op.-bank-ltd'),
(165, 'SIR M VISVESVARAYA CO-OPERATIVE BANK LTD', 'sir-m-visvesvaraya-co-operative-bank-ltd'),
(166, 'SOCIETE GENERALE', 'societe-generale'),
(167, 'SOLAPUR JANATA SAHAKARI BANK LTD', 'solapur-janata-sahakari-bank-ltd'),
(168, 'SOUTH INDIAN BANK', 'south-indian-bank'),
(169, 'STANDARD CHARTERED BANK LTD', 'standard-chartered-bank-ltd'),
(170, 'STATE BANK OF INDIA', 'state-bank-of-india'),
(171, 'Suco Souharda Sahakari Bank Ltd', 'suco-souharda-sahakari-bank-ltd'),
(172, 'SUMITOMO MITSUI BANKING CORPORATION', 'sumitomo-mitsui-banking-corporation'),
(173, 'SURAT NATIONAL COOPERATIVE BANK', 'surat-national-cooperative-bank'),
(174, 'SURAT PEOPLES COOP BANK LTD', 'surat-peoples-coop-bank-ltd'),
(175, 'SURYODAY SMALL FINANCE BANK LTD', 'suryoday-small-finance-bank-ltd'),
(176, 'SUTEX CO-OPERATIVE BANK LTD', 'sutex-co-operative-bank-ltd'),
(177, 'SYNDICATE BANK', 'syndicate-bank'),
(178, 'TAMIL NADU STATE APEX COOP BANK LTD', 'tamil-nadu-state-apex-coop-bank-ltd'),
(179, 'TAMILNAD MERCANTILE BANK LTD', 'tamilnad-mercantile-bank-ltd'),
(180, 'TELANGANA STATE COOP APEX BANK', 'telangana-state-coop-apex-bank'),
(181, 'TEXTILE TRADERS CO-OPERATIVE BANK LTD', 'textile-traders-co-operative-bank-ltd'),
(182, 'THANE BHARAT SAHAKARI BANK LTD', 'thane-bharat-sahakari-bank-ltd'),
(183, 'THANE DISTRICT CENTRAL CO-OP. BANK LTD', 'thane-district-central-co-op.-bank-ltd'),
(184, 'The Ajara Urban Co-Op Bank Ltd', 'the-ajara-urban-co-op-bank-ltd'),
(185, 'THE ANDHRA PRADESH STATE COOPERATIVE BANK LTD', 'the-andhra-pradesh-state-cooperative-bank-ltd'),
(186, 'THE DELHI STATE COOPERATIVE BANK LTD', 'the-delhi-state-cooperative-bank-ltd'),
(187, 'THE GUJARAT STATE COOPERATIVE BANK LTD', 'the-gujarat-state-cooperative-bank-ltd'),
(188, 'THE HARYANA STATE COOPERATIVE APEX BANK LTD', 'the-haryana-state-cooperative-apex-bank-ltd'),
(189, 'THE JALGAON PEOPLES COOPERATIVE BANK LTD', 'the-jalgaon-peoples-cooperative-bank-ltd'),
(190, 'THE KARANATAKA STATE COOPERATIVE APEX BANK LTD', 'the-karanataka-state-cooperative-apex-bank-ltd'),
(191, 'The Kerala State Co Operative Bank Ltd', 'the-kerala-state-co-operative-bank-ltd'),
(192, 'THE KOLHAPUR URBAN CO-OP BANK LTD', 'the-kolhapur-urban-co-op-bank-ltd'),
(193, 'The Malkapur Urban Co Operative Bank Ltd', 'the-malkapur-urban-co-operative-bank-ltd'),
(194, 'The Muslim Co-operative Bank Ltd', 'the-muslim-co-operative-bank-ltd'),
(195, 'THE NAINITAL BANK LTD', 'the-nainital-bank-ltd'),
(196, 'THE NAVNIRMAN CO-OPERATIVE BANK LTD', 'the-navnirman-co-operative-bank-ltd'),
(197, 'THE NILAMBUR CO OPERATIVE URBAN BANK LTD', 'the-nilambur-co-operative-urban-bank-ltd'),
(198, 'THE ODISHA STATE COOPERATIVE BANK LTD', 'the-odisha-state-cooperative-bank-ltd'),
(199, 'The Pusad Urban Cooperative Bank Ltd', 'the-pusad-urban-cooperative-bank-ltd'),
(200, 'THE SEVA VIKAS COOPERATIVE BANK LTD', 'the-seva-vikas-cooperative-bank-ltd'),
(201, 'THE SHAMRAO VITHAL COOPERATIVE BANK', 'the-shamrao-vithal-cooperative-bank'),
(202, 'THE SINDHUDURG DISTRICT CENTERIAL CO-OP BANK LTD', 'the-sindhudurg-district-centerial-co-op-bank-ltd'),
(203, 'THE SURAT DISTRICT COOPERATIVE BANK LTD', 'the-surat-district-cooperative-bank-ltd'),
(204, 'THE UDAIPUR URBAN CO OPERATIVE BANK LTD', 'the-udaipur-urban-co-operative-bank-ltd'),
(205, 'THE URBAN CO-OPERATIVE BANK LTD NO. ONE SEVEN FIVE EIGHT PERINTHALMANNA', 'the-urban-co-operative-bank-ltd-no.-one-seven-five-eight-perinthalmanna'),
(206, 'The Vijay Co Operative Bank LTD', 'the-vijay-co-operative-bank-ltd'),
(207, 'THE WEST BENGAL STATE COOPERATIVE BANK', 'the-west-bengal-state-cooperative-bank'),
(208, 'THRISSUR DISTRICT CO-OPERATIVE BANK LTD', 'thrissur-district-co-operative-bank-ltd'),
(209, 'TJSB SAHAKARI BANK LTD', 'tjsb-sahakari-bank-ltd'),
(210, 'TUMKUR GRAIN MERCHANTS CO-OP. BANK LTD', 'tumkur-grain-merchants-co-op.-bank-ltd'),
(211, 'UCO BANK', 'uco-bank'),
(212, 'Ujjivan Small Finance Bank LTD', 'ujjivan-small-finance-bank-ltd'),
(213, 'UNION BANK OF INDIA', 'union-bank-of-india'),
(214, 'UNITED BANK OF INDIA', 'united-bank-of-india'),
(215, 'UNITED OVERSEAS BANK LTD', 'united-overseas-bank-ltd'),
(216, 'UTKARSH SMALL FINANCE BANK', 'utkarsh-small-finance-bank'),
(217, 'UTTAR PRADESH COOPERATIVE BANK', 'uttar-pradesh-cooperative-bank'),
(218, 'VARACHHA COOPERATIVE BANK LTD', 'varachha-cooperative-bank-ltd'),
(219, 'VASAI JANATA SAHAKARI BANK LTD', 'vasai-janata-sahakari-bank-ltd'),
(220, 'VASAI VIKAS SAHAKARI BANK LTD', 'vasai-vikas-sahakari-bank-ltd'),
(221, 'VIJAYA BANK', 'vijaya-bank'),
(222, 'VISHESHWAR SAHAKARI BANK LTD', 'visheshwar-sahakari-bank-ltd'),
(223, 'WESTPAC BANKING CORPORATION', 'westpac-banking-corporation'),
(224, 'WOORI BANK', 'woori-bank'),
(225, 'YES BANK', 'yes-bank'),
(226, 'ZILA SAHAKARI BANK LTD', 'zila-sahakari-bank-ltd'),
(227, 'ZOROASTRIAN COOPERATIVE BANK LTD', 'zoroastrian-cooperative-bank-ltd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_names`
--
ALTER TABLE `bank_names`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_names`
--
ALTER TABLE `bank_names`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
