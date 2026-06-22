-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2026 at 12:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_com`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(100) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(6, 'Nirmal', 'nirmalrohit1482005@gmail.com', '1234', 'o.jpg', '9904678731', 'india', 'owner', 'main ');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(100) NOT NULL,
  `box_icon` varchar(100) NOT NULL,
  `box_title` varchar(255) NOT NULL,
  `box_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_icon`, `box_title`, `box_desc`) VALUES
(9, 'Good Quality', 'Good Sales', 'First Class product Quality');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(100) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(100) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(13, 'Mobiles Phones', 'Power on hand'),
(15, 'laptops', 'Wides ranges of laptops'),
(16, 'Air Conditioner', 'Fill the Air'),
(17, 'Refrigerator', 'Cool the foods'),
(18, 'Washing Machine', 'Wash your cloth'),
(19, 'Tablets', 'Big Screen of Phones'),
(20, 'Earbuds', 'Sound That you fill'),
(21, 'Television', 'Big size Pictures');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(100) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `pincode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_contact`, `customer_address`, `pincode`) VALUES
(38, 'Nirmal', 'nirmal@gmail.com', '1234', '9879657516', 'dadra', '396193'),
(41, 'Nirmal', 's227@gmail.com', '1234', '9904678731', 'demni road', '396193'),
(42, 'Nirmal', '23accmtics227@gmail.com', '1234', '9904678731', 'demni road', '396193'),
(43, 'Nirmal', 'tan@gmail.ocm', '1234', '9904678731', 'demni road', '990380'),
(44, 'Nirmal Rohit', '23amtics2277@gmail.com', '1234', '8989898989', 'Dadra Nagar Haveli', '396193');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(100) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `customer_id`, `product_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(47, 38, 77, 60000, 2035620696, 1, 'RED & Blue', '2024-12-12 03:11:49', 'pending'),
(48, 38, 99, 1500, 1244208963, 1, 'RED & Blue', '2024-12-12 03:35:48', 'pending'),
(49, 38, 50, 140000, 144270940, 1, 'RED & Blue', '2024-12-12 04:29:37', 'pending'),
(50, 38, 50, 140000, 468560448, 1, 'RED & Blue', '2024-12-12 04:47:08', 'pending'),
(51, 43, 101, 999, 1349346418, 1, 'RED & Blue', '2024-12-12 06:23:50', 'pending'),
(52, 43, 102, 899, 707679314, 1, 'RED & Blue', '2024-12-12 06:48:40', 'pending'),
(53, 44, 102, 899, 1034078441, 1, 'RED & Blue', '2026-06-22 10:01:34', 'pending'),
(54, 44, 50, 140000, 1034078441, 1, 'RED & Blue', '2026-06-22 10:01:34', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(100) NOT NULL,
  `invoice_id` int(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(100) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_id`, `amount`, `payment_mode`, `ref_no`, `payment_date`) VALUES
(20, 1601455995, 599, 'google pay', 232323, '2021-05-11'),
(21, 1601455995, 599, 'Bank transfer', 112121, '2021-05-10'),
(22, 2098939645, 299, 'Bank transfer', 232323, '2021-06-17'),
(23, 34532, 23425, 'Bank transfer', 2342, '2004-05-23'),
(24, 34532, 23425, 'Bank transfer', 2342, '2555-06-05');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` varchar(255) NOT NULL,
  `product_img2` varchar(255) NOT NULL,
  `product_img3` varchar(255) NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_desc` varchar(1000) NOT NULL,
  `product_keyword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_desc`, `product_keyword`) VALUES
(43, 70, 17, '2024-11-24 13:43:08', 'LG 2 Door Fridge', 'lgfridge.jpg', 'lgfrides.jpg', 'lgfrides.jpg', 68000, 'A Refrigerator With Multiple Cooling Features Certainly Adds To The Pleasure Of Summer. Designed With A Number Of Exciting Features, You Get To Witness Express Freeze', 'lg fridge'),
(44, 71, 18, '2024-11-24 15:02:38', 'Samsung washing Machine', 'was.jpg', 'washingmac.jpg', 'washng.jpg', 25000, 'Discover ultimate laundry convenience with the Whirlpool Front Load Washing Machine. Utilising Ozone Air Refresh and Steam Wash technology, it ensures thorough cleaning and odour removal. The spacious 330mm wide drum access accommodates large loads with ease. Enjoy 15 versatile wash cycles, including Fresh Care for long-lasting freshness', 'wash'),
(45, 75, 21, '2024-12-02 19:40:11', 'LG 55 Inch TV ', 'lg545.jpg', 'lgtv45.jpg', 'lgtv45.jpg', 45000, 'The LG UR7500 TV is a masterpiece of visual technology, delivering breathtaking picture quality, immersive sound, and a range of features that enhance your entertainment experience. With its AI-powered capabilities, seamless connectivity, and gaming optimisation, this TV is a true game-changer. ', 'tv'),
(46, 22, 15, '2024-12-01 13:28:58', 'lenovo slimpad 5', 'laaaap.jpg', 'laaa.jpg', 'laaaaaaa.jpg', 60000, 'Processor\r\nAMD Ryzen™ 5 7430U Processor (2.30 GHz up to 4.30 GHz)\r\nOperating System\r\nNo Operating System\r\nGraphic Card\r\nIntegrated Graphics\r\nMemory\r\n8 GB DDR4-3200MHz (SODIMM)\r\nStorage\r\n256 GB SSD M.2 2242 PCIe Gen4 TLC\r\nDisplay\r\n40.64cms (16) WUXGA (1920 x 1200), IPS, Anti-Glare, Non-Touch, 45%NTSC, 300 nits', 'laptop'),
(47, 68, 16, '2024-11-24 15:19:48', 'LG 2 Ton AC', 'lggac.jpg', 'ac.jpg', 'accc.jpg', 35000, 'Copper With Ocean Black Protection: Prevents From Rust & Corrosion; Increase Durability ; Uninterrupted Cooling\r\nRefrigerant gas: R32 - Environmental friendly - no ozone depletion potential', 'ac'),
(48, 27, 13, '2024-12-01 14:41:22', 'Samsung S24 Ultra', 's24ultra.jpg', 's24ul.jpg', 's24ult.jpg', 130000, 'The Samsung Galaxy S24 Ultra is a flagship smartphone that combines cutting-edge technology with premium design. It features a 6.8-inch Dynamic AMOLED display with a high 120Hz refresh rate, offering vibrant colors and smooth visuals. Powered by the latest Snapdragon 8 Gen 3 chipset (or Exynos, depending on the region), it delivers exceptional performance and efficiency. The device boasts a powerful quad-camera setup, with a 200MP primary sensor, 12MP ultrawide, and two telephoto lenses offering up to 10x optical zoom, ensuring versatile and stunning photography capabilities. The S24 Ultra also supports 5G connectivity, a large battery with fast charging, and features like an in-display fingerprint sensor and S Pen support. Running on the latest Android version with Samsung’s One UI skin, it offers a refined software experience with enhanced multitasking and productivity features. The phone’s build is sleek and durable, with IP68 water and dust resistance, making it a top-tier choice f', 's24'),
(50, 27, 13, '2024-12-01 15:59:06', 'Iphone 16 Pro', '16pro.jpg', '16prooo.jpg', 'iphone16proo.jpg', 140000, 'The iPhone 16 Pro introduces several noteworthy upgrades that continue Apple’s trend of refining its flagship smartphone. The device features a stunning Super Retina XDR display with ProMotion, offering smoother scrolling and enhanced color accuracy. Powered by the A18 Bionic chip, the iPhone 16 Pro delivers a seamless performance with improved energy efficiency, ensuring fast processing and smoother multitasking. One of the standout additions is the advanced camera system, including a 48MP main sensor and new computational photography features that enable better low-light performance and more detail in photos. The device also introduces a Dynamic Island that blends the front camera and Face ID sensors into a more interactive interface, replacing the traditional notch. Battery life has been extended, and the iPhone 16 Pro continues to support 5G connectivity, ensuring future-proof performance. The design maintains the premium feel with a durable titanium frame, making it more resistant', 'iphone 16'),
(51, 27, 13, '2024-12-01 16:04:55', 'Samsung S23 FE', 'samsungs23.jpg', 'samsung s23fe.jpg', 'samsungcamera.jpg', 38000, 'The Samsung Galaxy S23 FE (Fan Edition) offers a compelling combination of high-end features and affordability, positioning itself as a great choice for those who want flagship-level performance without the premium price tag. It features a 6.4-inch Dynamic AMOLED display with a 120Hz refresh rate, delivering vibrant colors and smooth scrolling, perfect for media consumption and gaming. Powered by the Snapdragon 8 Gen 1 chipset (or Exynos 2200 in some regions), the S23 FE offers impressive performance, capable of handling demanding apps and multitasking with ease. \r\n\r\nThe camera system is another highlight, with a 50MP main sensor that delivers sharp, detailed images and solid low-light performance, alongside a 12MP ultra-wide and an 8MP telephoto lens with 3x optical zoom. It also benefits from Samsung’s camera software enhancements, ensuring great results in various lighting conditions. The 4,500mAh battery provides all-day use, and the 25W fast charging is a convenient feature for qu', 's23'),
(77, 27, 13, '2024-12-01 17:48:54', 'Vivo X100', 'vivox100.jpg', 'vivox1000.jpg', 'vivox10.jpg', 60000, 'best', 'vivo'),
(78, 73, 19, '2024-12-01 17:51:13', 'I Pad Air', 'ipaaad.jpg', 'ipadd.jpg', 'ippad.jpg', 45000, 'good display', 'tab'),
(79, 27, 13, '2024-12-02 08:31:10', 'IPhone 15', 'ipphone15.jpg', '155.jpg', 'iphone1555.jpg', 52000, 'The iPhone 15 series, released in 2023, introduces significant upgrades across design, performance, and camera capabilities. The iPhone 15 features a sleek titanium frame on Pro models and the innovative Dynamic Island for interactive notifications. It boasts a stunning Super Retina XDR OLED display with vibrant colors and impressive brightness, while Pro models offer a 120Hz ProMotion display for smoother visuals. The camera system sees a major leap, with the iPhone 15 Pro models sporting a 48MP main sensor and a telephoto lens with 5x optical zoom, delivering sharp, detailed images, even in low light, while the standard model also features a 48MP sensor for better photo quality. The iPhone 15 introduces USB-C charging for faster data transfer and improved compatibility, powered by the A16 Bionic chip in the standard model and the A17 Pro chip in the Pro versions, offering superior performance and efficiency. Battery life is extended thanks to energy-efficient components, and iOS 17 b', 'Iphone15'),
(80, 27, 13, '2024-12-02 08:33:11', 'Oneplus 12r', 'oneplus12r.jpg', 'onepluss12rr.jpg', 'onepluss12rrrr.jpg', 35000, 'The OnePlus 12R is expected to offer a premium experience at a more affordable price point compared to the flagship OnePlus 12. It would likely feature a high-quality **AMOLED display** with Full HD+ or QHD+ resolution, and a smooth **120Hz refresh rate** for better scrolling and gaming. Under the hood, it’s expected to be powered by a top-tier **Snapdragon 8 Gen 3** (or a similar chipset), paired with **8GB or more of RAM** and fast internal storage options, ensuring excellent performance. In terms of the **camera**, the OnePlus 12R would likely have a versatile setup, featuring a **50MP main sensor**, along with an ultra-wide lens and possibly a telephoto lens, offering high-quality photography with AI enhancements for better low-light shots. The **battery** would probably be around 5000mAh, supporting **100W+ fast charging**, ensuring quick recharges. On the software side, it would run on **OxygenOS**, offering a clean and smooth Android experience with added customization features.', 'onepluss'),
(81, 27, 13, '2024-12-02 08:34:57', 'Realme 10 Pro Plus', 'realme10.jpg', 'realme.jpg', 'realme 1.jpg', 24000, 'The **Realme 10 Pro+** is a well-rounded mid-range smartphone offering a premium design and solid performance at an affordable price point. It features a **6.7-inch AMOLED display** with a **120Hz refresh rate** and a **Full HD+ resolution**, delivering vibrant colors, deep blacks, and smooth visuals for gaming and media consumption. Under the hood, the device is powered by the **MediaTek Dimensity 1080** chipset, paired with up to **8GB of RAM** and **256GB of internal storage**, ensuring smooth multitasking and efficient performance for most tasks and apps. \r\nIn terms of **camera**, the Realme 10 Pro+ boasts a **108MP primary sensor**, supported by an **8MP ultra-wide** and **2MP macro** lens, providing great photo quality with sharp details and good low-light performance. The 16MP front camera offers clear selfies for video calls and photography. The phone is equipped with a **5000mAh battery**, which supports **67W fast charging**, allowing for quick top-ups and long-lasting use th', 'realme'),
(82, 27, 13, '2024-12-02 13:25:07', 'Samsung A52', 'a52.jpg', 'a522.jpg', 'a552.jpg', 24000, 'The Samsung Galaxy A52 is a mid-range smartphone that offers a compelling mix of features at an affordable price. It boasts a vibrant 6.5-inch Super AMOLED display with a 90Hz refresh rate, delivering smooth scrolling and vivid colors. Powered by the Snapdragon 720G chipset, it provides decent performance for everyday tasks and moderate gaming. The phone\'s quad-camera setup, led by a 64MP main sensor, excels in well-lit conditions, producing sharp and detailed photos. Its 4500mAh battery ensures a full day\'s use, complemented by 25W fast charging. With IP67 water and dust resistance and Samsung\'s clean One UI software experience, the A52 stands out as a reliable and stylish option in its segment. However, heavy gamers might find its performance slightly underwhelming compared to competitors.', 'sam'),
(84, 27, 13, '2024-12-02 15:58:00', 'Redmi 13 Pro Plus', 'mi12.jpg', 'mi13.jpg', 'mi133.jpg', 19999, 'The Redmi 13 Pro+ is a feature-packed smartphone that combines premium design with impressive specifications at a competitive price. Its standout features include a large AMOLED display with a 120Hz refresh rate, offering smooth visuals and vibrant colors, ideal for gaming and multimedia. ', 'mi'),
(85, 27, 13, '2024-12-02 16:23:10', 'Xiaomi 13 Pro Plus', 'xiaomi13.jpg', 'xiaomi133.jpg', 'xiamoi.jpg', 18000, 'The Xiaomi 13 Pro+ is a flagship powerhouse with a stunning AMOLED display, Snapdragon 8 Gen 2 processor, and exceptional Leica-tuned cameras that deliver top-tier photography. Its premium build, curved design, and fast charging capabilities make it a standout for enthusiasts. However, its high price may deter budget-conscious buyers, despite its compelling features.', 'xiaomi'),
(86, 27, 13, '2024-12-02 16:25:28', 'Vivo T2 Pro', 't2.jpg', 'tt2.jpg', 'ttt2.jpg', 18000, 'The Vivo T2 Pro features a sleek 120Hz AMOLED display, offering vibrant colors and smooth visuals, perfect for gaming and multimedia. Its 64MP OIS-assisted main camera excels in daylight photography and handles low-light shots decently, complemented by a basic ultra-wide sensor. Powered by the Dimensity 7200 chipset, it ensures smooth performance, while the stylish design and fast charging make it an attractive mid-range option.', 't2'),
(87, 27, 13, '2024-12-02 16:27:26', 'Realme 13 Pro Plus', 'realmeee13pro.jpg', 'realme13ppp.jpg', 'realmeee13333.jpg', 26000, 'The Realme 13 Pro Plus boasts a stunning 6.7-inch AMOLED display with a 120Hz refresh rate, making content viewing vibrant and smooth even under direct sunlight. Its camera setup includes a 50MP primary sensor with optical image stabilization, a 50MP telephoto lens, and an 8MP ultra-wide camera, delivering sharp, color-rich images and versatile shooting capabilities. Powered by the Snapdragon 7s Gen 2 chipset, the phone offers solid performance for multitasking and gaming, backed by a robust 5,200mAh battery with 80W fast charging for all-day usage.', '13pro'),
(88, 27, 13, '2024-12-02 16:29:22', 'Oppo F25 Pro', 'f25.jpg', 'f255.jpg', 'ff25.jpg', 12000, 'The Oppo F25 Pro impresses with its 6.7-inch AMOLED display offering HDR10+ support, 120Hz refresh rate, and excellent brightness for vibrant visuals. It features a 64MP triple camera system, delivering sharp shots in daylight, though low-light performance is average. Powered by the Dimensity 7050 chipset and a 5000mAh battery with 67W fast charging, it balances performance and endurance well for a mid-range device.', 'oppo'),
(89, 22, 15, '2024-12-02 17:25:03', 'Hp victus I5 12HSeries', 'victus.jpg', 'vvictus.jpg', 'vvictuus.jpg', 55000, 'The HP Victus with the Intel Core i5 H-series processor is a solid budget gaming laptop that balances performance and affordability. It features reliable 1080p gaming performance powered by the RTX 4050 GPU, making it suitable for modern games at reasonable settings, supported by an efficient cooling system to handle heat. However, its display quality is average, and the webcam could be better, but the long battery life and upgradeable components make it a strong choice for budget-conscious gamers.', 'victus'),
(90, 22, 15, '2024-12-02 17:33:41', 'Asus VivoBook AMD Ryzen 5', 'vivobook.jpg', 'vviobook.jpg', 'vivooobok.jpg', 70000, 'Asus VivoBook S15 OLED is an excellent all-around device that offers a fantastic balance of features, performance, and value. The Asus S 15 OLED manages to impress on multiple fronts; the laptop is great for content consumption, capable of handling day-to-day work and packs good battery life with great standby time with processor AMD Ryzen 5 7050U', 'vivobook'),
(91, 22, 15, '2024-12-02 17:36:22', 'HP Omen', 'omen.jpg', 'ooomenn.jpg', 'ommen.jpg', 80000, 'The HP Omen 15 featuring the NVIDIA RTX 4060 delivers impressive gaming performance and smooth graphics rendering, making it suitable for both gamers and content creators. Its sleek design and efficient cooling system help maintain optimal performance during extended sessions. However, the battery life might be a concern for those looking for prolonged portability without access to a power source.', 'omen'),
(92, 22, 15, '2024-12-02 17:50:05', 'MacBook M3', 'macbok.jpg', 'maacbook.jpg', 'macss.jpg', 129999, 'The MacBook Air M3 impresses with its powerful performance, enhanced battery life, and sleek design. Its advanced M3 chip delivers efficient multitasking and graphics capabilities, making it ideal for both professionals and casual users. The Retina display offers vibrant colors and sharp visuals, solidifying its status as an outstanding ultraportable laptop.', 'macbook'),
(93, 22, 15, '2024-12-02 17:52:48', 'Asus Tuf i5 11Gen', 'ttuff.jpg', 'tuff.jpg', 'asusstuff.jpg', 49000, 'The Asus TUF Gaming laptop with an Intel Core i5 11th Gen delivers solid gaming performance and multitasking capabilities, thanks to its efficient architecture. Its durable design features military-grade construction, ensuring reliability during intense gaming sessions. However, the thermal management could be improved for enhanced heat dissipation during prolonged use.', 'asus'),
(94, 22, 15, '2024-12-02 17:56:47', 'Hp i5 laptop', 'hhpp.jpg', 'hplap.jpg', 'hpps.jpg', 52000, 'The HP i5 13th Gen offers impressive performance and efficiency, making it ideal for multitasking and everyday computing needs. Its sleek design and solid build quality enhance the overall user experience, though battery life may vary depending on usage.', 'hp'),
(95, 75, 21, '2024-12-02 19:40:22', 'Sony 42 inch TV', 'sooni.jpg', 'ssonni.jpg', 'sssonicc.jpg', 19000, 'The Sony Bravia 42-inch TV offers stunning picture quality with vibrant colors and deep blacks, thanks to its advanced display technology. Its sleek design and user-friendly interface enhance the overall viewing experience. However, some users may find the sound quality lacking and may need an external sound system for optimal audio.', 'sonytv'),
(96, 71, 18, '2024-12-02 18:43:42', 'Ifb Wash Machine', 'iifb.jpg', 'iffbb.jpg', 'ifb.jpg', 15000, 'The IFB washing machine offers excellent washing performance with advanced features. Its innovative programs cater to different fabric types ensuring gentle yet effective cleaning. ', 'ifb'),
(97, 68, 16, '2024-12-02 18:45:40', 'Panasonic Ac', 'pana.jpg', 'panna.jpg', 'pinoo.jpg', 28000, 'The Panasonic AC offers efficient cooling with advanced inverter technology. Its silent operation ensures a comfortable environment. Energy-saving features make it a smart choice for homes.', 'ac'),
(98, 70, 17, '2024-12-02 18:47:19', 'Whirpool Fridge', 'whirpool.jpg', 'whirp.jpg', 'whir.jpg', 23000, 'The Whirlpool fridge offers reliable performance and ample storage space. Its energy efficiency helps save on electricity bills. The sleek design fits well in any modern kitchen. Features like adjustable shelves enhance convenience. Overall, it delivers great value for the price.', 'fridge'),
(99, 74, 20, '2024-12-02 19:09:49', 'Oneplus 2r Buds', 'oneplear.jpg', 'oneear.jpg', 'onepllusear.jpg', 1500, 'The OnePlus Buds 2R offer impressive sound quality with balanced bass and clear highs. Their comfortable design makes them suitable for long listening sessions. Battery life is solid, providing several hours of playback. Touch controls are intuitive and responsive. Overall, they are a great budget option for wireless earbuds.', 'earbuds'),
(100, 74, 20, '2024-12-02 19:12:42', 'Nothing Buds 2', 'nothing.jpg', 'nooothhimg.jpg', 'noothing.jpg', 1999, 'Nothing Buds 2 is an impressive exploration of growth and resilience. The storytelling is heartfelt and authentic. Characters are well-developed and relatable. The visuals are stunning and enhance the narrative. Overall it captivates the audience from start to finish.', 'buds'),
(101, 74, 20, '2024-12-02 19:14:11', 'Noise Buds Pro', 'nooisee.jpg', 'noise.jpg', 'noisebuds.jpg', 999, 'The Noise Buds Pro offer excellent sound quality for an affordable price. Their active noise cancellation feature effectively reduces background noise. The design is comfortable and lightweight for extended wear. Battery life is impressive allowing for long listening sessions. Overall they provide great value for casual listeners and audiophiles alike.', 'noise'),
(102, 74, 20, '2024-12-02 19:15:18', 'Boat 161 Bids', 'boat16.jpg', 'booat.jpg', 'boat166.jpg', 899, 'Boat 161 offers a remarkable experience for enthusiasts. Its design blends functionality with aesthetics beautifully. The performance on water is impressively smooth and stable. Interior space is well utilized providing comfort for all passengers. Overall it stands out as an exceptional choice for any boating adventure.', 'earbuds');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL,
  `p_cat_img` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`p_cat_id`, `p_cat_title`, `p_cat_desc`, `p_cat_img`) VALUES
(22, 'laptops', 'wide ranges of laptops', 0),
(27, 'Mobiles Phones', 'Power on hands', 0),
(68, 'Air Conditiioner', 'Fill the Air', 0),
(70, 'Refrigerator', 'cool foods', 0),
(71, 'Washing Machine', 'Wash your cloth', 0),
(72, 'Smart Watch', 'Smart wear', 0),
(73, 'Tablets', 'Big Screen\r\n', 0),
(74, 'Earbuds', 'Sound that you fill', 0),
(75, 'Television', 'Big size Pictures', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `Id` int(10) NOT NULL,
  `slider_name` varchar(255) NOT NULL,
  `slider_image` text NOT NULL,
  `slider_url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`Id`, `slider_name`, `slider_image`, `slider_url`) VALUES
(34, 'sad', 'WhatsApp Image 2024-11-20 at 9.31.54 PM.jpeg', 'dads'),
(35, 'nirmal', 'WhatsApp Image 2024-11-20 at 9.43.01 PM.jpeg', 'dgfdg'),
(36, 'television', 'tv.jpg', 'a'),
(38, 'z', 'rediphone.jpg', 'ZZ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
