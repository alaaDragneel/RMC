-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2016 at 11:53 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rms`
--
CREATE DATABASE IF NOT EXISTS `rms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rms`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` int(11) NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `title`, `description`, `status`, `img`, `rate`, `customer_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'Distinctio libero perferendis omnis pariatur minima.', 'Rerum omnis id qui dolore cumque voluptate rerum. Amet non qui maiores quod explicabo ipsa sunt.', 0, 'http://lorempixel.com/640/480/?81337', 1, 7, 5, '2016-09-09 10:41:40', '2016-09-09 10:41:40'),
(2, 'Vitae tempora dolorem omnis aspernatur nemo corrupti.', 'Saepe soluta quia fugit officiis. Et sed deleniti assumenda laborum quas dolor. Sed magni qui similique adipisci ipsam repellendus ut ut. Iusto error rerum placeat et eveniet numquam omnis amet.', 0, 'http://lorempixel.com/640/480/?39728', 1, 7, 2, '2016-09-09 10:41:41', '2016-09-09 10:41:41'),
(3, 'Ab ullam sed perferendis error.', 'Cum dolore animi iste beatae. Illum qui voluptas dignissimos et libero. Dicta earum quos qui dolore quidem qui. Et soluta saepe necessitatibus. Doloremque facilis est atque optio.', 1, 'http://lorempixel.com/640/480/?37675', 2, 1, 2, '2016-09-09 10:41:41', '2016-09-09 10:41:41'),
(4, 'Atque rerum quas ab earum libero et pariatur.', 'Dignissimos qui totam eum eum. Omnis dolores fuga cupiditate qui sed perferendis eius. Animi et maxime possimus at dolores. Corrupti quia accusamus sit ea ratione.', 0, 'http://lorempixel.com/640/480/?41773', 3, 8, 3, '2016-09-09 10:41:41', '2016-09-09 10:41:41'),
(5, 'Praesentium velit ut velit ad non magnam cumque.', 'Dolorem eos neque sit. Aut sint iste occaecati hic qui mollitia mollitia.', 1, 'http://lorempixel.com/640/480/?38117', 3, 6, 1, '2016-09-09 10:41:41', '2016-09-09 10:41:41'),
(6, 'Qui sed sed vitae dolorum voluptatem quidem.', 'Error id et ullam est. Aut iste placeat aut quia at qui ipsa. In voluptas ratione distinctio quia quam fuga aut.', 1, 'http://lorempixel.com/640/480/?46029', 4, 5, 1, '2016-09-09 10:41:41', '2016-09-09 10:41:41'),
(7, 'Qui ut et veniam fuga.', 'Dolorem dolores aut pariatur. Aut quo ut excepturi. Ut libero consequatur eveniet mollitia. Tenetur nam optio facere et quibusdam ab excepturi.', 0, 'http://lorempixel.com/640/480/?26889', 5, 9, 10, '2016-09-09 10:41:41', '2016-09-09 10:41:41'),
(8, 'Dicta quo similique et nesciunt porro officia fugiat.', 'Totam hic fuga veniam. Nesciunt qui corporis quidem consequatur hic. In veritatis est sapiente illum.', 1, 'http://lorempixel.com/640/480/?39200', 5, 6, 4, '2016-09-09 10:41:41', '2016-09-09 10:41:41'),
(9, 'Modi tempora excepturi repudiandae aliquam iure.', 'Quis minus id ducimus. Non in sunt qui nemo ea sunt modi. Temporibus placeat aut necessitatibus ut ea quidem dolorem.', 0, 'http://lorempixel.com/640/480/?38106', 1, 2, 8, '2016-09-09 10:41:41', '2016-09-09 10:41:41'),
(10, 'Et qui incidunt iste voluptatem.', 'Ut est dolorem deleniti et nam voluptas enim. Dolorum qui illo optio fugit. Molestiae quod iure quo rerum sint officiis facere.', 0, 'http://lorempixel.com/640/480/?25354', 5, 4, 5, '2016-09-09 10:41:41', '2016-09-09 10:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `address`, `city`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Roderick Hirthe', 'buckridge.pauline@example.ne', '$2y$10$IaapKtn3MQI2s3XMNdWShO7YEsfZ.sKYeakl/fmq8oCrKIWysq1fm', '297 Nina Plains Apt. 198\nEmmanuelleton, MA 52959-8136', 'North Yadira', '+7207906122655', '2016-09-09 10:41:17', '2016-09-09 10:41:17'),
(2, 'Jeff Schimmel', 'magnus.monahan@example.net', '$2y$10$AsqP9.rP6N0V7FxtbewtsedEVtRTRKUayNzIP05TqV0LJrrwK5kmO', '70767 Celine Mountains Apt. 774\nWest Giovani, ID 37184-9715', 'Chadbury', '+5344753005836', '2016-09-09 10:41:17', '2016-09-09 10:41:17'),
(3, 'Miss Marisol Johns III', 'enid.lang@example.com', '$2y$10$HL8fLuec.8d.GkTlksLX5OVdfDYEFTkxd5nNswdegLwTsviC/5pne', '5044 Sipes Forge Suite 151\nLake Eusebioside, NV 90183-5405', 'Lednerton', '+1581543055034', '2016-09-09 10:41:17', '2016-09-09 10:41:17'),
(4, 'Chyna Marvin III', 'ullrich.madalyn@example.org', '$2y$10$x9OMrJ2lDziTfDKA/0K.qOijwq4IXSiVshuhWy7ci1YyaZUZzxwiC', '492 Wisoky Stravenue Suite 391\nPort Libby, AR 79002', 'South Alexa', '+5922918066134', '2016-09-09 10:41:17', '2016-09-09 10:41:17'),
(5, 'Ryley Towne', 'murazik.deborah@example.org', '$2y$10$/uO5wk.fqCR7SSJ65VO8uOCxaImCFVjcRAiAGgHLWS8l3FZ/qFTE.', '2524 Kunde Junction Suite 807\nKayceetown, OK 84331-5806', 'Calistachester', '+4243411034310', '2016-09-09 10:41:17', '2016-09-09 10:41:17'),
(6, 'Dr. Audrey Cole III', 'nbruen@example.com', '$2y$10$7EMgQDBtpy3WmP/RTWw64eazpL67L.RvRhTK9pXHaTWFCaqwwNI8y', '493 Nash Fork Suite 514\nSouth Jamal, TN 76612-5177', 'North Romainetown', '+9908968932674', '2016-09-09 10:41:18', '2016-09-09 10:41:18'),
(7, 'Lorenza Cremin', 'bartell.arno@example.org', '$2y$10$8xQzvUDVxddF6gkx/txEqO7tqlEWoVL4SgEVdPc.QEQBhK0cbJQ02', '99713 Lemke Island\nNew Winston, AL 90737', 'Aliciaville', '+9064485665135', '2016-09-09 10:41:18', '2016-09-09 10:41:18'),
(8, 'Juwan Koelpin', 'spencer.tito@example.com', '$2y$10$KNVJUDi3ZZj0X5ejEp6O6eWWtBF0g.uBJXb0ZDQCrhJNrw0fGXFAq', '657 Jakubowski Junction Apt. 640\nFredyside, OR 22773', 'Annabelchester', '+7023616037008', '2016-09-09 10:41:18', '2016-09-09 10:41:18'),
(9, 'Luz McGlynn', 'pnicolas@example.org', '$2y$10$TcuwTft5YIHbmXMwy1p2kesn3l64o2rTva32ZN/GXbd19Qm/HRAxK', '5582 Leilani Heights Suite 004\nManteside, MS 33041-4342', 'East Lysanne', '+4664739987012', '2016-09-09 10:41:18', '2016-09-09 10:41:18'),
(10, 'Mr. Ahmed Gottlieb PhD', 'raynor.rodolfo@example.net', '$2y$10$RChyv96YjDBbsVqb6h37Cuzjr.2ohLdFfNy0LMfnZyrN/hrnHV.82', '43487 Joe Isle Apt. 851\nGraciechester, NV 97889-7371', 'Lake Leann', '+7400892256563', '2016-09-09 10:41:18', '2016-09-09 10:41:18');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `price`, `description`, `status`, `img`, `user_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(2, 'check the first update', '170.53', 'Adipisci perferendis eius rem. Aut nulla esse eum sit ipsam non. Esse quia perspiciatis repudiandae blanditiis earum sunt et. Aspernatur adipisci recusandae fuga porro.aaaaaaaaaaaaaaaaaaa', 1, '16-09-11-09-03-58_ec63d6ec92ee283426cfcdf8c7231c1ada776113.jpg', 2, 8, '2016-09-10 13:23:07', '2016-09-11 07:03:58'),
(3, 'Accusamus eligendi facere inventore et odit quo et itaque.', '145.44', 'Nesciunt officia vel tempora rem. Quibusdam quam ipsum nobis aut quas neque et.', 1, '2.jpg', 3, 1, '2016-09-10 13:23:07', '2016-09-10 13:23:07'),
(4, 'Perferendis aut cupiditate blanditiis.', '132.74', 'Dolorum est non saepe. Incidunt vero beatae earum sit sed. Ducimus amet iste aperiam vel magnam sit odio.', 0, '3.jpg', 3, 10, '2016-09-10 13:23:07', '2016-09-10 13:23:07'),
(5, 'Animi aut accusamus fugiat nemo asperiores.', '93.04', 'Ex hic aut non dolorum corrupti id. Eius officiis voluptates optio deserunt praesentium sunt quas. Possimus et itaque quis dicta odit assumenda. Doloribus ab eaque est magnam amet accusamus et.', 0, '4.jpg', 6, 2, '2016-09-10 13:23:08', '2016-09-10 13:23:08'),
(6, 'Sit autem libero perspiciatis quod voluptatem quis eos.', '44.54', 'Dolor cumque ratione dolore et inventore qui. Repellat aut vel nulla. Rerum neque nihil possimus et voluptas nulla rerum.', 0, '5.jpg', 3, 1, '2016-09-10 13:23:08', '2016-09-10 13:23:08'),
(7, 'Sint est aut explicabo omnis numquam sit.', '91.00', 'Et aspernatur fugit recusandae voluptatum ut exercitationem culpa. Dolorem voluptas explicabo rerum quasi occaecati assumenda. Sit mollitia minima sed.', 0, '6.jpg', 4, 6, '2016-09-10 13:23:08', '2016-09-10 13:23:08'),
(9, 'Sequi qui enim maiores vel.', '174.69', 'Est qui consequuntur voluptatem dolorem voluptatem vel optio. Eveniet sunt accusamus inventore ullam et. Inventore ea inventore est neque.', 0, '8.jpg', 7, 8, '2016-09-10 13:23:08', '2016-09-10 13:23:08'),
(10, 'Distinctio deserunt natus enim sed et.', '116.62', 'Ipsum doloremque vitae dolores. Fugit consequatur nihil et eum consequatur.', 0, '9.png', 1, 5, '2016-09-10 13:23:08', '2016-09-10 13:23:08'),
(11, 'Dolorem cumque neque aut perferendis aliquid.', '152.65', 'Impedit ut molestiae enim cumque sint. Veritatis rerum quas et in vel. Aut repudiandae expedita iusto sapiente dicta impedit.', 1, '10.jpg', 2, 6, '2016-09-10 13:23:08', '2016-09-10 13:23:08'),
(12, 'test new item', '120.10', 'test new item here test new item here test new item heretest new item heretest new item heretest new item heretest new item heretest new item heretest new item here', 0, '16-09-11-08-23-45_63446ff7be5224aace3e98fab6f0b74713e84dce.jpg', 11, 3, '2016-09-11 06:23:45', '2016-09-11 06:23:45'),
(13, 'تجربه جديده', '150.12', 'التجربه الجديده تبدا الان', 1, 'defult.jpg', 11, 1, '2016-09-11 06:42:07', '2016-09-11 06:42:07'),
(14, 'te', '200.15', 'the new test start now', 0, '16-09-11-08-43-47_7bceb24ed92a001eb33eabc26768328bbab3c7ab.jpg', 11, 2, '2016-09-11 06:43:47', '2016-09-11 06:43:47'),
(15, 'please work', '320.15', 'please work please work please work please work v please work v v please workplease workplease workplease workplease workplease workplease workplease workplease workplease work', 1, '16-09-11-08-59-18_69a547acfd7f24e0276e38c6471d87cca3be9341.jpg', 11, 5, '2016-09-11 06:59:18', '2016-09-11 06:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `title`, `description`, `status`, `img`, `price`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'first meal update', 'Update meal', 1, '16-09-13-09-16-52_df06ee05ec09914594f378d0b4041675cf5279c5.jpg', '175.01', 5, '2016-09-09 10:41:02', '2016-09-13 07:16:52'),
(3, 'Reprehenderit numquam modi incidunt est sapiente nisi.', 'Vero quo laborum inventore neque. Non nihil id assumenda alias.', 1, '3.jpg', '200.05', 1, '2016-09-09 10:41:02', '2016-09-09 10:41:02'),
(5, 'Aut aut autem ratione modi enim exercitationem quod.', 'Tempore magni dolor officiis sunt consequuntur id. Sequi repudiandae ut quod quia quaerat ut quibusdam.', 0, '5.jpg', '90.31', 4, '2016-09-09 10:41:02', '2016-09-09 10:41:02'),
(6, 'Dignissimos id laudantium incidunt molestiae molestias vel.', 'Doloremque adipisci ipsum voluptatem nulla nobis. Laudantium laboriosam asperiores ut eveniet. Cumque ex consequatur sit dolore cumque libero. Ut quibusdam placeat dolores porro.', 1, '6.jpg', '17.15', 5, '2016-09-09 10:41:02', '2016-09-09 10:41:02'),
(7, 'Doloribus qui tenetur et aut ut maxime tempora.', 'Nostrum vero delectus commodi quis. Earum velit voluptatibus dolorem repudiandae magnam ipsam aut. Error sequi sequi maxime incidunt. Libero atque esse alias hic.', 0, '1.jpg', '85.17', 5, '2016-09-09 10:41:02', '2016-09-09 10:41:02'),
(8, 'Magnam id deserunt est quas tenetur.', 'Laborum cumque inventore voluptatum quidem reiciendis commodi. Beatae rerum est neque quo. Ratione ullam rerum deserunt accusantium labore. Voluptates ipsum recusandae nihil laudantium et.', 1, '3.jpg', '148.75', 1, '2016-09-09 10:41:02', '2016-09-09 10:41:02'),
(9, 'Et ad aut et necessitatibus minus.', 'Atque voluptates praesentium provident quae dolorem recusandae. Ea qui pariatur ut at est consequatur tempore ut. Quis corrupti sit et delectus. Est natus rerum vel autem molestiae repudiandae omnis.', 1, '6.jpg', '59.80', 5, '2016-09-09 10:41:02', '2016-09-09 10:41:02'),
(10, 'Similique autem ratione dicta modi vel et veniam.', 'Natus amet culpa est id omnis doloribus. Provident voluptas voluptate velit nesciunt sapiente. Ea doloribus tenetur quibusdam et.', 1, '2.jpg', '36.71', 2, '2016-09-09 10:41:02', '2016-09-09 10:41:02'),
(11, 'Lunch Meal', 'write the description', 15, '16-09-13-08-56-41_ec63d6ec92ee283426cfcdf8c7231c1ada776113.jpg', '12.56', 11, '2016-09-13 06:56:41', '2016-09-13 06:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `meal_item`
--

CREATE TABLE `meal_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `discount` int(11) NOT NULL,
  `meal_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meal_item`
--

INSERT INTO `meal_item` (`id`, `discount`, `meal_id`, `item_id`, `created_at`, `updated_at`) VALUES
(6, 82, 5, 2, '2016-09-09 10:45:31', '2016-09-09 10:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `type`, `description`, `status`, `img`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Metas', 'Food', 'Sed omnis ex quia ipsam. Aut sed et voluptatem cupiditate earum. Aliquam ea beatae sed tempora asperiores.', 1, '1.jpg', 5, '2016-09-10 13:20:26', '2016-09-11 06:14:10'),
(2, 'Potato', 'Food', 'Velit voluptas aut qui et dolorem sed aut laudantium. Magnam in sunt praesentium officia reprehenderit ut voluptas. Et maxime dolorem repellendus debitis minus nihil voluptates ut.', 0, '2.jpg', 3, '2016-09-10 13:20:26', '2016-09-11 06:14:30'),
(3, 'Fish', 'Food', 'Est neque ut sit id minus at. Qui neque molestiae eos earum rerum. Ad sint aut aut iure est voluptatem magni. Nihil id fuga dolore minima eum.', 1, '3.jpg', 1, '2016-09-10 13:20:26', '2016-09-11 06:14:48'),
(4, 'Mango', 'ColdDrinks', 'Explicabo aut aut quo fugiat laborum. Quam quo voluptate harum voluptatum iusto. Doloremque illo dolorem facilis aut sed. Odio cum suscipit laborum autem exercitationem eveniet.', 1, '4.jpg', 3, '2016-09-10 13:20:27', '2016-09-11 06:15:43'),
(5, 'Orange', 'ColdDrinks', 'Aut ut fugiat blanditiis porro quia fugiat reprehenderit tenetur. Deleniti alias repellendus qui animi. Qui quo eos velit aut eos.', 1, '5.jpg', 3, '2016-09-10 13:20:27', '2016-09-11 06:15:58'),
(6, 'Coffe', 'Drinks', 'Sed voluptatem excepturi modi est corrupti. Ratione blanditiis aut et libero animi neque velit. Dolor doloremque saepe ut repellat non occaecati.', 0, '6.jpg', 3, '2016-09-10 13:20:27', '2016-09-11 06:16:12'),
(7, 'Rice', 'Food', 'Quidem voluptatum libero blanditiis unde eum. Porro non odio dolorum sequi corporis nisi. Ullam quae temporibus soluta nostrum ullam est. Quisquam ut nam laborum est eligendi dolores.', 0, '7.jpg', 3, '2016-09-10 13:20:27', '2016-09-11 06:17:16'),
(8, 'MEats Acbanol', 'Food', 'Eius voluptatem dolorum praesentium velit nam veniam delectus. Quo voluptates laborum nisi facere fugiat eaque atque. Omnis modi culpa magni numquam.', 1, '8.jpg', 2, '2016-09-10 13:20:27', '2016-09-11 06:18:13'),
(9, 'Juice', 'Drinks', 'Aspernatur quas ut rerum velit consectetur minus est rerum. Omnis cupiditate ut sunt ea. Voluptas quia non atque iste voluptas. Quibusdam ipsum quasi quaerat in natus ex et.', 1, '9.png', 2, '2016-09-10 13:20:27', '2016-09-11 06:18:32'),
(10, 'Sticks', 'Food', 'Nesciunt sapiente dolorum dolores voluptatem magnam fugiat. Repellat eum distinctio id magni tempora. Tempora accusantium dolorem sit est. Voluptate soluta dignissimos nihil dolor placeat.', 0, '10.jpg', 2, '2016-09-10 13:20:27', '2016-09-11 06:18:47'),
(11, 'new menu ', 'ColdDrinks', 'new menu new menu new menu new menu new menu ', 0, '16-09-11-09-12-56_87529e4e74fbe84672a9c67500efaa0c284f1ba3.jpg', 11, '2016-09-11 07:12:56', '2016-09-11 07:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_09_090331_create_menus_table', 1),
('2016_09_09_090335_create_items_table', 1),
('2016_09_09_093930_create_meals_table', 1),
('2016_09_09_094512_create_customers_table', 1),
('2016_09_09_094745_create_orders_table', 1),
('2016_09_09_095347_create_comments_table', 1),
('2016_09_09_100557_create_meal_item_table', 1),
('2016_09_09_100834_create_order_item_table', 1),
('2016_09_09_100902_create_order_meal_table', 1),
('2016_09_09_101022_create_order_user_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `cachIn` decimal(8,2) NOT NULL,
  `payment` decimal(8,2) NOT NULL,
  `change` decimal(8,2) NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total`, `status`, `cachIn`, `payment`, `change`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, '57.96', 0, '61.19', '142.04', '202.86', 5, '2016-09-09 10:41:29', '2016-09-09 10:41:29'),
(2, '118.64', 1, '100.90', '54.29', '21.00', 2, '2016-09-09 10:41:29', '2016-09-09 10:41:29'),
(3, '76.40', 0, '190.10', '13.00', '38.94', 5, '2016-09-09 10:41:29', '2016-09-09 10:41:29'),
(4, '150.40', 1, '47.00', '144.75', '19.31', 5, '2016-09-09 10:41:29', '2016-09-09 10:41:29'),
(5, '84.00', 1, '180.00', '57.00', '203.16', 4, '2016-09-09 10:41:29', '2016-09-09 10:41:29'),
(6, '126.97', 1, '161.03', '186.30', '52.00', 4, '2016-09-09 10:41:29', '2016-09-09 10:41:29'),
(7, '201.00', 1, '169.09', '103.14', '99.10', 4, '2016-09-09 10:41:29', '2016-09-09 10:41:29'),
(8, '155.98', 1, '27.27', '136.37', '204.52', 3, '2016-09-09 10:41:29', '2016-09-09 10:41:29'),
(9, '163.99', 0, '161.67', '26.61', '152.60', 2, '2016-09-09 10:41:29', '2016-09-09 10:41:29'),
(10, '176.89', 1, '46.92', '93.10', '163.00', 5, '2016-09-09 10:41:29', '2016-09-09 10:41:29'),
(11, '29.99', 1, '23.31', '93.09', '151.92', NULL, '2016-09-09 10:58:54', '2016-09-09 10:58:54'),
(12, '164.95', 0, '170.13', '150.21', '121.68', NULL, '2016-09-09 10:58:54', '2016-09-09 10:58:54'),
(13, '124.11', 1, '71.79', '155.33', '50.60', NULL, '2016-09-09 10:58:54', '2016-09-09 10:58:54'),
(14, '167.00', 1, '83.06', '177.80', '55.48', NULL, '2016-09-09 10:58:54', '2016-09-09 10:58:54'),
(15, '11.55', 1, '163.59', '203.14', '168.01', NULL, '2016-09-09 10:58:54', '2016-09-09 10:58:54'),
(16, '46.90', 0, '154.43', '152.24', '174.34', NULL, '2016-09-09 10:58:54', '2016-09-09 10:58:54'),
(17, '32.31', 0, '121.48', '170.11', '74.83', NULL, '2016-09-09 10:58:54', '2016-09-09 10:58:54'),
(18, '105.96', 0, '48.30', '188.68', '10.67', NULL, '2016-09-09 10:58:54', '2016-09-09 10:58:54'),
(19, '181.56', 0, '195.18', '195.50', '202.77', NULL, '2016-09-09 10:58:54', '2016-09-09 10:58:54'),
(20, '106.54', 1, '150.70', '204.96', '50.80', NULL, '2016-09-09 10:58:54', '2016-09-09 10:58:54'),
(21, '22.93', 1, '166.56', '82.82', '80.96', NULL, '2016-09-09 11:03:19', '2016-09-09 11:03:19'),
(22, '111.04', 1, '192.19', '48.34', '26.90', NULL, '2016-09-09 11:03:19', '2016-09-09 11:03:19'),
(23, '171.71', 1, '65.82', '95.56', '141.78', NULL, '2016-09-09 11:03:19', '2016-09-09 11:03:19'),
(24, '32.44', 0, '131.00', '122.57', '13.29', NULL, '2016-09-09 11:03:19', '2016-09-09 11:03:19'),
(25, '136.54', 1, '154.01', '124.44', '47.03', NULL, '2016-09-09 11:03:19', '2016-09-09 11:03:19'),
(26, '74.33', 1, '189.95', '12.37', '185.35', NULL, '2016-09-09 11:03:19', '2016-09-09 11:03:19'),
(27, '13.92', 1, '190.43', '16.99', '190.25', NULL, '2016-09-09 11:03:20', '2016-09-09 11:03:20'),
(28, '82.11', 0, '178.35', '13.77', '156.44', NULL, '2016-09-09 11:03:20', '2016-09-09 11:03:20'),
(29, '201.30', 1, '147.17', '24.26', '151.25', NULL, '2016-09-09 11:03:20', '2016-09-09 11:03:20'),
(30, '200.80', 1, '163.85', '169.41', '166.19', NULL, '2016-09-09 11:03:20', '2016-09-09 11:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `item_id`, `order_id`, `created_at`, `updated_at`) VALUES
(2, 2, 3, '2016-09-09 10:52:23', '2016-09-09 10:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `order_meal`
--

CREATE TABLE `order_meal` (
  `id` int(10) UNSIGNED NOT NULL,
  `meal_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_meal`
--

INSERT INTO `order_meal` (`id`, `meal_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 3, 5, '2016-09-09 10:56:01', '2016-09-09 10:56:01'),
(2, 5, 10, '2016-09-09 10:56:01', '2016-09-09 10:56:01'),
(3, 8, 5, '2016-09-09 10:56:01', '2016-09-09 10:56:01'),
(5, 7, 6, '2016-09-09 10:56:01', '2016-09-09 10:56:01'),
(7, 8, 1, '2016-09-09 10:56:02', '2016-09-09 10:56:02'),
(8, 8, 10, '2016-09-09 10:56:02', '2016-09-09 10:56:02'),
(9, 5, 4, '2016-09-09 10:56:02', '2016-09-09 10:56:02'),
(10, 3, 1, '2016-09-09 10:56:02', '2016-09-09 10:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `order_user`
--

CREATE TABLE `order_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_user`
--

INSERT INTO `order_user` (`id`, `user_id`, `order_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 9, 8, 'consequatur', '2016-09-09 11:03:27', '2016-09-09 11:03:27'),
(2, 8, 8, 'laboriosam', '2016-09-09 11:03:27', '2016-09-09 11:03:27'),
(3, 9, 7, 'optio', '2016-09-09 11:03:27', '2016-09-09 11:03:27'),
(4, 1, 9, 'ut', '2016-09-09 11:03:27', '2016-09-09 11:03:27'),
(5, 1, 5, 'enim', '2016-09-09 11:03:27', '2016-09-09 11:03:27'),
(6, 6, 8, 'laboriosam', '2016-09-09 11:03:27', '2016-09-09 11:03:27'),
(7, 5, 6, 'incidunt', '2016-09-09 11:03:27', '2016-09-09 11:03:27'),
(8, 10, 2, 'et', '2016-09-09 11:03:27', '2016-09-09 11:03:27'),
(9, 7, 8, 'dolor', '2016-09-09 11:03:27', '2016-09-09 11:03:27'),
(10, 3, 5, 'id', '2016-09-09 11:03:27', '2016-09-09 11:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mathias Hermann', 'gfeil@example.net', '$2y$10$Px9tLLJz6UVyPSRA8k6NMOAS10r7xUgOUj4U/6RAcFHjRmllqjVKy', 'nam', 'Ib16djeDUP', '2016-09-09 10:40:27', '2016-09-09 10:40:27'),
(2, 'Jules Mills', 'deborah.schaefer@example.net', '$2y$10$HFcf7hz/MIOZ6DyDtWK0k.HScWVbhrIQg/atfnzJaNXC9A87HaNjS', 'non', 'DqYcePm5bg', '2016-09-09 10:40:27', '2016-09-09 10:40:27'),
(3, 'Jayden Legros III', 'dooley.harmon@example.org', '$2y$10$kDrlo2j0NmvD/Od0AUeSDuwW4HIdUqsm/R0mZj9svOZFQOOadWyDe', 'et', 'ThJEuHx45d', '2016-09-09 10:40:27', '2016-09-09 10:40:27'),
(4, 'Reanna Romaguera', 'alfredo28@example.net', '$2y$10$g/Yrv.sO9kPAYOygqd/McehxxlsbC.OiZNHMF21vAoOKPGbrm991S', 'explicabo', 'use214KcI5', '2016-09-09 10:40:27', '2016-09-09 10:40:27'),
(5, 'Edythe Ruecker', 'charity62@example.org', '$2y$10$IdlwEhpMwvdHxXApOED4QuO/oqCKJo02coqGryc8sbvMz9KCKNTZi', 'totam', 'cIztYCdmYX', '2016-09-09 10:40:28', '2016-09-09 10:40:28'),
(6, 'Cierra Padberg', 'michele.heller@example.com', '$2y$10$Ns/iIMP./ZHe9FyNGqSscukWZBDsZMDpqQq7I2862wqTbce8tdz.W', 'ad', '7tDhPfDl2t', '2016-09-09 10:40:28', '2016-09-09 10:40:28'),
(7, 'Candida Schulist', 'martina.corkery@example.org', '$2y$10$fUGF0Ec6xyP9.NLz.3afO.4urlughFldU4AtCRgwItDycBqIT4upS', 'perspiciatis', 'FhiW4elCvE', '2016-09-09 10:40:28', '2016-09-09 10:40:28'),
(8, 'Prof. Verlie Shanahan', 'wendell.reichel@example.net', '$2y$10$4kjE/Q.zAqn90/efVUKhte8AZQtY9WJNdU7cCiOZM1JNxw06F8t3i', 'hic', '0kp9wAIuSM', '2016-09-09 10:40:28', '2016-09-09 10:40:28'),
(9, 'Joannie Will', 'wkuhn@example.org', '$2y$10$c7jg7WgKXG5BvCYat8PuPODT/Wc2UMjF4Ox1Viv3u3FzqDpYc8L36', 'quam', 'CdxkuPbJgh', '2016-09-09 10:40:28', '2016-09-09 10:40:28'),
(10, 'Brandi Bogisich', 'hosinski@example.net', '$2y$10$NhWKHKO.BiYV6F/J0te6LuK.Poj3M1aXulu.I50ByMMyIT93YwEEK', 'quia', 'rwukIgePP9', '2016-09-09 10:40:28', '2016-09-09 10:40:28'),
(11, 'alaa Dragneel', 'alaa_dragneel@yahoo.com', '$2y$10$i9yAfk9DFaSG/8UGn3uJ8.KqG/4a.zQOqBr0ggcL2T0qGem4oEDzi', '2', 'VGoMrKnCZp2raVVXyBovcUJiEauNxpBYaHAonZi4Fv6Gxit8MeprUdyF3HwR', '2016-09-10 04:37:43', '2016-09-14 06:56:57'),
(13, 'sasuke', 'alaa@alaaa.com', '$2y$10$iDpWg0iXRg.dPnb5Ftuq1.rX0W9/znfl3wqAiQi8QCwgSRI2vf4Pm', '1', 'JXqqrWAtMlyCloeiqIozG16dxIBhgGMu8M8aV4nLfxxhBvcIz5cmZ6ctSwvn', '2016-09-14 05:46:16', '2016-09-14 06:47:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_customer_id_foreign` (`customer_id`),
  ADD KEY `comments_order_id_foreign` (`order_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `items_title_unique` (`title`),
  ADD KEY `user_item` (`user_id`),
  ADD KEY `item_menu` (`menu_id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meals_title_unique` (`title`),
  ADD KEY `meals_user_id_foreign` (`user_id`);

--
-- Indexes for table `meal_item`
--
ALTER TABLE `meal_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meal_item_item_id_foreign` (`item_id`),
  ADD KEY `meal_item_meal_id_foreign` (`meal_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_title_unique` (`title`),
  ADD KEY `menus_user_id_foreign` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_item_item_id_foreign` (`item_id`),
  ADD KEY `order_item_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_meal`
--
ALTER TABLE `order_meal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_meal_meal_id_foreign` (`meal_id`),
  ADD KEY `order_meal_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_user`
--
ALTER TABLE `order_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_user_order_id_foreign` (`order_id`),
  ADD KEY `order_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `meal_item`
--
ALTER TABLE `meal_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `order_meal`
--
ALTER TABLE `order_meal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `order_user`
--
ALTER TABLE `order_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `item_menu` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_item` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `meals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meal_item`
--
ALTER TABLE `meal_item`
  ADD CONSTRAINT `meal_item_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meal_item_meal_id_foreign` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_item_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_meal`
--
ALTER TABLE `order_meal`
  ADD CONSTRAINT `order_meal_meal_id_foreign` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_meal_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_user`
--
ALTER TABLE `order_user`
  ADD CONSTRAINT `order_user_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
