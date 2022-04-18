-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2022 at 12:40 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plant_selling`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Home Plant', 'laptops'),
(2, 'Indoor Plant', 'desktop-pc'),
(6, 'Herbs Plant', ''),
(7, 'BONSOI', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_04_13_111939_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(12, 5, 'FEJKA Artificial potted plant', '<p>Lifelike, artificial plants that stay fresh year after year.</p>\r\n\r\n<p>Perfect if you can&#39;t have a live plant, but still want to enjoy the beauty of nature.</p>\r\n\r\n<p>Suitable for both indoor and outdoor use.</p>\r\n', 'fejka-artificial-potted-plant', 1290, 'fejka-artificial-potted-plant_1649246449.jpg', '2022-04-07', 5),
(30, 7, 'AGAMI Money Plant ', '<p>The money plant is one of the most common household plants. It is called the money plant simply because it has round, plump, flat leaves that might, with a bit of imagination, look like a coin. This plant originated in Mo&#39;orea, which is a high island in French Polynesia. This plant is usually kept as a dwarf in the house but can be grown in the garden too. The belief is that while it thrives, one would never be short of money. Money plant is considered as lucky plants, which bring wealth, health, prosperity and happiness in the house. They also act as air purifiers. A money plant can be sown in water and soil. Money plant needs water every seven to 7 days when sown in soil.</p>\r\n', 'agami-money-plant', 211, 'agami-money-plant.jpeg', '0000-00-00', 0),
(31, 7, 'Guruji Plantation Croton Plant', '<p>GURVEPLANTATIONI 1 Croton Plant, Plastic Pot &amp; Corrugated Box</p>\r\n', 'guruji-plantation-croton-plant', 250, 'guruji-plantation-croton-plant.jpeg', '0000-00-00', 0),
(32, 7, 'Eco Ocean Phoneix Palm Plant ', '<ul>\r\n	<li>Plant Name: Phoneix Palm Plant</li>\r\n	<li>Type: Bonsai</li>\r\n	<li>Suitable Location: Indoor &amp; Outdoor</li>\r\n	<li>Container Type: Pot</li>\r\n	<li>Height: 200 mm</li>\r\n</ul>\r\n', 'eco-ocean-phoneix-palm-plant', 324, 'eco-ocean-phoneix-palm-plant.jpeg', '0000-00-00', 0),
(33, 5, '\'Maria\', Ti Plant', 'Maria Hawaiian Ti Plant (cordyline) – Very Bright. Cordyline Marias juvenile leaves begin maroon in color with pink margins soon to explode into vibrant striated flamingo pink. Spectacular when planted in multiples. Mature height is around 5 feet.', 'maria-ti-plant', 500, 'maria-ti-plant.jpg', '2022-04-07', 3),
(34, 5, ' Chrysanthemum', '<p>Sometimes we can not counter the seasonal changes and the effects they have on some of our&nbsp;<a href=\"https://www.floweraura.com/plants/type/air-purifying\">air purifying plants</a>&nbsp;outdoor. And some of these affected plants really have to go if you wish to maintain your spectacular plant views. The Mums plants are available in a variety of colours that blend well with other plants including pumpkins and gourds.</p>\r\n', 'chrysanthemum', 600, 'chrysanthemum.jpg', '0000-00-00', 0),
(35, 2, 'Monstera', '<p>The Swiss cheese plant, or Mexican breadfruit (Monstera deliciosa), is&nbsp;<strong>a common houseplant with showy, glossy, perforated leaves slashed to the margins</strong>; numerous horticultural varieties have been developed. When fully ripe, its sweet scaly fruit is edible and tastes like a combination of pineapple and mango.</p>\r\n', 'monstera', 800, 'monstera.jpg', '2022-04-14', 2),
(36, 2, 'Silver Dollar Vine', '<p>The Silver Dollar Vine is&nbsp;<strong>a summer-growing climbing or scrambling shrub from Madagascar</strong>. A relative of the cucumber, this plant climbs using the same kind of delicate tendrils to grip onto a support structure. Although a climber, the Silver Dollar Vine forms a loose scrambling kind of shrub over time.</p>\r\n', 'silver-dollar-vine', 900, 'silver-dollar-vine.jpg', '2022-04-15', 1),
(37, 2, 'Beaucarnea recurvata', '<p><strong>A tree with crown resembling ponytail and distinctive trunk with massively swollen base</strong>. Tree can grow up to 9 m tall and base up to 3.7 m wide. Trunk. Trunk is massively swollen at the base. Usually no branching when young, the trunk may develop slight branching as it matures.</p>\r\n', 'beaucarnea-recurvata', 1000, 'beaucarnea-recurvata.jpg', '2022-04-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(3, 'amisha', 'hemina@gmail.com', '$2y$10$ljlK2msDW49qc2Twzqypwu5Bf78X25WfxfUfzShnxhrpXNBdbEwdG', '2022-04-13 06:46:42', '2022-04-13 06:46:42'),
(4, 'aaa', 'admin@admin.com', '$2y$10$ebaI1a4N4hBMUKeQ3nb7H.K4Zramk5kHMvF7mDDq3Qw7Ri695tT5K', '2022-04-13 07:02:56', '2022-04-13 07:02:56'),
(5, 'amisha', 'amisha@gmail.com', '$2y$10$uakR/rhR2LRFmaSPF0S7PugYqTMHHlk2cI2HGoczuJuK5EgnkcBVW', '2022-04-14 06:41:01', '2022-04-14 06:41:01'),
(8, 'twinkle', 'twinkle@gmail.com', '$2y$10$C7JmbTIDagkd2JVvQmif6eaboCb.ydY.IFLQ7AN1Z3028kPF6887a', '2022-04-15 05:29:26', '2022-04-15 05:29:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
