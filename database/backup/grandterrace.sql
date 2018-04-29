-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2018 at 01:29 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grandterrace`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name_en` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name_ru` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `position`, `name_en`, `name_ru`) VALUES
(16, 'Salatlar', '2018-04-23 13:19:45', '2018-04-28 17:14:54', 2, 'Salads', 'Салаты'),
(17, 'Şorbalar', '2018-04-23 13:23:32', '2018-04-28 17:14:54', 1, 'Soups', 'Супы'),
(18, 'Başlanğıclar', '2018-04-23 13:25:19', '2018-04-28 07:03:00', 3, 'Appetizers and snacks', 'Закуски'),
(19, 'Pasta', '2018-04-23 13:27:16', '2018-04-24 06:03:43', 5, 'Pasta', 'Паста'),
(20, 'Pizza', '2018-04-23 13:27:53', '2018-04-27 20:46:25', 4, 'Pizza', 'Пицца'),
(21, 'Əsas yeməklər', '2018-04-23 13:33:10', '2018-04-27 20:46:25', 6, 'Main course', 'Основные блюда'),
(22, 'Qrildə baliq', '2018-04-23 13:35:56', '2018-04-26 10:16:36', 7, 'Grilled fish', 'Рыба'),
(23, 'Steyklər', '2018-04-23 13:37:41', '2018-04-28 14:53:26', 8, 'Steaks', 'Мясо'),
(24, 'Qarnirlər', '2018-04-23 13:42:58', '2018-04-26 10:17:09', 9, 'Side dishes', 'Гарниры'),
(25, 'Desertlər', '2018-04-23 13:43:56', '2018-04-24 06:00:43', 10, 'Desserts', 'Дессерты'),
(26, 'Rollar', '2018-04-23 13:44:46', '2018-04-27 20:46:25', 11, 'Rolls', 'Роллы'),
(27, 'Isti rollar', '2018-04-23 13:46:43', '2018-04-27 20:46:25', 12, 'Hot rolls', 'Горячие роллы'),
(28, 'Nudl', '2018-04-23 13:47:39', '2018-04-24 06:00:43', 13, 'Noodl', 'Нудл'),
(29, 'Suşi seti', '2018-04-23 13:49:02', '2018-04-26 10:18:18', 14, 'Sushi set', 'Набор суши'),
(30, 'Steyk souslar', '2018-04-28 17:21:10', '2018-04-28 17:21:10', 0, 'Steak souses', 'Стейк соусы');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `warning` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `composition` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name_ru` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description_en` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_ru` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warning_en` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warning_ru` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `composition_en` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `composition_ru` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `category_id`, `price`, `warning`, `composition`, `position`, `created_at`, `updated_at`, `name_en`, `name_ru`, `description_en`, `description_ru`, `warning_en`, `warning_ru`, `composition_en`, `composition_ru`) VALUES
(4, 'Yunan salatı', 'Doğranmış yerli pomidor və xiyar, zeytun, ağ pendır, qırmızı soğan, göyərti, zeytun yağı', 16, '5.00', '', '', 12, '2018-04-25 05:43:14', '2018-04-28 11:27:44', 'Greek salad', 'Греческий салат', 'Sliced local tomato and cucumber, olives, white cheese, red onion, greens, olive oile and lemon souse', 'Нарезанные местные помидоры и огурцы, оливки, белый сыр, красный лук, зелень,   оливковое масло и лимонный сок', '', '', '', ''),
(5, 'Şefin supu', 'Xüsusilə seçilmiş inqridientlerdən günlük hazırlanmış şorba', 17, '6.00', 'SPICY', '', 0, '2018-04-27 20:42:29', '2018-04-27 20:42:29', 'Chef`s soup', 'Суп от шефа', 'Specially picked ingredients for daily soup', 'Суп дня из специально отобранных ингредиентов', 'SPICY', 'SPICY', '', ''),
(6, 'Toyuq supu', 'Təzə qarışıq tərəvəzlər, xırda makaron', 17, '7.50', 'ACILI', '', 0, '2018-04-28 06:55:53', '2018-04-28 09:55:04', 'Chicken', 'Куриный', 'Freshly chopped vegetables and pasta', 'Суп из свеженарезанных овощей и макаронов', 'SPICY', 'ОСТРЫЙ', '', ''),
(7, 'Qaymaqlı göbələk  şorbası', '', 17, '5.00', '', '', 0, '2018-04-28 07:13:04', '2018-04-28 09:55:28', 'Creamy mushroom', 'Грибной', '', '', '', 'HOT', '', ''),
(8, 'Mərcimək', '', 17, '4.00', '', '', 0, '2018-04-28 07:22:16', '2018-04-28 09:55:51', 'Lentil', 'Чечевичный', '', '', 'HOT', 'ГОРЯЧИЙ', '', ''),
(9, 'Salat keçi pendiri ilə', 'Qızardılmış keçi pendiri, qarışıq yaşıl salat ilə', 16, '9.00', '', '', 2, '2018-04-28 07:31:09', '2018-04-28 11:27:44', 'Goat cheese salad', 'Салат из козьего сыра', 'Fried goat cheese with mixed green salad', 'Жареный козий сыр co смешанным зеленым салатом', 'SALADS', 'САЛАТЫ', '', ''),
(10, 'Tuna salat', 'Tuna balığı, ənginar, yumurta, kartof, pomidor, xiyar və kahı ilə', 16, '15.00', 'YUMURTA', '', 3, '2018-04-28 07:36:45', '2018-04-28 15:23:32', 'Tuna salad', 'Салат из тунца', 'Tuna, artichoke, egg, potato, tomato, cucumber and lettuce', 'Тунец, артишок, яйцо, картофель, помидор, огурец и листья салата', 'EGG', 'ЯЙЦО', '', ''),
(11, 'Sezar salat toyuq ilə', 'Toyuq filesi, kahı, sezar sous, parmezan, xırda pomidor', 16, '10.00', '', '', 4, '2018-04-28 07:40:01', '2018-04-28 11:27:44', 'Caesar salad with chicken', 'Цезарь с курицей', 'Chicken fillet, lettuce, caesar sauce, parmesan, small tomatoes', 'Куриное филе, листья салата, соус цезарь, пармезан, мелкие помидоры', 'SALADS', 'САЛАТЫ', '', ''),
(12, 'Sezar krivet ilə', 'Krivet, kahı, sezar sous, parmezan, xırda pomidor', 16, '15.00', '', '', 5, '2018-04-28 09:30:42', '2018-04-28 11:27:44', 'Caesar with prawns', 'Цезарь с креветками', 'Prawns, lettuce, caesar sauce, parmesan, small tomatoes', 'Креветки, листья салата, соус цезарь, пармезан, мелкие помидоры', 'SALADS', 'САЛАТЫ', '', ''),
(13, 'Sezar hisə verilmış qızıl  balıq ilə', 'Hisə verilmış salmon  balıgı, kahı, sezar sous, parmezan, xırda pomidor', 16, '17.00', '', '', 6, '2018-04-28 09:41:14', '2018-04-28 14:50:21', 'Caesar with smoked salmon', 'Цезарь с копченым лососем', 'Smoked salmon, lettuce, caesar sauce, parmesan, small tomatoes', 'Копченый лосось, листья салата, соус цезарь, пармезан, мелкие помидоры', '', '', '', ''),
(14, 'Krivetli yaşıl salat', '', 16, '13.00', '', '', 7, '2018-04-28 09:45:17', '2018-04-28 11:27:44', 'Green salad with tiger prawns', 'Зеленый салат с тигровыми креветками', '', '', '', '', '', ''),
(15, 'Dəniz məhsul salatı', 'Midyə, kalmar, ahtapot, krivet', 16, '18.00', '', '', 8, '2018-04-28 09:54:20', '2018-04-28 11:27:44', 'Seafood  salad', 'Салат из морепродуктов', 'Mussels, calamari, octopus, tiger prawn', 'Мидии, кальмары, осьминог, тигровые креветки', '', '', '', ''),
(16, 'Ilıq salat toyuq ciyəri və ət ilə', 'Kahı, kartof, xiyar dijon xardalı ilə', 16, '16.00', '', '', 9, '2018-04-28 10:06:59', '2018-04-29 07:39:29', 'Warm salad with chicken liver  and beef', 'Теплый салат с куриной печенью и говядиной', 'Lettuce, potato, cucumber and mustard dijon', 'Листья салата, картофель, огурец и горчица дижон', '', '', '', ''),
(17, 'Pendir tabağı', 'Parmesan, xırda mozarella pendiri, keçi pendiri,  kifli pendir, saçaq pendiri, yerli brinza', 18, '7.00', '', '', 0, '2018-04-28 10:29:12', '2018-04-28 10:32:30', 'Cheese platter', 'Сырная тарелка', 'Parmesan, mozzarella cheese, goat cheese, cheese with mold, cheese pigtail, local cheese', 'Пармезан, сыр моцарелла, козий сыр, сыр с плесенью, сыр косичка, местная брынза', '', '', '', ''),
(19, 'Kapriz salat', 'Mozarella pendiri, pomidor, rukula, balsamik sirkə , pesto sous', 16, '0.00', 'YER FINDIĞI', '', 0, '2018-04-28 13:37:50', '2018-04-28 13:37:50', 'Caprice salad', 'Салат каприз', 'Tomato, arugula, balsamic vinegar and pesto souse', 'Помидор, руккола, бальзамический уксус и песто соус', 'PEANUTS', 'АРАХИС', '', ''),
(20, 'Kapriz steyk', 'Angus can əti, mozarella pendiri, pomidor, pesto sous', 23, '0.00', 'YER FINDIĞI-PESTO SOUS', '', 0, '2018-04-28 15:54:37', '2018-04-28 16:15:55', 'Caprese steak', 'Caprese steak', 'Beef tenderloin, mozzarella cheese, sliced tomato, pesto sous', 'Beef tenderloin, mozzarella cheese, sliced tomato, pesto sous', 'PEA NUTS- PESTO SOUSE', 'PEA NUTS- PESTO SOUSE', '', ''),
(21, 'Ti-bon steyk', 'T səkilli steyk', 23, '0.00', '', '', 0, '2018-04-28 16:11:07', '2018-04-28 16:11:07', 'T-bone', 'T-bone steak', 'T-bone steyk', 'T bone steak', '', '', '', ''),
(22, 'Ribay', 'Angus ribay(can əti)', 23, '0.00', '', '', 0, '2018-04-28 16:35:53', '2018-04-28 16:35:53', 'Rib-eye', 'Рибай стейк', 'Angus rib-eye', 'Ангус рибай стейк', '', '', '', ''),
(23, 'File minyon', 'Doğranmış anqus can əti, badımcan, qabaq, rəngli bibərlə', 23, '0.00', '', '', 0, '2018-04-28 16:44:04', '2018-04-28 16:44:04', 'Fillet mignon', 'Fillet mignon', 'Sliced angus beef tenderloin, eggplant, zucchini, capsicum', 'Sliced angus beef tenderloin, eggplant, zucchini, capsicum', '', '', '', ''),
(24, 'Anqus tenderloin', 'Anqus can əti', 23, '0.00', '', '', 0, '2018-04-28 16:47:13', '2018-04-28 16:47:13', 'Angus tenderloin', 'Angus tenderloin', 'Angus beef tenderloin', 'Angus beef tenderloin', '', '', '', ''),
(25, 'Qarışıq ət tabağı', 'Anqus can əti, quzu qabırğa,  marinə edilmiş toyuq filesi', 23, '0.00', '', '', 0, '2018-04-28 17:11:05', '2018-04-28 17:11:05', 'Mixed meat plate', 'Мясное ассорти', 'Angus beef tenderloin, lamp chops, chicken  marinated breast', 'Говяжья вырезка, ребра ягненка, маринованная куриная грудка', '', '', '', ''),
(26, 'Souslar', 'Nanəli, göbələkli, bibərli, pendirli', 30, '0.00', '', '', 0, '2018-04-28 17:24:59', '2018-04-28 17:24:59', 'Souses', 'Соусы', 'Mint, mushroom, pepper, cheese', 'Mятный, грибной, перцовый, сырный', '', '', '', ''),
(27, 'Qızıl balıq', 'Qrıldə qızardılmış norveç qızıl balığı, lemon sousda', 22, '0.00', '', '', 0, '2018-04-28 17:50:12', '2018-04-28 17:50:12', 'Grilled salmon', 'Grilled salmon', 'Grilled norvegian salmon with lemon souse', 'Grilled norvegian salmon with lemon souse', '', '', '', ''),
(28, 'Levrek', 'Grilldə qızardılmış levrek balığı', 22, '0.00', '', '', 0, '2018-04-28 17:57:37', '2018-04-28 17:57:37', 'Sea bass', 'Морской окунь', 'Grilled sea bass', 'Морской окунь', '', '', '', ''),
(29, 'Cupra', 'Qrıldə qızardılmış çupra balığı', 22, '0.00', '', '', 0, '2018-04-28 18:02:10', '2018-04-28 18:02:10', 'Dorado', 'Карась', 'Grilled dorado', 'Карась', '', '', '', ''),
(30, 'Farel', 'Qrildə qızardılmış farel balığı', 22, '0.00', '', '', 0, '2018-04-28 18:08:29', '2018-04-28 18:08:29', 'Trout', 'Форель', 'Grillled trout', 'Форель', '', '', '', ''),
(31, 'Jumbo krivetlər', 'Qrildə qızardılmış jumbo krivetlər, rəngli bibərlə', 22, '0.00', '', '', 0, '2018-04-28 18:15:09', '2018-04-28 18:15:09', 'Jumbo prawns', 'Гигантские креветки', 'Grilled jumbo prawns, with capsicum', 'Гигантские реветки', '', '', '', ''),
(32, 'Fetuçini karbonara', 'Fetuçini əriştəsi, bekon, parmesan pendiri, qaymaq, yumurta', 19, '0.00', 'DONUZ VE YA HIND QUŞU', '', 0, '2018-04-29 08:04:49', '2018-04-29 08:04:49', 'Fettuccine  carbonara', 'Феттуччини', 'Fettuccine pasta, bacon, parmesan cheese, cream, fried egg', 'Феттуччини', 'BACON OR TURKEY HAM', '', '', ''),
(33, 'Spagetti bolonez', 'Ət qiymə bolonez, parmesan, xırda pomidor', 19, '0.00', '', '', 0, '2018-04-29 08:49:59', '2018-04-29 08:49:59', 'Spaghetti bolognese', 'Спагетти болоньез', 'Minced meat bolognese, parmezan, small tomato', 'Мясной фарш, пармезан, мелкие помидоры', '', '', '', ''),
(34, 'Spagetti bolonez', 'Ət qiymə bolonez, parmesan, xırda pomidor', 19, '0.00', '', '', 0, '2018-04-29 08:49:59', '2018-04-29 08:49:59', 'Spaghetti bolognese', 'Спагетти болоньез', 'Minced meat bolognese, parmezan, small tomato', 'Мясной фарш, пармезан, мелкие помидоры', '', '', '', ''),
(35, 'Penne arrabiata', 'Acılı pomidor souslu makaron', 19, '0.00', 'ACILI', '', 0, '2018-04-29 08:56:49', '2018-04-29 08:56:49', 'Penne arrabiata', 'Пенне аррабиата', 'Penne pasta with spicy tomato sauce', 'Макароны с острым томатным соусом', 'SPICY', 'ОСТРЫЙ', '', ''),
(36, 'Dəniz məhsullu spagetti', 'Dəniz məhsulunun həlimi ilə yoğrulmuş qara vermeşil, midya, kalmar, ahtapot, krivet', 19, '0.00', '', '', 0, '2018-04-29 09:02:13', '2018-04-29 09:02:13', 'Frutti de mari spagetti', 'Спагетти c морепродуктами', 'Black spaghetti mixed in seafood stock , mussel, calamari, octopus, prawns', 'Черная вермишель смешанное в соке морепродуктов, мидии, кальмары, осьминог, креветки', '', '', '', ''),
(37, 'Fettuccine alfreddo', 'Fetuçini əriştə toyuq və qaymaqlı souslu, parmesan pendiri', 19, '0.00', '', '', 0, '2018-04-29 09:12:59', '2018-04-29 09:12:59', 'Fettuccine alfreddo', 'Феттуччини алфреддо', 'Pasta fettuccine with chicken, cream and parmesan', 'Спагетти феттуччини с курицей сливочным соусом и пармезан', '', '', '', ''),
(38, 'Dəniz məhsullu rizotto', 'Italyan orborio düyüsü, qarışıq dəniz məhsulları, midya, kalmar, ahtapot, krivet  ilə', 19, '0.00', '', '', 0, '2018-04-29 09:20:17', '2018-04-29 09:20:17', 'Frutti de mari  risotto', 'Ризотто c морепродуктами', 'Italian rise arborio, mixed seafood, mussel, squid, octopus, prawns', 'Итальянский рис арборио, смешанные морепродукты, мидии, кальмары, осьминог и креветки', '', '', '', ''),
(39, 'Göbələkli rizotto', 'Italiyan orboro düyüsü, şampinyon göbələklə', 19, '0.00', '', '', 0, '2018-04-29 09:28:21', '2018-04-29 09:28:21', 'Mushroom risotto', 'Грибной ризотт', 'Italian orborio rice, shampignon mushrooms', 'Грибной ризотт', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_03_184953_add_role_id_to_users', 1),
(4, '2018_04_03_185139_create_roles_table', 1),
(5, '2018_04_21_143254_create_categories_table', 1),
(6, '2018_04_21_145631_add_column_position_categories', 1),
(7, '2018_04_21_151239_create_photos_table', 1),
(8, '2018_04_21_160721_create_items_table', 1),
(9, '2018_04_21_162815_add_foreign_key_to_items', 1),
(10, '2018_04_21_181724_add_language_fields_to_categories', 1),
(11, '2018_04_22_122936_add_language_to_items', 1),
(12, '2018_04_27_232559_create_prices_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `imageable_id` int(10) UNSIGNED NOT NULL,
  `imageable_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `name`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(68, '1524827201_1.jpeg', 16, 'App\\Category', '2018-04-27 11:06:41', '2018-04-27 11:06:41'),
(70, '1524827271_3.jpeg', 18, 'App\\Category', '2018-04-27 11:07:51', '2018-04-27 11:07:51'),
(71, '1524827289_4.jpeg', 21, 'App\\Category', '2018-04-27 11:08:09', '2018-04-27 11:08:09'),
(73, '1524827394_6.jpeg', 20, 'App\\Category', '2018-04-27 11:09:54', '2018-04-27 11:09:54'),
(74, '1524827405_7.jpeg', 22, 'App\\Category', '2018-04-27 11:10:05', '2018-04-27 11:10:05'),
(75, '1524827420_8.jpeg', 23, 'App\\Category', '2018-04-27 11:10:20', '2018-04-27 11:10:20'),
(76, '1524827436_1.jpeg', 24, 'App\\Category', '2018-04-27 11:10:36', '2018-04-27 11:10:36'),
(77, '1524827449_2.jpeg', 25, 'App\\Category', '2018-04-27 11:10:49', '2018-04-27 11:10:49'),
(78, '1524827479_3.jpeg', 27, 'App\\Category', '2018-04-27 11:11:19', '2018-04-27 11:11:19'),
(79, '1524827487_4.jpeg', 26, 'App\\Category', '2018-04-27 11:11:27', '2018-04-27 11:11:27'),
(80, '1524827495_5.jpeg', 28, 'App\\Category', '2018-04-27 11:11:35', '2018-04-27 11:11:35'),
(81, '1524827500_6.jpeg', 29, 'App\\Category', '2018-04-27 11:11:40', '2018-04-27 11:11:40'),
(85, '1524861749_Grand Hotel_2-9.jpg', 5, 'App\\Item', '2018-04-27 20:42:29', '2018-04-27 20:42:29'),
(86, '1524898553_Grand Hotel_2-9.jpg', 6, 'App\\Item', '2018-04-28 06:55:53', '2018-04-28 06:55:53'),
(87, '1524898920_Grand Hotel_2-20.jpg', 17, 'App\\Category', '2018-04-28 07:02:00', '2018-04-28 07:02:00'),
(88, '1524899584_Grand Hotel_2-19.jpg', 7, 'App\\Item', '2018-04-28 07:13:04', '2018-04-28 07:13:04'),
(89, '1524900136_Grand Hotel_2-13.jpg', 8, 'App\\Item', '2018-04-28 07:22:16', '2018-04-28 07:22:16'),
(91, '1524901005_Grand Hotel_2-46.jpg', 10, 'App\\Item', '2018-04-28 07:36:45', '2018-04-28 07:36:45'),
(92, '1524901201_Grand Hotel_2-4.jpg', 11, 'App\\Item', '2018-04-28 07:40:01', '2018-04-28 07:40:01'),
(94, '1524906696_Grand Hotel_2-50.jpg', 9, 'App\\Item', '2018-04-28 09:11:36', '2018-04-28 09:11:36'),
(95, '1524907842_Grand Hotel_2-6.jpg', 12, 'App\\Item', '2018-04-28 09:30:42', '2018-04-28 09:30:42'),
(96, '1524908474_Grand Hotel_2-7.jpg', 13, 'App\\Item', '2018-04-28 09:41:14', '2018-04-28 09:41:14'),
(97, '1524908717_Grand Hotel_2-28.jpg', 14, 'App\\Item', '2018-04-28 09:45:17', '2018-04-28 09:45:17'),
(98, '1524909260_Grand Hotel_2-37.jpg', 15, 'App\\Item', '2018-04-28 09:54:20', '2018-04-28 09:54:20'),
(99, '1524909734_Grand Hotel_2-3.jpg', 4, 'App\\Item', '2018-04-28 10:02:14', '2018-04-28 10:02:14'),
(100, '1524910020_Grand Hotel_2-32.jpg', 16, 'App\\Item', '2018-04-28 10:07:00', '2018-04-28 10:07:00'),
(101, '1524911352_Grand Hotel_2-119.jpg', 17, 'App\\Item', '2018-04-28 10:29:12', '2018-04-28 10:29:12'),
(103, '1524922670_Grand Hotel_2-35.jpg', 19, 'App\\Item', '2018-04-28 13:37:50', '2018-04-28 13:37:50'),
(104, '1524930878_Grand Hotel_2-194.jpg', 20, 'App\\Item', '2018-04-28 15:54:38', '2018-04-28 15:54:38'),
(105, '1524931867_Grand Hotel_2-89.jpg', 21, 'App\\Item', '2018-04-28 16:11:07', '2018-04-28 16:11:07'),
(106, '1524933353_Grand Hotel_2-88.jpg', 22, 'App\\Item', '2018-04-28 16:35:53', '2018-04-28 16:35:53'),
(107, '1524933844_Grand Hotel_2-86.jpg', 23, 'App\\Item', '2018-04-28 16:44:04', '2018-04-28 16:44:04'),
(108, '1524934033_Grand Hotel_2-91.jpg', 24, 'App\\Item', '2018-04-28 16:47:13', '2018-04-28 16:47:13'),
(109, '1524935465_Grand Hotel_2-129.jpg', 25, 'App\\Item', '2018-04-28 17:11:05', '2018-04-28 17:11:05'),
(110, '1524936070_asian_sauces_t750x550.jpg', 30, 'App\\Category', '2018-04-28 17:21:10', '2018-04-28 17:21:10'),
(111, '1524936299_asian_sauces_t750x550.jpg', 26, 'App\\Item', '2018-04-28 17:24:59', '2018-04-28 17:24:59'),
(112, '1524937812_Grand Hotel_2-104.jpg', 27, 'App\\Item', '2018-04-28 17:50:12', '2018-04-28 17:50:12'),
(113, '1524938257_Grand Hotel_2-99.jpg', 28, 'App\\Item', '2018-04-28 17:57:37', '2018-04-28 17:57:37'),
(114, '1524938531_Grand Hotel_2-100.jpg', 29, 'App\\Item', '2018-04-28 18:02:11', '2018-04-28 18:02:11'),
(115, '1524938910_Grand Hotel_2-97.jpg', 30, 'App\\Item', '2018-04-28 18:08:30', '2018-04-28 18:08:30'),
(116, '1524939310_Grand Hotel_2-96.jpg', 31, 'App\\Item', '2018-04-28 18:15:10', '2018-04-28 18:15:10'),
(117, '1524988376_Grand Hotel_2-76.jpg', 19, 'App\\Category', '2018-04-29 07:52:56', '2018-04-29 07:52:56'),
(118, '1524989090_Grand Hotel_2-76.jpg', 32, 'App\\Item', '2018-04-29 08:04:50', '2018-04-29 08:04:50'),
(119, '1524991799_Grand Hotel_2-60.jpg', 33, 'App\\Item', '2018-04-29 08:49:59', '2018-04-29 08:49:59'),
(120, '1524991799_Grand Hotel_2-60.jpg', 34, 'App\\Item', '2018-04-29 08:49:59', '2018-04-29 08:49:59'),
(121, '1524992209_Grand Hotel_2-62.jpg', 35, 'App\\Item', '2018-04-29 08:56:49', '2018-04-29 08:56:49'),
(122, '1524992533_Grand Hotel_2-57.jpg', 36, 'App\\Item', '2018-04-29 09:02:13', '2018-04-29 09:02:13'),
(123, '1524993179_Grand Hotel_2-70.jpg', 37, 'App\\Item', '2018-04-29 09:12:59', '2018-04-29 09:12:59'),
(124, '1524993617_Grand Hotel_2-53.jpg', 38, 'App\\Item', '2018-04-29 09:20:17', '2018-04-29 09:20:17'),
(125, '1524994102_Grand Hotel_2-52.jpg', 39, 'App\\Item', '2018-04-29 09:28:22', '2018-04-29 09:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `priceable_id` int(10) UNSIGNED NOT NULL,
  `priceable_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `price`, `priceable_id`, `priceable_type`, `description`, `created_at`, `updated_at`) VALUES
(3, 'a:3:{i:0;s:1:\"7\";i:1;N;i:2;N;}', 4, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-04-28 13:40:14'),
(4, 'a:3:{i:0;s:4:\"6.00\";i:1;N;i:2;N;}', 5, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-04-28 13:38:42'),
(5, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 6, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-04-28 14:48:36'),
(6, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 7, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-04-28 11:24:11'),
(7, 'a:3:{i:0;s:4:\"4.00\";i:1;N;i:2;N;}', 8, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-04-28 11:24:11'),
(8, 'a:3:{i:0;s:4:\"9.00\";i:1;N;i:2;N;}', 9, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-04-28 11:26:05'),
(9, 'a:3:{i:0;s:5:\"12.00\";i:1;N;i:2;N;}', 10, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-04-28 15:23:33'),
(10, 'a:3:{i:0;s:5:\"12.00\";i:1;N;i:2;N;}', 11, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-04-28 14:48:59'),
(11, 'a:3:{i:0;s:5:\"15.00\";i:1;N;i:2;N;}', 12, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-04-28 11:24:11'),
(12, 'a:3:{i:0;s:5:\"15.00\";i:1;N;i:2;N;}', 13, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-04-28 16:13:33'),
(13, 'a:3:{i:0;s:5:\"13.00\";i:1;N;i:2;N;}', 14, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-04-28 11:24:11'),
(14, 'a:3:{i:0;s:5:\"18.00\";i:1;N;i:2;N;}', 15, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:12', '2018-04-28 11:24:12'),
(15, 'a:3:{i:0;s:5:\"16.00\";i:1;N;i:2;N;}', 16, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:12', '2018-04-29 07:45:08'),
(16, 'a:3:{i:0;s:4:\"7.00\";i:1;N;i:2;N;}', 17, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:12', '2018-04-28 11:24:12'),
(18, 'a:3:{i:0;s:5:\"12.00\";i:1;N;i:2;N;}', 19, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 13:37:50', '2018-04-29 09:13:12'),
(19, 'a:3:{i:0;s:5:\"28.00\";i:1;N;i:2;N;}', 20, 'App\\Item', 'a:3:{i:0;s:5:\"270gr\";i:1;N;i:2;N;}', '2018-04-28 15:54:38', '2018-04-29 09:45:01'),
(20, 'a:3:{i:0;s:5:\"30.00\";i:1;N;i:2;N;}', 21, 'App\\Item', 'a:3:{i:0;s:3:\"370\";i:1;N;i:2;N;}', '2018-04-28 16:11:07', '2018-04-29 09:45:27'),
(21, 'a:3:{i:0;s:5:\"39.00\";i:1;N;i:2;N;}', 22, 'App\\Item', 'a:3:{i:0;s:5:\"250gr\";i:1;N;i:2;N;}', '2018-04-28 16:35:53', '2018-04-29 09:46:05'),
(22, 'a:3:{i:0;s:5:\"18.00\";i:1;N;i:2;N;}', 23, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 16:44:04', '2018-04-29 09:46:23'),
(23, 'a:3:{i:0;s:5:\"19.00\";i:1;N;i:2;N;}', 24, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 16:47:13', '2018-04-29 09:46:44'),
(24, 'a:3:{i:0;s:5:\"16.00\";i:1;N;i:2;N;}', 25, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 17:11:05', '2018-04-29 09:47:04'),
(25, 'a:3:{i:0;s:4:\"0.00\";i:1;N;i:2;N;}', 26, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 17:24:59', '2018-04-28 17:24:59'),
(26, 'a:3:{i:0;s:5:\"26.00\";i:1;N;i:2;N;}', 27, 'App\\Item', 'a:3:{i:0;s:5:\"250gr\";i:1;N;i:2;N;}', '2018-04-28 17:50:12', '2018-04-29 09:47:30'),
(27, 'a:3:{i:0;s:2:\"15\";i:1;N;i:2;N;}', 28, 'App\\Item', 'a:3:{i:0;s:5:\"400gr\";i:1;N;i:2;N;}', '2018-04-28 17:57:37', '2018-04-28 17:57:37'),
(28, 'a:3:{i:0;s:2:\"15\";i:1;N;i:2;N;}', 29, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 18:02:11', '2018-04-28 18:02:11'),
(29, 'a:3:{i:0;s:2:\"15\";i:1;N;i:2;N;}', 30, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 18:08:30', '2018-04-28 18:08:30'),
(30, 'a:3:{i:0;s:2:\"25\";i:1;N;i:2;N;}', 31, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 18:15:09', '2018-04-28 18:15:09'),
(31, 'a:3:{i:0;s:2:\"12\";i:1;N;i:2;N;}', 32, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 08:04:50', '2018-04-29 08:04:50'),
(32, 'a:3:{i:0;s:2:\"11\";i:1;N;i:2;N;}', 33, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 08:49:59', '2018-04-29 08:49:59'),
(33, 'a:3:{i:0;s:2:\"11\";i:1;N;i:2;N;}', 34, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 08:49:59', '2018-04-29 08:49:59'),
(34, 'a:3:{i:0;s:1:\"9\";i:1;N;i:2;N;}', 35, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 08:56:49', '2018-04-29 08:56:49'),
(35, 'a:3:{i:0;s:5:\"19.00\";i:1;N;i:2;N;}', 36, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 09:02:13', '2018-04-29 09:02:13'),
(36, 'a:3:{i:0;s:5:\"11.00\";i:1;N;i:2;N;}', 37, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 09:12:59', '2018-04-29 09:12:59'),
(37, 'a:3:{i:0;s:5:\"19.00\";i:1;N;i:2;N;}', 38, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 09:20:17', '2018-04-29 09:20:17'),
(38, 'a:3:{i:0;s:5:\"15.00\";i:1;N;i:2;N;}', 39, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 09:28:22', '2018-04-29 09:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2018-04-21 20:00:00', '2018-04-21 20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Manager', 'manager@localhost.localhost', '$2y$10$xeExykS8Uj4u8YqtzDRRiOg3ypjUHgBDMDiwbn1Gr/VZk6NPnMtH.', 'wDNuXWIlxtdMlqhk8CPsrycBZuF7RWIjh9RWAmPChrEoKavBvpQGpeeo7KZy', '2018-04-22 09:56:11', '2018-04-22 09:56:11', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`);

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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
