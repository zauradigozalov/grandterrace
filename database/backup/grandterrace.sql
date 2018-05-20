-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2018 at 09:24 PM
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
  `name_ru` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `position`, `name_en`, `name_ru`, `parent_id`) VALUES
(16, 'Salatlar', '2018-04-23 13:19:45', '2018-05-09 15:52:39', 26, 'Salads', 'Салаты', 35),
(17, 'Şorbalar', '2018-04-23 13:23:32', '2018-05-09 15:52:39', 25, 'Soups', 'Супы', 35),
(18, 'Başlanğıclar və sendviçlər', '2018-04-23 13:25:19', '2018-05-09 15:52:39', 27, 'Appetizers and sandwich', 'Закуски и сэндвич', 35),
(19, 'Pasta', '2018-04-23 13:27:16', '2018-05-09 15:52:39', 29, 'Pasta', 'Паста', 35),
(20, 'Pizza', '2018-04-23 13:27:53', '2018-05-09 15:52:39', 28, 'Pizza', 'Пицца', 35),
(21, 'Əsas yeməklər', '2018-04-23 13:33:10', '2018-05-09 15:52:39', 30, 'Main course', 'Основные блюда', 35),
(22, 'Qrildə baliq', '2018-04-23 13:35:56', '2018-05-09 15:52:39', 31, 'Grilled fish', 'Рыба', 35),
(23, 'Steyklər', '2018-04-23 13:37:41', '2018-05-09 15:52:39', 32, 'Steaks', 'Мясо', 35),
(24, 'Qarnirlər', '2018-04-23 13:42:58', '2018-05-09 15:52:39', 33, 'Side dishes', 'Гарниры', 35),
(25, 'Desertlər', '2018-04-23 13:43:56', '2018-05-09 15:52:39', 34, 'Desserts', 'Дессерты', 35),
(26, 'Rollar', '2018-04-23 13:44:46', '2018-05-09 15:52:39', 35, 'Rolls', 'Роллы', 34),
(27, 'Isti rollar', '2018-04-23 13:46:43', '2018-05-09 15:52:39', 36, 'Hot rolls', 'Горячие роллы', 34),
(28, 'Nudl', '2018-04-23 13:47:39', '2018-05-09 15:52:39', 37, 'Noodl', 'Нудл', 34),
(29, 'Suşi seti', '2018-04-23 13:49:02', '2018-05-09 15:52:39', 38, 'Sushi set', 'Набор суши', 34),
(30, 'Steyk souslar', '2018-04-28 17:21:10', '2018-05-09 15:58:38', 20, 'Steak souses', 'Стейк соусы', 35),
(31, 'Maki', '2018-04-29 17:49:20', '2018-05-09 15:58:38', 21, 'Maki', 'Маки', 34),
(34, 'Yapon mətbəxi', '2018-04-30 09:55:49', '2018-05-09 15:58:38', 22, 'Japanese cuisine', 'Японская кухня', 0),
(35, 'Italyan mətbəxi', '2018-04-30 09:59:21', '2018-05-09 15:58:38', 23, 'Italian cuisine', 'Итальянская кухня', 0),
(36, 'Içkilər', '2018-04-30 11:42:20', '2018-05-09 15:58:37', 1, 'Beverages', 'Напитки', 0),
(37, 'Viski', '2018-04-30 13:16:31', '2018-05-09 15:58:37', 2, 'Whisky', 'Виски', 36),
(38, 'Tekila', '2018-04-30 13:17:49', '2018-05-09 15:58:37', 3, 'Tequila', 'Текила', 36),
(39, 'Rom', '2018-04-30 13:18:33', '2018-05-09 15:58:37', 4, 'Rum', 'Ром', 36),
(40, 'Kokteyl', '2018-04-30 13:20:14', '2018-05-09 15:58:37', 10, 'Cocktail', 'Коктейл', 36),
(41, 'Çay - kofe', '2018-04-30 13:22:33', '2018-05-09 15:58:38', 19, 'Tea - coffee', 'Чай - кофе', 36),
(42, 'Cin', '2018-04-30 13:24:25', '2018-05-09 15:58:37', 5, 'Gin', 'Джин', 36),
(43, 'Vodka', '2018-04-30 13:25:59', '2018-05-09 15:58:37', 6, 'Vodka', 'Водка', 36),
(44, 'Miso sup', '2018-05-01 14:06:16', '2018-05-09 15:58:38', 24, 'Miso soup', 'Мисо суп', 34),
(45, 'Likörlar və dəmlər', '2018-05-02 12:00:54', '2018-05-09 15:58:37', 9, 'Liqueurs and tinctures', 'Ликеры и настойки', 36),
(46, 'Pivə', '2018-05-02 12:06:07', '2018-05-09 15:58:38', 17, 'Beer', 'Пиво', 36),
(47, 'Spirtsiz içkilər', '2018-05-02 12:18:08', '2018-05-09 15:58:38', 18, 'Soft drink', 'Безалкогольные напитки', 36),
(48, 'Vermutlar', '2018-05-02 13:05:30', '2018-05-09 15:58:37', 8, 'Vermouth', 'Вермуты', 36),
(49, 'Şərablar', '2018-05-02 13:11:28', '2018-05-09 15:58:38', 16, 'Wines', 'Вина', 36),
(50, 'Konyak', '2018-05-02 14:16:03', '2018-05-09 15:58:37', 7, 'Cognac', 'Коньяк', 36),
(51, 'Şampan', '2018-05-02 14:17:56', '2018-05-09 15:58:38', 15, 'Champagne', 'Шампанское', 36),
(52, 'Great cocktails', '2018-05-02 15:27:26', '2018-05-09 15:58:37', 11, 'Great coctails', 'Great coctails', 40),
(53, 'Strong cocktails', '2018-05-02 15:29:27', '2018-05-09 15:58:37', 12, 'Strong cocktails', 'Strong cocktails', 40),
(54, 'Classic cocktails', '2018-05-02 15:30:06', '2018-05-09 15:58:37', 13, 'Classic cocktails', 'Classic cocktails', 40),
(55, 'Non-alcoholic cocktails', '2018-05-02 15:30:53', '2018-05-09 15:58:37', 14, 'Non-alcoholic cocktails', 'Non-alcoholic cocktails', 40);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
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

INSERT INTO `items` (`id`, `name`, `description`, `category_id`, `warning`, `composition`, `position`, `created_at`, `updated_at`, `name_en`, `name_ru`, `description_en`, `description_ru`, `warning_en`, `warning_ru`, `composition_en`, `composition_ru`) VALUES
(4, 'Yunan salatı', 'Doğranmış yerli pomidor və xiyar, zeytun, ağ pendır, qırmızı soğan, göyərti, zeytun yağı', 16, '', '', 12, '2018-04-25 05:43:14', '2018-04-28 11:27:44', 'Greek salad', 'Греческий салат', 'Sliced local tomato and cucumber, olives, white cheese, red onion, greens, olive oile and lemon souse', 'Нарезанные местные помидоры и огурцы, оливки, белый сыр, красный лук, зелень,   оливковое масло и лимонный сок', '', '', '', ''),
(5, 'Şefin supu', 'Xüsusilə seçilmiş inqridientlerdən günlük hazırlanmış şorba', 17, 'ACILI', '', 0, '2018-04-27 20:42:29', '2018-05-03 14:05:01', 'Chef`s soup', 'Суп от шефа', 'Specially picked ingredients for daily soup', 'Суп дня из специально отобранных ингредиентов', 'SPICY', 'ОСТРОЕ', '', ''),
(6, 'Toyuq supu', 'Təzə qarışıq tərəvəzlər, xırda makaron', 17, 'ACILI', '', 0, '2018-04-28 06:55:53', '2018-05-03 14:04:38', 'Chicken', 'Куриный', 'Freshly chopped vegetables and pasta', 'Суп из свеженарезанных овощей и макаронов', 'SPICY', 'ОСТРОЕ', '', ''),
(7, 'Qaymaqlı göbələk  şorbası', '', 17, 'ISTI', '', 0, '2018-04-28 07:13:04', '2018-05-03 14:03:19', 'Creamy mushroom', 'Грибной', '', '', 'HOT', 'ГОРЯЧЕЕ', '', ''),
(8, 'Mərcimək', '', 17, 'ISTI', '', 0, '2018-04-28 07:22:16', '2018-05-03 14:04:07', 'Lentil', 'Чечевичный', '', '', 'HOT', 'ГОРЯЧЕЕ', '', ''),
(9, 'Salat keçi pendiri ilə', 'Qızardılmış keçi pendiri, qarışıq yaşıl salat ilə', 16, '', '', 2, '2018-04-28 07:31:09', '2018-04-28 11:27:44', 'Goat cheese salad', 'Салат из козьего сыра', 'Fried goat cheese with mixed green salad', 'Жареный козий сыр co смешанным зеленым салатом', 'SALADS', 'САЛАТЫ', '', ''),
(11, 'Sezar salat toyuq ilə', 'Toyuq filesi, kahı, sezar sous, parmezan, xırda pomidor', 16, '', '', 4, '2018-04-28 07:40:01', '2018-04-28 11:27:44', 'Caesar salad with chicken', 'Цезарь с курицей', 'Chicken fillet, lettuce, caesar sauce, parmesan, small tomatoes', 'Куриное филе, листья салата, соус цезарь, пармезан, мелкие помидоры', 'SALADS', 'САЛАТЫ', '', ''),
(12, 'Sezar krivet ilə', 'Krivet, kahı, sezar sous, parmezan, xırda pomidor', 16, '', '', 5, '2018-04-28 09:30:42', '2018-04-28 11:27:44', 'Caesar with prawns', 'Цезарь с креветками', 'Prawns, lettuce, caesar sauce, parmesan, small tomatoes', 'Креветки, листья салата, соус цезарь, пармезан, мелкие помидоры', 'SALADS', 'САЛАТЫ', '', ''),
(13, 'Sezar hisə verilmış qızıl  balıq ilə', 'Hisə verilmış salmon  balıgı, kahı, sezar sous, parmezan, xırda pomidor', 16, '', '', 6, '2018-04-28 09:41:14', '2018-04-28 14:50:21', 'Caesar with smoked salmon', 'Цезарь с копченым лососем', 'Smoked salmon, lettuce, caesar sauce, parmesan, small tomatoes', 'Копченый лосось, листья салата, соус цезарь, пармезан, мелкие помидоры', '', '', '', ''),
(14, 'Krivetli yaşıl salat', 'Qrildə krivet, qarisiq goyerti, pomidor, xiyar, balzamik sousu, limon suyu, zeytun yagi', 16, '', '', 7, '2018-04-28 09:45:17', '2018-05-14 12:22:37', 'Green salad with tiger prawns', 'Зеленый салат с тигровыми креветками', 'Grilled prawns, mix greens, tomato, cucumber, balsamik sauce, lemon sauce, olive oil', 'Креветки на гриле, помидор, огурец, бальзамический соус, лимонный сок, оливковое масло', '', '', '', ''),
(15, 'Dəniz məhsul salatı', 'Midyə, kalmar, ahtapot, krivet', 16, '', '', 8, '2018-04-28 09:54:20', '2018-04-28 11:27:44', 'Seafood  salad', 'Салат из морепродуктов', 'Mussels, calamari, octopus, tiger prawn', 'Мидии, кальмары, осьминог, тигровые креветки', '', '', '', ''),
(16, 'Ilıq salat toyuq ciyəri və ət ilə', 'Can əti, ciyər, kahı, kartof, xiyar dijon xardalı ilə', 16, '', '', 9, '2018-04-28 10:06:59', '2018-05-14 12:47:56', 'Warm salad with chicken liver  and beef', 'Теплый салат с куриной печенью и говядиной', 'Beef, liver, lettuce, potato, cucumber and mustard dijon', 'Говядина, ливер, листья салата, картофель, огурец и горчица дижон', '', '', '', ''),
(17, 'Pendir tabağı', 'Parmesan, xırda mozarella pendiri, keçi pendiri,  kifli pendir, saçaq pendiri, yerli brinza', 18, '', '', 0, '2018-04-28 10:29:12', '2018-05-14 13:40:30', 'Cheese platter', 'Сырная тарелка', 'Parmesan, mozzarella cheese, goat cheese, blue cheese, cheese pigtail, local cheese', 'Пармезан, сыр моцарелла, козий сыр, сыр с плесенью, сыр косичка, местная брынза', '', '', '', ''),
(19, 'Kapriz salat', 'Mozarella pendiri, pomidor, rukula, balsamik sirkə , pesto sous', 16, 'YER FINDIĞI', '', 0, '2018-04-28 13:37:50', '2018-04-28 13:37:50', 'Caprice salad', 'Салат каприз', 'Tomato, arugula, balsamic vinegar and pesto souse', 'Помидор, руккола, бальзамический уксус и песто соус', 'PEANUTS', 'АРАХИС', '', ''),
(20, 'Kapriz steyk', 'Angus can əti, mozarella pendiri, pomidor, pesto sous', 23, 'YER FINDIĞI-PESTO SOUS', '', 0, '2018-04-28 15:54:37', '2018-05-04 06:58:37', 'Caprese steak', 'Каприз стейк', 'Beef tenderloin, mozzarella cheese, sliced tomato, pesto sous', 'Говяжья вырезка, сыр моцарелла, нарезанный помидор, песто соус', 'PEA NUTS- PESTO SOUSE', 'АРАХИС-ПЕСТО СОУС', '', ''),
(21, 'Tibon steyk', '', 23, '', '', 0, '2018-04-28 16:11:07', '2018-05-04 07:02:28', 'Tbone steak', 'Тибон стейк', '', '', '', '', '', ''),
(22, 'Ribay', 'Angus ribay(can əti)', 23, '', '', 0, '2018-04-28 16:35:53', '2018-05-04 07:03:59', 'Rib-eye', 'Рибай стейк', 'Angus rib-eye(beef)', 'Ангус рибай(говядина)', '', '', '', ''),
(23, 'File minyon', 'Doğranmış anqus can əti, badımcan, qabaq, rəngli bibərlə', 23, '', '', 0, '2018-04-28 16:44:04', '2018-05-04 07:07:57', 'Fillet mignon', 'Филе миньон', 'Sliced angus beef tenderloin, eggplant, zucchini, capsicum', 'Нарезанная говяжья вырезка, баклажаны, цуккини, паприка', '', '', '', ''),
(24, 'Anqus tenderloin', 'Anqus can əti', 23, '', '', 0, '2018-04-28 16:47:13', '2018-05-04 07:12:24', 'Angus tenderloin', 'Ангус вырезка', 'Angus beef tenderloin', 'Говяжья вырезка ангус', '', '', '', ''),
(25, 'Qarışıq ət tabağı', 'Anqus can əti, quzu qabırğa,  marinə edilmiş toyuq filesi', 23, '', '', 0, '2018-04-28 17:11:05', '2018-04-28 17:11:05', 'Mixed meat plate', 'Мясное ассорти', 'Angus beef tenderloin, lamp chops, chicken  marinated breast', 'Говяжья вырезка, ребра ягненка, маринованная куриная грудка', '', '', '', ''),
(27, 'Qızıl balıq qrildə', 'Qrıldə qızardılmış norveç qızıl balığı, lemon sousda', 22, '', '', 0, '2018-04-28 17:50:12', '2018-05-03 14:47:25', 'Grilled salmon', 'Лосось на гриле', 'Grilled norvegian salmon with lemon souse', 'Жареный норвежский лосось с лимонным соусом', '', '', '', ''),
(28, 'Levrek', 'Grilldə qızardılmış levrek balığı', 22, '', '', 0, '2018-04-28 17:57:37', '2018-04-28 17:57:37', 'Sea bass', 'Морской окунь', 'Grilled sea bass', 'Морской окунь', '', '', '', ''),
(29, 'Cupra', 'Qrıldə qızardılmış çupra balığı', 22, '', '', 0, '2018-04-28 18:02:10', '2018-04-28 18:02:10', 'Dorado', 'Карась', 'Grilled dorado', 'Карась', '', '', '', ''),
(30, 'Farel', 'Qrildə qızardılmış farel balığı', 22, '', '', 0, '2018-04-28 18:08:29', '2018-04-28 18:08:29', 'Trout', 'Форель', 'Grillled trout', 'Форель', '', '', '', ''),
(31, 'Jumbo krivetlər', 'Qrildə qızardılmış jumbo krivetlər, rəngli bibərlə', 22, '', '', 0, '2018-04-28 18:15:09', '2018-04-28 18:15:09', 'Jumbo prawns', 'Гигантские креветки', 'Grilled jumbo prawns, with capsicum', 'Гигантские реветки', '', '', '', ''),
(32, 'Fetuçini karbonara', 'Fetuçini əriştəsi, bekon, parmesan pendiri, qaymaq, yumurta', 19, 'DONUZ VE YA HIND QUŞU', '', 0, '2018-04-29 08:04:49', '2018-05-03 14:43:08', 'Fettuccine  carbonara', 'Феттуччини', 'Fettuccine pasta, bacon, parmesan cheese, cream, fried egg', 'Феттуччини', 'BACON OR TURKEY HAM', 'БЕКОН ИЛИ ВЕТЧИНА ИЗ ИНДЕЙКИ', '', ''),
(34, 'Spagetti bolonez', 'Ət qiymə bolonez, parmesan, xırda pomidor', 19, '', '', 0, '2018-04-29 08:49:59', '2018-04-29 08:49:59', 'Spaghetti bolognese', 'Спагетти болоньез', 'Minced meat bolognese, parmezan, small tomato', 'Мясной фарш, пармезан, мелкие помидоры', '', '', '', ''),
(35, 'Penne arrabiata', 'Acılı pomidor souslu makaron', 19, 'ACILI', '', 0, '2018-04-29 08:56:49', '2018-05-03 14:41:22', 'Penne arrabiata', 'Пенне аррабиата', 'Penne pasta with spicy tomato sauce', 'Макароны с острым томатным соусом', 'SPICY', 'ОСТРОЕ', '', ''),
(36, 'Dəniz məhsullu spagetti', 'Dəniz məhsulunun həlimi ilə yoğrulmuş qara vermeşil, midya, kalmar, ahtapot, krivet', 19, '', '', 0, '2018-04-29 09:02:13', '2018-04-29 09:02:13', 'Frutti de mari spagetti', 'Спагетти c морепродуктами', 'Black spaghetti mixed in seafood stock , mussel, calamari, octopus, prawns', 'Черная вермишель смешанное в соке морепродуктов, мидии, кальмары, осьминог, креветки', '', '', '', ''),
(37, 'Fettuccine alfreddo', 'Fetuçini əriştə toyuq və qaymaqlı souslu, parmesan pendiri', 19, '', '', 0, '2018-04-29 09:12:59', '2018-04-29 09:12:59', 'Fettuccine alfreddo', 'Феттуччини алфреддо', 'Pasta fettuccine with chicken, cream and parmesan', 'Спагетти феттуччини с курицей сливочным соусом и пармезан', '', '', '', ''),
(38, 'Dəniz məhsullu rizotto', 'Italiyan orborio düyüsü, qarışıq dəniz məhsulları, midya, kalmar, ahtapot, krivet  ilə', 19, '', '', 0, '2018-04-29 09:20:17', '2018-05-14 14:58:41', 'Frutti de mari  risotto', 'Ризотто c морепродуктами', 'Italian rise arborio, mixed seafood, mussel, squid, octopus, prawns', 'Итальянский рис арборио, смешанные морепродукты, мидии, кальмары, осьминог и креветки', '', '', '', ''),
(39, 'Göbələkli rizotto', 'Italiyan orboro düyüsü, şampinyon göbələklə', 19, '', '', 0, '2018-04-29 09:28:21', '2018-04-29 09:28:21', 'Mushroom risotto', 'Грибной ризотт', 'Italian orborio rice, shampignon mushrooms', 'Грибной ризотт', '', '', '', ''),
(40, 'Philadelphia light', 'Filadelfiya pendiri, nori, düyü, xiyar, kahı', 26, '', '', 0, '2018-04-29 18:48:26', '2018-04-29 18:48:26', 'Philadelphia light', 'Филадельфия лайт', 'Philadelphia cheese, nori, rice, cucumber, lettuce', 'Сыр филадельфия, нори, рис, oгурец, листья салата', '', '', '', ''),
(41, 'Philadelphia classic', 'Filadelfiya pendiri, nori, düyü', 26, '', '', 0, '2018-04-29 18:53:40', '2018-04-29 18:53:40', 'Philadelphia classic', 'Филадельфия классик', 'Philadelphia cheese, nori, rice', 'Сыр филадельфия, нори, pис.', '', '', '', ''),
(42, 'Philadelphia ebi', 'Salmon qızıl balığı, krivet, filadelfiya pendiri, nori, düyü', 26, '', '', 0, '2018-04-29 18:58:37', '2018-05-15 14:48:34', 'Philadelphia ebi', 'Филадельфия эби', 'Philadelphia cheese, prawns, salmon, nori, rice,', 'Сыр филадельфия, креветки, лосось, нори, рис', '', '', '', ''),
(43, 'Phliladelphia delux', 'Filadelfiya pendiri, manqo, qızıl balığ və kürüsü, nori, düyü,', 26, '', '', 0, '2018-04-29 19:13:46', '2018-05-15 14:49:14', 'Phliladelphia delux', 'Филадельфия делукс', 'Philadelphia cheese, mango, salmon and salmon caviar ,nori , rice,', 'Сыр филадельфия, манго, лосось и икра лосося, нори, рис', '', '', '', ''),
(44, 'California crab', 'Qar beyaz yengəç, avokado, yapon mayonezi, nori, düyü, tobiko', 26, '', '', 0, '2018-04-29 19:26:19', '2018-04-29 19:26:19', 'California crab', 'Калифорния клаб', 'Snow white crab, avocado, japanese mayo, nori, rice, tobiko', 'Снежный краб, авокадо, японский майонез, нори, рис, тобико', '', '', '', ''),
(45, 'California ebi', 'Krivet, avokado, yapon mayonezi, nori, düyü,  tobiko', 26, '', '', 0, '2018-04-29 19:28:54', '2018-05-15 14:50:04', 'California ebi', 'Калифорния эби', 'Prawns, avocado, japanese mayo, nori, rice, tobiko', 'Креветки, авокадо, японский майонез, нори, рис, тобико', '', '', '', ''),
(46, 'California  salmon', 'Salmon qizil baligi, avokado, yapon mayonezi, nori, düyü, tobiko', 26, '', '', 0, '2018-04-29 19:34:29', '2018-04-29 19:34:29', 'California  salmon', 'Калифорния лосось', 'Salmon,avokado, japanese mayo, nori, rice, tobiko', 'Лосось, авокадо, японский майонез, нори, рис, тобико', '', '', '', ''),
(47, 'California tuna', 'Tuna balıq, avokado, yapon mayonezi , nori, düyü, tobiko', 26, '', '', 0, '2018-04-29 19:47:04', '2018-05-15 14:50:37', 'California tuna', 'Калифорния туна', 'Tuna, japanese mayo, nori, rice, tobiko', 'Тунец, авокадо японский майонез, нори, рис, тобико', '', '', '', ''),
(48, 'Tag roll', 'Filadelfiya pendiri, ilan balığı, avokado, düyü, nori, küncüt, unaqi sousu', 26, '', '', 0, '2018-04-29 19:55:53', '2018-04-29 19:55:53', 'Tag roll', 'Тагролл', 'Philadelphia cheese, unagi, avocado, rice, nori, sesame,unagi sauce', 'Сыр филадельфия, унаги, авокадо, рис, нори, кунжут, унаги соус', '', '', '', ''),
(49, 'Black dragon', 'Krivet tempura, avokado, unaqi, küncüt, unaqi sousu', 26, '', '', 0, '2018-04-29 20:01:30', '2018-04-29 20:01:30', 'Black dragon', 'Black dragon', 'Prawns tempura, unagi, avocado, sesame, unagi sauce', 'Креветки в темпуре, унаги, авокадо, кунжут, унаги соус', '', '', '', ''),
(50, 'Fixfight roll', 'Filadelfiya pendiri, hisə verilmiş qızıl balıq, avokado, nori, düyü, küncüt', 26, '', '', 0, '2018-04-29 20:04:58', '2018-05-15 14:55:16', 'Fixfight roll', 'Фиксфайт', 'Philadelphia cheese, smoked salmon, avocado, nori, rice, sesame', 'Сыр филадельфия, копченый лосось, авокадо, нори, рис, кунжут', '', '', '', ''),
(51, 'Tokio roll', 'Teriyaki  sousunda qizardılmış qızıl balıq, tuna balıqinin qırıntıları, \r\navokado, düyü, nori', 26, '', '', 0, '2018-04-29 20:08:32', '2018-05-15 14:52:01', 'Tokio roll', 'Токио ролл', 'Salmon fried in teriyaki sauce, tuna fish crumbs, avocado, rice, nori', 'Лосось обжаренный в соусе терияки, стружки тунца, авокадо, рис, нори', '', '', '', ''),
(52, 'Sakura roll', 'Filadelfiya pendiri, ilan balıqı, düyü, nori, xiyar, küncüt', 26, '', '', 0, '2018-04-29 20:15:37', '2018-04-29 20:15:37', 'Sakura roll', 'Сакура ролл', 'Philadelphia cheese, unagi, rice, nori, cucumber, sesame', 'Сыр филадельфия, унаги, рис, нори, огурец, кунжут', '', '', '', ''),
(54, 'Sezar', 'Toyuq filesi, kahı, xırda pomidor, parmesan və mozarella pendiri', 20, '', '', 0, '2018-04-30 10:09:14', '2018-04-30 10:09:14', 'Ceasar', 'Цезарь', 'Chicken fillet, lettuce, small tomatoes, parmesan and mozzarella cheese', 'Куриное филе, листья салата, мелкие помидоры, пармезан и моцарелла', '', '', '', ''),
(55, 'Marqaritta', 'Mozarella pendiri və pomidor sousu', 20, '', '', 0, '2018-04-30 10:17:52', '2018-04-30 10:17:52', 'Margarita', 'Маргарита', 'Mozarella  cheese and tomato souse', 'Сыр моцарелла  и помидорный  соус', '', '', '', ''),
(56, 'Quattro formaggio', '4 pendir (mozzarella, parmesan, gorgonzola, cheddar)', 20, '', '', 0, '2018-04-30 10:51:54', '2018-04-30 10:51:54', 'Quattro formaggio', 'Гуаттро формаджио', '4 cheese (mozzarella, parmesan, gorgonzola, cheddar)', '4 сыра (моцарелла, пармезан, горгонзола, чеддер)', '', '', '', ''),
(57, 'Pepperoni', 'Pomidor sousu, italyan salamisi, jelapinio acı bibər ilə', 20, 'ACILI', '', 0, '2018-04-30 10:58:42', '2018-04-30 10:58:42', 'Pepperoni', 'Пепперони', 'With spicy salami pork, tomato sauce and jalapeno', 'С острой свининой, томатный соус, салями и халапеньо', 'SPICY', 'ОСТРЫЙ', '', ''),
(58, 'Çarli pizza', 'Can əti, qaxac pomidor, bibər, pomidor sous', 20, '', '', 0, '2018-04-30 11:05:53', '2018-04-30 11:05:53', 'Charlie pizza', 'Чарли пицца', 'Beef, sun-dried tomatoes, capsicum, tomato sauce', 'Говядина, вяленые помидоры, стручковый перец,томатный соус', '', '', '', ''),
(59, 'Qarışıq dəniz məhsulu pizzası', 'Midya, kalmar, ahtapot, krivet , qara zeytun, rəngli bibər, pomidor sousu', 20, '', '', 0, '2018-04-30 11:14:23', '2018-04-30 11:14:23', 'Seafood pizza', 'Пицца с морепродуктами', 'Mussels, squid, octopus, prawns, olive, sweet pepper, tomato sauce', 'Мидии, кальмары, осьминог, креветки, оливки, болгарский перец, томатный соус', '', '', '', ''),
(60, 'Hisə verilmiş qızıl balıqlı pizza', 'Hisə verilmiş qızıl balıq, filadelfiya pendiri, kapers, rukula', 20, '', '', 0, '2018-04-30 11:17:09', '2018-04-30 11:17:09', 'Smoked salmon pizza', 'Пицца с копченым лососем', 'Smoked salmon, cheese filadelfiya, capparis, arugula', 'Копченый лосось, сыр филадельфия, каперс, руккола', '', '', '', ''),
(65, 'Aberfeldy single malt 12 whisky', '', 37, '', '', 3, '2018-04-30 13:46:28', '2018-05-10 16:35:53', 'Aberfeldy single malt 12 whisky', 'Aberfeldy single malt 12 whisky', '', '', '', '', '', ''),
(66, 'Glenmorangie quinta ruban 12', '', 37, '', '', 4, '2018-04-30 14:06:09', '2018-05-10 16:35:53', 'Glenmorangie quinta ruban 12', 'Glenmorangie quinta ruban 12', '', '', '', '', '', ''),
(67, 'Highland park 12', '', 37, '', '', 5, '2018-04-30 14:13:18', '2018-05-10 16:35:53', 'Highland park 12', 'Highland park 12', '', '', '', '', '', ''),
(68, 'Hombo iwai', '', 37, '', '', 1, '2018-04-30 14:16:32', '2018-05-10 16:35:52', 'Hombo iwai', 'Hombo iwai', '', '', '', '', '', ''),
(69, 'J & b rare', '', 37, '', '', 6, '2018-04-30 14:23:35', '2018-05-10 16:35:53', 'J & b rare', 'J & b rare', '', '', '', '', '', ''),
(70, 'Jack daniels single', '', 37, '', '', 7, '2018-04-30 14:27:09', '2018-05-10 16:35:53', 'Jack daniels single', 'Jack daniels single', '', '', '', '', '', ''),
(71, 'Jameson', '', 37, '', '', 8, '2018-04-30 14:29:54', '2018-05-10 16:35:53', 'Jameson', 'Jameson', '', '', '', '', '', ''),
(72, 'Jim beam whisky', '', 37, '', '', 9, '2018-04-30 14:36:25', '2018-05-10 16:35:53', 'Jim beam whisky', 'Jim beam whisky', '', '', '', '', '', ''),
(73, 'Johnnie walker black label', '', 37, '', '', 10, '2018-04-30 14:37:24', '2018-05-10 16:35:53', 'Johnnie walker black label', 'Johnnie walker black label', '', '', '', '', '', ''),
(74, 'Johnnie walker blue label', '', 37, '', '', 11, '2018-04-30 14:41:00', '2018-05-10 16:35:53', 'Johnnie walker blue label', 'Johnnie walker blue label', '', '', '', '', '', ''),
(75, 'Johnnie walker double black', '', 37, '', '', 12, '2018-04-30 14:43:40', '2018-05-10 16:35:53', 'Johnnie walker double black', 'Johnnie walker double black', '', '', '', '', '', ''),
(76, 'Johnnie walker gold reserve', '', 37, '', '', 13, '2018-04-30 14:45:35', '2018-05-10 16:35:53', 'Johnnie walker gold reserve', 'Johnnie walker gold reserve', '', '', '', '', '', ''),
(77, 'Johnnie walker platinium label', '', 37, '', '', 14, '2018-04-30 14:48:32', '2018-05-10 16:35:53', 'Johnnie walker platinium label', 'Johnnie walker platinium label', '', '', '', '', '', ''),
(78, 'Johnnie walker red label', '', 37, '', '', 15, '2018-04-30 14:50:41', '2018-05-10 16:35:53', 'Johnnie walker red label', 'Johnnie walker red label', '', '', '', '', '', ''),
(79, 'Laphroaig select', '', 37, '', '', 16, '2018-04-30 14:53:42', '2018-05-10 16:35:53', 'Laphroaig select', 'Laphroaig select', '', '', '', '', '', ''),
(80, 'Macallan fine oak 12 yo', '', 37, '', '', 17, '2018-04-30 14:56:51', '2018-05-10 16:35:53', 'Macallan fine oak 12 yo', 'Macallan fine oak 12 yo', '', '', '', '', '', ''),
(81, 'Macallan fine oak 15 yo', '', 37, '', '', 18, '2018-04-30 15:15:24', '2018-05-10 16:35:53', 'Macallan fine oak 15 yo', 'Macallan fine oak 15 yo', '', '', '', '', '', ''),
(82, 'Macallan fine oak 18 yo', '', 37, '', '', 19, '2018-04-30 15:18:00', '2018-05-10 16:35:53', 'Macallan fine oak 18 yo', 'Macallan fine oak 18 yo', '', '', '', '', '', ''),
(83, 'Ardbeg 10 yo', '', 37, '', '', 20, '2018-04-30 15:24:47', '2018-05-10 16:35:53', 'Ardbeg 10 yo', 'Ardbeg 10 yo', '', '', '', '', '', ''),
(84, 'Auchentosan american oak', '', 37, '', '', 21, '2018-04-30 15:28:43', '2018-05-10 16:35:53', 'Auchentosan american oak', 'Auchentosan american oak', '', '', '', '', '', ''),
(85, 'Ballantines finest', '', 37, '', '', 22, '2018-04-30 15:30:32', '2018-05-10 16:35:54', 'Ballantines finest', 'Ballantines finest', '', '', '', '', '', ''),
(86, 'Balvenie doublewood 12 yo', '', 37, '', '', 23, '2018-04-30 15:32:05', '2018-05-10 16:35:54', 'Balvenie doublewood 12 yo', 'Balvenie doublewood 12 yo', '', '', '', '', '', ''),
(87, 'Balvenie doublewood 14 yo', '', 37, '', '', 24, '2018-04-30 15:33:33', '2018-05-10 16:35:54', 'Balvenie doublewood 14 yo', 'Balvenie doublewood 14 yo', '', '', '', '', '', ''),
(88, 'Balvenie doublewood 17 yo', '', 37, '', '', 25, '2018-04-30 15:34:33', '2018-05-10 16:35:54', 'Balvenie doublewood 17 yo', 'Balvenie doublewood 17 yo', '', '', '', '', '', ''),
(89, 'Bunnahabhain', '', 37, '', '', 26, '2018-04-30 15:36:25', '2018-05-10 16:35:54', 'Bunnahabhain', 'Bunnahabhain', '', '', '', '', '', ''),
(90, 'Bushmils original', '', 37, '', '', 27, '2018-04-30 15:37:51', '2018-05-10 16:35:54', 'Bushmils original', 'Bushmils original', '', '', '', '', '', ''),
(91, 'Cardhu 12 yo', '', 37, '', '', 28, '2018-04-30 15:51:41', '2018-05-10 16:35:54', 'Cardhu 12 yo', 'Cardhu 12 yo', '', '', '', '', '', ''),
(92, 'Chivas regal 12 yo', '', 37, '', '', 29, '2018-04-30 15:54:07', '2018-05-10 16:35:54', 'Chivas regal 12 yo', 'Chivas regal 12 yo', '', '', '', '', '', ''),
(93, 'Chivas regal 18 yo', '', 37, '', '', 30, '2018-04-30 15:58:02', '2018-05-10 16:35:54', 'Chivas regal 18 yo', 'Chivas regal 18 yo', '', '', '', '', '', ''),
(94, 'Chivas regal 21 yo', '', 37, '', '', 31, '2018-04-30 16:00:42', '2018-05-10 16:35:54', 'Chivas regal 21 yo', 'Chivas regal 21 yo', '', '', '', '', '', ''),
(95, 'Dalmore regalis', '', 37, '', '', 32, '2018-04-30 16:03:04', '2018-05-10 16:35:54', 'Dalmore regalis', 'Dalmore regalis', '', '', '', '', '', ''),
(96, 'Dewars white label', '', 37, '', '', 33, '2018-04-30 16:05:34', '2018-05-10 16:35:54', 'Dewars white label', 'Dewars white label', '', '', '', '', '', ''),
(97, 'Famous grouse', '', 37, '', '', 34, '2018-04-30 16:07:39', '2018-05-10 16:35:54', 'Famous grouse', 'Famous grouse', '', '', '', '', '', ''),
(98, 'Glenfiddich 12 yo', '', 37, '', '', 35, '2018-04-30 16:10:24', '2018-05-10 16:35:54', 'Glenfiddich 12 yo', 'Glenfiddich 12 yo', '', '', '', '', '', ''),
(99, 'Glenfiddich 15 yo', '', 37, '', '', 36, '2018-04-30 16:13:59', '2018-05-10 16:35:54', 'Glenfiddich 15 yo', 'Glenfiddich 15 yo', '', '', '', '', '', ''),
(100, 'Glenfiddich 18 yo', '', 37, '', '', 37, '2018-04-30 16:18:02', '2018-05-10 16:35:54', 'Glenfiddich 18 yo', 'Glenfiddich 18 yo', '', '', '', '', '', ''),
(101, 'Glenlivet 12 yo', '', 37, '', '', 38, '2018-04-30 16:25:09', '2018-05-10 16:35:54', 'Glenlivet 12 yo', 'Glenlivet 12 yo', '', '', '', '', '', ''),
(102, 'Glenlivet 15 yo', '', 37, '', '', 39, '2018-04-30 16:26:55', '2018-05-10 16:35:54', 'Glenlivet 15 yo', 'Glenlivet 15 yo', '', '', '', '', '', ''),
(103, 'Glenlivet 18 yo', '', 37, '', '', 40, '2018-04-30 16:28:51', '2018-05-10 16:35:54', 'Glenlivet 18 yo', 'Glenlivet 18 yo', '', '', '', '', '', ''),
(104, 'Glenmorangie 10 yo', '', 37, '', '', 41, '2018-04-30 16:30:55', '2018-05-10 16:35:54', 'Glenmorangie 10 yo', 'Glenmorangie 10 yo', '', '', '', '', '', ''),
(105, 'Glenmorangie nectar d\'or 12 yo', '', 37, '', '', 42, '2018-04-30 17:23:42', '2018-05-10 16:35:54', 'Glenmorangie nectar d\'or 12 yo', 'Glenmorangie nectar d\'or 12 yo', '', '', '', '', '', ''),
(106, 'Nikka miyagikyo', '', 37, '', '', 43, '2018-04-30 17:37:02', '2018-05-10 16:35:55', 'Nikka miyagikyo', 'Nikka miyagikyo', '', '', '', '', '', ''),
(107, 'Nikka taketsuru', '', 37, '', '', 44, '2018-04-30 17:39:53', '2018-05-10 16:35:55', 'Nikka taketsuru', 'Nikka taketsuru', '', '', '', '', '', ''),
(108, 'Nikka yoichi', '', 37, '', '', 45, '2018-04-30 17:41:49', '2018-05-10 16:35:55', 'Nikka yoichi', 'Nikka yoichi', '', '', '', '', '', ''),
(109, 'Suntory hibiki japanes harmon', '', 37, '', '', 46, '2018-04-30 17:44:05', '2018-05-10 16:35:55', 'Suntory hibiki japanes harmon', 'Suntory hibiki japanes harmon', '', '', '', '', '', ''),
(110, 'Suntory kakubin', '', 37, '', '', 47, '2018-04-30 17:45:31', '2018-05-10 16:35:55', 'Suntory kakubin', 'Suntory kakubin', '', '', '', '', '', ''),
(111, 'Talisker 10 yo', '', 37, '', '', 48, '2018-04-30 17:47:17', '2018-05-10 16:35:55', 'Talisker 10 yo', 'Talisker 10 yo', '', '', '', '', '', ''),
(112, 'Tullamore d.e.w.', '', 37, '', '', 49, '2018-04-30 17:48:35', '2018-05-10 16:35:55', 'Tullamore d.e.w.', 'Tullamore d.e.w.', '', '', '', '', '', ''),
(113, 'Olmeca blanco', '', 38, '', '', 0, '2018-04-30 19:57:13', '2018-04-30 19:57:13', 'Olmeca blanco', 'Olmeca blanco', '', '', '', '', '', ''),
(114, 'Olmeca gold', '', 38, '', '', 0, '2018-04-30 19:58:13', '2018-04-30 19:58:13', 'Olmeca gold', 'Olmeca gold', '', '', '', '', '', ''),
(115, 'Olmeca tezon', '', 38, '', '', 0, '2018-04-30 20:01:14', '2018-04-30 20:01:14', 'Olmeca tezon', 'Olmeca tezon', '', '', '', '', '', ''),
(116, 'Don julio', '', 38, '', '', 0, '2018-04-30 20:03:18', '2018-04-30 20:03:18', 'Don julio', 'Don julio', '', '', '', '', '', ''),
(117, 'Patron silver', '', 38, '', '', 0, '2018-04-30 20:04:25', '2018-04-30 20:04:25', 'Patron silver', 'Patron silver', '', '', '', '', '', ''),
(118, 'Patron anejo', '', 38, '', '', 0, '2018-04-30 20:09:37', '2018-04-30 20:09:37', 'Patron anejo', 'Patron anejo', '', '', '', '', '', ''),
(119, 'Patron reposado', '', 38, '', '', 0, '2018-04-30 20:10:19', '2018-04-30 20:10:19', 'Patron reposado', 'Patron reposado', '', '', '', '', '', ''),
(120, 'Beefeter', '', 42, '', '', 0, '2018-04-30 20:12:22', '2018-04-30 20:12:22', 'Beefeter', 'Beefeter', '', '', '', '', '', ''),
(121, 'Bombay sapphire', '', 42, '', '', 0, '2018-04-30 20:13:39', '2018-04-30 20:13:39', 'Bombay sapphire', 'Bombay sapphire', '', '', '', '', '', ''),
(122, 'Tanqueray ten', '', 42, '', '', 0, '2018-04-30 20:15:19', '2018-04-30 20:15:19', 'Tanqueray ten', 'Tanqueray ten', '', '', '', '', '', ''),
(123, 'Bacardi superior', '', 39, '', '', 0, '2018-04-30 20:20:19', '2018-04-30 20:20:19', 'Bacardi superior', 'Bacardi superior', '', '', '', '', '', ''),
(124, 'Bacardi carta oro', '', 39, '', '', 0, '2018-04-30 20:22:57', '2018-04-30 20:22:57', 'Bacardi carta oro', 'Bacardi carta oro', '', '', '', '', '', ''),
(125, 'Bacardi carta negra', '', 39, '', '', 0, '2018-04-30 20:23:39', '2018-04-30 20:23:39', 'Bacardi carta negra', 'Bacardi carta negra', '', '', '', '', '', ''),
(126, 'Bacardi oakheart', '', 39, '', '', 0, '2018-04-30 20:24:28', '2018-04-30 20:24:28', 'Bacardi oakheart', 'Bacardi oakheart', '', '', '', '', '', ''),
(127, 'Havana club 3 anos', '', 39, '', '', 0, '2018-04-30 20:27:09', '2018-04-30 20:27:09', 'Havana club 3 anos', 'Havana club 3 anos', '', '', '', '', '', ''),
(128, 'Havana club especial', '', 39, '', '', 0, '2018-04-30 20:27:57', '2018-04-30 20:27:57', 'Havana club especial', 'Havana club especial', '', '', '', '', '', ''),
(129, 'Havana club 7 anos', '', 39, '', '', 0, '2018-04-30 20:28:28', '2018-04-30 20:28:28', 'Havana club 7 anos', 'Havana club 7 anos', '', '', '', '', '', ''),
(130, 'Absolut original', '', 43, '', '', 0, '2018-04-30 20:34:12', '2018-04-30 20:34:12', 'Absolut original', 'Absolut original', '', '', '', '', '', ''),
(131, 'Absolut citron', '', 43, '', '', 0, '2018-04-30 20:34:45', '2018-04-30 20:34:45', 'Absolut citron', 'Absolut citron', '', '', '', '', '', ''),
(132, 'Finladia', '', 43, '', '', 0, '2018-04-30 20:36:13', '2018-04-30 20:36:13', 'Finladia', 'Finladia', '', '', '', '', '', ''),
(133, 'Beluga', '', 43, '', '', 0, '2018-04-30 20:37:42', '2018-04-30 20:37:42', 'Beluga', 'Beluga', '', '', '', '', '', ''),
(134, 'Grey goose', '', 43, '', '', 0, '2018-04-30 20:39:55', '2018-04-30 20:39:55', 'Grey goose', 'Grey goose', '', '', '', '', '', ''),
(135, 'Grey cardinal', '', 43, '', '', 0, '2018-04-30 20:46:04', '2018-04-30 20:46:04', 'Grey cardinal', 'Grey cardinal', '', '', '', '', '', ''),
(136, 'Tomat supu', '', 17, 'İSTİ', '', 0, '2018-05-01 08:42:55', '2018-05-03 14:34:24', 'Tomato', 'Томатный', '', '', 'HOT', 'ГОРЯЧЕЕ', '', ''),
(137, 'Dana karpaçio', 'Incə doğranmış dana basdırma, rukula, xirda pomidor, parmesan pendiri', 18, '', '', 0, '2018-05-01 09:14:24', '2018-05-01 09:14:24', 'Beef carpacci', 'Карпаччо из телятины', 'Thinly sliced, marinated tenderloin, arugula, small tomato, parmezan', 'Тонко нарезанная маринованная вырезка из телятины, руккола, мелкие помидоры, пармезан', '', '', '', ''),
(138, 'Salmon qabaq sarma', 'Qabaq, qızıl balıq , filadelfiya pendiri, közdə bişirilmiş bibər', 18, '', '', 0, '2018-05-01 09:38:17', '2018-05-01 09:38:17', 'Salmon rolled in a zucchini', 'Лосось свернутый в кабачок', 'Zucchini, salmon, filadelphia cheese, roasted pepper on the grill', 'Кабачки, лосось, сыр филадельфия, перец жареный на мангале', '', '', '', ''),
(139, 'Toyuq naqqets', '', 18, '', '', 0, '2018-05-01 10:29:29', '2018-05-01 10:29:29', 'Chicken nuggets', 'Куриные наггетсы', '', '', '', '', '', ''),
(140, 'Balıq və fri', 'Tilapiya balığı, fransiz sayağı kartof', 18, '', '', 0, '2018-05-01 10:49:15', '2018-05-01 10:49:15', 'Fish & french fries', 'Рыба и картофель фри', 'Tilapia fish, french fries', 'Тилапия рыба, картофель фри', '', '', '', ''),
(141, 'Acili toyuq qanadları', '', 18, 'ACILI', '', 0, '2018-05-01 11:09:48', '2018-05-01 11:09:48', 'Spicy chicken wings', 'Острые куриные крылышки', '', '', 'SPICY', 'ОСТРОЕ', '', ''),
(142, 'Krivetlər klyarda', '', 18, '', '', 0, '2018-05-01 11:11:45', '2018-05-14 14:31:00', 'Prawns in batter', 'Креветки в кляре', '', '', '', '', '', ''),
(143, 'Mal ətindən burger (pendir, salsa ya barbeku sousu ilə)', 'Can əti, pomidor, tutma xiyar, soğan, çedar pendiri (bekon istəklə)', 18, '', '', 0, '2018-05-01 11:23:54', '2018-05-14 13:24:46', 'Beef burger (with cheese, salsa or barbecue sauce)', 'Бургер с говядиной(с сыром, соусом сальса или барбекю)', 'Beef, tomato, pickled cucumber, onion, cheddar cheese (bacon on request)', 'Говядина, помидор, маринованный огурец, лук, сыр чеддер (бекон по желанию)', '', '', '', ''),
(144, 'Toyuq şnizel  burger', 'Toyuq filesi, pesto sous və mozarella pendirilə', 18, '', '', 0, '2018-05-01 11:30:02', '2018-05-14 13:17:42', 'Chicken burger', 'Куриный бургер со шницелем', 'Chicken fillet, pesto sauce and mozarella', 'Куриное филе, соус песто, моцарелла', '', '', '', ''),
(145, 'Qoz qaymaq və mozarella ile doldurulmuş göbələk', '', 18, '', '', 0, '2018-05-01 11:34:48', '2018-05-01 11:34:48', 'Stuffed mushroom with walnuts and cream with mozzarella cheese', 'Грибы фаршированные грецкими орехами и сливками с сыром моцарелла', '', '', '', '', '', ''),
(146, 'Grand set', 'Mozarella pendiri, toyuq naqqets, krivet, kalmar', 18, '', '', 0, '2018-05-01 11:37:51', '2018-05-14 14:37:36', 'Grand set', 'Гранд сет', 'Mozarella, nuggets , shrimp, calimari', 'Сыр моцарелла, куриные наггетсы, креветки, кальмары', '', '', '', ''),
(147, 'Klub sendviç', 'Toyuq filesi, gouda pendiri, qayğanaq, xiyar, pomidor, tutma xiyar,  kartof fri,\r\nhinquşu kolbasa ya bekon (istekle)', 18, '', '', 0, '2018-05-01 11:40:04', '2018-05-14 13:11:21', 'Club sandwich', 'Клаб сэндвич', 'Chicken fillet, gouda cheese, rare omlet, cucumber, tomato, pickled cucumber, french fries, turkey sausage or bacon (on request)', 'Куриное филе, сыр гауда, глазунья, огурец, помидор, маринованный огурец, картофель фри, колбаса из индейки или бекон (по желанию)', '', '', '', ''),
(148, 'Steyk sendviç', 'Can əti, pendir, pomidor, kahi', 18, '', '', 0, '2018-05-01 11:41:44', '2018-05-14 13:16:01', 'Steak  sandwich', 'Сэндвич со стейком', 'Beef, cheese, tomato, lettuce', 'Говядина, сыр, помидор, листья салата', '', '', '', ''),
(149, 'Chicken bar roll', 'Şirin çili sousunda toyuq, düyü, nori, küncüt, tobiko', 26, '', '', 0, '2018-05-01 14:33:30', '2018-05-01 14:33:30', 'Chicken bar roll', 'Chicken bar roll', 'Fried chicken in sweet chili sauce, rice, nori, sesame, tobico', 'Куриное филе обжаренное в соусе свитчили, рис, нори, кунжут, тобико', '', '', '', ''),
(150, 'Green dragon', 'Ilan balıqı, avokado, düyü, xiyar, nori, tobiko', 26, '', '', 0, '2018-05-01 14:42:27', '2018-05-01 14:42:27', 'Green dragon', 'Green dragon', 'Unagi, avocado, rice, cucumber,  nori, tobiko', 'Унаги, авокадо, рис, огурец, нори, тобико', '', '', '', ''),
(151, 'Montoku roll', 'Filadelfiya pendiri, teriyaki sousunda qızardılmış qızıl balıq, xiyar, nori, düyü, kahı, qara və narıncı tobiko', 26, '', '', 0, '2018-05-01 14:47:24', '2018-05-01 14:47:24', 'Montoku roll', 'Монтоку ролл', 'Philadelphia cheese, salmon fried in teriyaki sauce, cucumber, nori, rice, lettuce, black and orange tobiko', 'Сыр филадельфия, лосось жареный в соусе терияки, огурец, нори, рис, листья салата, черный и оранжевый тобико', '', '', '', ''),
(152, 'Nimme roll', 'Filadelfiya pendiri, qızıl balıqin kürüsü, yapon sayağı amlet, avokado, nori, düyü, tobiko', 26, '', '', 0, '2018-05-01 14:59:12', '2018-05-01 14:59:12', 'Nimme roll', 'Нимме ролл', 'Philadelphia cheese, salmon caviar, japanese omlet, avocado, nori, rice, tobiko', 'Сыр филадельфия, лососевая икра, японский омлет, авокадо, нори, рис, тобико', '', '', '', ''),
(153, 'Eki maki', 'Tempura krivet, nori, düyü, kahı, şirin çili sousu', 31, '', '', 0, '2018-05-01 15:13:00', '2018-05-15 14:43:29', 'Eki maki', 'Эки маки', 'Tempura shrimps, nori, rice, lettuce, sweet chili sauce', 'Темпура креветки, соус свитчили, листья салата, нори, рис', '', '', '', ''),
(154, 'Unaqi  maki', 'Ilan balığı, nori, düyü, xiyar, unaqi sousu, küncüt', 31, '', '', 0, '2018-05-01 15:19:11', '2018-05-01 15:19:11', 'Unaqi  maki', 'Унаги маки', 'Unagi, nori, rice, cucumber, unagi sauce, sesame', 'Унаги, нори, рис, огурец, унаги соус, кунжут', '', '', '', ''),
(155, 'Kappa maki', 'Xiyar, düyü, nori, küncüt', 31, '', '', 0, '2018-05-01 15:32:28', '2018-05-01 15:32:28', 'Kappa maki', 'Капамаки', 'Cucumber, rice, nori, sesame', 'Огурец, рис, нори, кунжут', '', '', '', ''),
(156, 'Avocado maki', 'Avokado, düyü, nori', 31, '', '', 0, '2018-05-01 15:34:41', '2018-05-01 15:34:41', 'Avocado maki', 'Авокадо маки', 'Avocado, rice, nori', 'Авокадо, рис, нори', '', '', '', ''),
(157, 'Makota maki', 'Hisə verilmiş qızıl balıq, filadelfiya pendiri, düyü, nori,', 31, '', '', 0, '2018-05-01 15:53:20', '2018-05-01 15:53:20', 'Makota maki', 'Макотамаки', 'Smoked salmon, philadelphia cheese, rice, nori', 'Копченый лосось, сыр филадельфия, рис, нори', '', '', '', ''),
(158, 'Akio maki', 'Ilan balığı, düyü,  nori, kahı', 31, '', '', 0, '2018-05-01 15:57:16', '2018-05-01 15:57:16', 'Akio maki', 'Акиомаки', 'Unagi, rice, nori, lettuce', 'Унаги, рис, нори, листья салата', '', '', '', ''),
(159, 'Seki maki', 'Qızıl balıq, düyü, nori', 31, '', '', 0, '2018-05-01 16:00:24', '2018-05-01 16:00:24', 'Seki maki', 'Сакимаки', 'Salmon, rice, nori', 'Лосось, рис, нори', '', '', '', ''),
(160, 'Bravissimo', 'Qızıl balıq, avokado, filadelfiya pendiri, düyü, nori', 27, '', '', 0, '2018-05-01 16:07:36', '2018-05-01 16:07:36', 'Bravissimo', 'Бравиисемо', 'Salmon, avocado, philadelphia cheese, rice, nori', 'Лосось, авокадо, сыр филадельфия, рис, нори', '', '', '', ''),
(161, 'Manhatten', 'Krivet, filadelfiya pendiri, xiyar, düyü, nori', 27, '', '', 0, '2018-05-01 16:11:19', '2018-05-01 16:11:19', 'Manhatten', 'Манхеттен', 'Prawns, philadelphia cheese, cucumber, rice, nori', 'Креветки, сыр филадельфия, огурец, рис, нори', '', '', '', ''),
(162, 'Ebi cheese roll', 'Krivet, avokado, filadelfiya pendiri, düyü, nori, küncüt', 26, '', '', 0, '2018-05-01 16:24:02', '2018-05-01 16:24:02', 'Ebi cheese roll', 'Ebi cheese roll', 'Prawns, avocado,  philadelphia cheese, rice, nori. sesame', 'Креветки, авокадо, сыр филадельфия, рис, нори, кунжут', '', '', '', ''),
(163, 'Philadelphia hot', 'Qızıl balıq, filadelfiya pendiri, düyü, nori', 27, '', '', 0, '2018-05-01 16:27:57', '2018-05-01 16:27:57', 'Philadelphia hot', 'Филадельфия хот', 'Salmon, philadelphia cheese, rice, nori', 'Лосось, сыр филадельфия, рис, нори', '', '', '', ''),
(164, 'Grand hotel  maki', 'Ilan balığı, quşqonmaz, filadelfiya pendiri, düyü, nori', 27, '', '', 0, '2018-05-01 16:32:16', '2018-05-01 16:32:16', 'Grand hotel  maki', 'Grand hotel  maki', 'Unagi, asparagus, philadelphia cheese, rice, nori', 'Унаги, спаржа, сыр филадельфия, рис, нори', '', '', '', ''),
(165, 'Aperol', '', 45, '', '', 0, '2018-05-02 12:26:56', '2018-05-02 12:26:56', 'Aperol', 'Aperol', '', '', '', '', '', ''),
(166, 'Amaro di angostura', '', 45, '', '', 0, '2018-05-02 12:28:39', '2018-05-02 12:28:39', 'Amaro di angostura', 'Amaro di angostura', '', '', '', '', '', ''),
(167, 'Baileys', '', 45, '', '', 0, '2018-05-02 12:32:42', '2018-05-02 12:32:42', 'Baileys', 'Baileys', '', '', '', '', '', ''),
(168, 'Becherovka', '', 45, '', '', 0, '2018-05-02 12:34:45', '2018-05-02 12:34:45', 'Becherovka', 'Becherovka', '', '', '', '', '', ''),
(169, 'Bols cherry brendy', '', 45, '', '', 0, '2018-05-02 12:37:34', '2018-05-02 12:37:34', 'Bols cherry brendy', 'Bols cherry brendy', '', '', '', '', '', ''),
(170, 'Bols creme de cassis', '', 45, '', '', 0, '2018-05-02 12:40:13', '2018-05-02 12:40:13', 'Bols creme de cassis', 'Bols creme de cassis', '', '', '', '', '', ''),
(171, 'Bols yoghurt', '', 45, '', '', 0, '2018-05-02 12:42:32', '2018-05-02 12:42:32', 'Bols yoghurt', 'Bols yoghurt', '', '', '', '', '', ''),
(172, 'Campari', '', 45, '', '', 0, '2018-05-02 12:44:06', '2018-05-02 12:44:06', 'Campari', 'Campari', '', '', '', '', '', ''),
(173, 'Cointreau', '', 45, '', '', 0, '2018-05-02 12:45:13', '2018-05-02 12:45:13', 'Cointreau', 'Cointreau', '', '', '', '', '', ''),
(174, 'Disaronno amaretto', '', 45, '', '', 0, '2018-05-02 12:48:17', '2018-05-02 12:48:17', 'Disaronno amaretto', 'Disaronno amaretto', '', '', '', '', '', ''),
(175, 'Dom benedictine', '', 45, '', '', 0, '2018-05-02 12:49:48', '2018-05-02 12:49:48', 'Dom benedictine', 'Dom benedictine', '', '', '', '', '', ''),
(176, 'Drambuie', '', 45, '', '', 0, '2018-05-02 12:51:06', '2018-05-02 12:51:06', 'Drambuie', 'Drambuie', '', '', '', '', '', ''),
(177, 'Jagermeister', '', 45, '', '', 0, '2018-05-02 12:52:28', '2018-05-02 12:52:28', 'Jagermeister', 'Jagermeister', '', '', '', '', '', ''),
(178, 'Kahlua', '', 45, '', '', 0, '2018-05-02 12:53:39', '2018-05-02 12:53:39', 'Kahlua', 'Kahlua', '', '', '', '', '', ''),
(179, 'Luxardomaraschino', '', 45, '', '', 0, '2018-05-02 12:55:22', '2018-05-02 12:55:22', 'Luxardomaraschino', 'Luxardomaraschino', '', '', '', '', '', ''),
(180, 'Malibu', '', 45, '', '', 0, '2018-05-02 12:56:40', '2018-05-02 12:56:40', 'Malibu', 'Malibu', '', '', '', '', '', ''),
(181, 'Southern comfort', '', 45, '', '', 0, '2018-05-02 12:57:51', '2018-05-02 12:57:51', 'Southern comfort', 'Southern comfort', '', '', '', '', '', ''),
(182, 'Tia maria', '', 45, '', '', 0, '2018-05-02 12:58:39', '2018-05-02 12:58:39', 'Tia maria', 'Tia maria', '', '', '', '', '', ''),
(183, 'Martini bianco', '', 48, '', '', 0, '2018-05-02 13:07:51', '2018-05-02 13:07:51', 'Martini bianco', 'Martini bianco', '', '', '', '', '', ''),
(184, 'Martini rosso', '', 48, '', '', 0, '2018-05-02 13:08:22', '2018-05-02 13:08:22', 'Martini rosso', 'Martini rosso', '', '', '', '', '', ''),
(185, 'Martini rosato', '', 48, '', '', 0, '2018-05-02 13:08:55', '2018-05-02 13:08:55', 'Martini rosato', 'Martini rosato', '', '', '', '', '', ''),
(186, 'Martini extra dry', '', 48, '', '', 0, '2018-05-02 13:09:30', '2018-05-02 13:09:30', 'Martini extra dry', 'Martini extra dry', '', '', '', '', '', ''),
(187, 'A.metz selection riesling', '', 49, '', '', 0, '2018-05-02 13:37:23', '2018-05-02 13:37:23', 'A.metz selection riesling', 'A.metz selection riesling', '', '', '', '', '', ''),
(188, 'Danzante merlot', '', 49, '', '', 0, '2018-05-02 13:38:51', '2018-05-02 13:38:51', 'Danzante merlot', 'Danzante merlot', '', '', '', '', '', ''),
(189, 'Ch. des deux rives', '', 49, '', '', 0, '2018-05-02 13:39:34', '2018-05-02 13:39:34', 'Ch. des deux rives', 'Ch. des deux rives', '', '', '', '', '', ''),
(190, 'Ch. mezain', '', 49, '', '', 0, '2018-05-02 13:40:22', '2018-05-02 13:40:22', 'Ch. mezain', 'Ch. mezain', '', '', '', '', '', ''),
(191, 'Danzante pinot grigio', '', 49, '', '', 0, '2018-05-02 13:41:44', '2018-05-02 13:41:44', 'Danzante pinot grigio', 'Danzante pinot grigio', '', '', '', '', '', ''),
(192, 'Fine tawny taylors', '', 49, '', '', 0, '2018-05-02 13:43:43', '2018-05-02 13:43:43', 'Fine tawny taylors', 'Fine tawny taylors', '', '', '', '', '', ''),
(193, 'Hill side chardonay', '', 49, '', '', 0, '2018-05-02 13:45:47', '2018-05-02 13:45:47', 'Hill side chardonay', 'Hill side chardonay', '', '', '', '', '', ''),
(194, 'Hill side prestige', '', 49, '', '', 0, '2018-05-02 13:46:50', '2018-05-02 13:46:50', 'Hill side prestige', 'Hill side prestige', '', '', '', '', '', ''),
(195, 'Hill side reserve', '', 49, '', '', 0, '2018-05-02 13:55:35', '2018-05-02 13:55:35', 'Hill side reserve', 'Hill side reserve', '', '', '', '', '', ''),
(196, 'Hill side rose', '', 49, '', '', 0, '2018-05-02 13:56:06', '2018-05-02 13:56:06', 'Hill side rose', 'Hill side rose', '', '', '', '', '', ''),
(197, 'Maipo pueblo sauvingnon blanc', '', 49, '', '', 0, '2018-05-02 13:57:02', '2018-05-02 13:57:02', 'Maipo pueblo sauvingnon blanc', 'Maipo pueblo sauvingnon blanc', '', '', '', '', '', ''),
(198, 'Maipo pueblo syrab', '', 49, '', '', 0, '2018-05-02 13:57:47', '2018-05-02 13:57:47', 'Maipo pueblo syrab', 'Maipo pueblo syrab', '', '', '', '', '', ''),
(199, 'Riesling classic moselland dry', '', 49, '', '', 0, '2018-05-02 13:59:01', '2018-05-02 13:59:01', 'Riesling classic moselland dry', 'Riesling classic moselland dry', '', '', '', '', '', ''),
(200, 'Tall horse cabernet sauv. south africa', '', 49, '', '', 0, '2018-05-02 14:00:36', '2018-05-02 14:00:36', 'Tall horse cabernet sauv. south africa', 'Tall horse cabernet sauv. south africa', '', '', '', '', '', ''),
(201, 'Tall horse chardonnay south africa', '', 49, '', '', 0, '2018-05-02 14:01:33', '2018-05-02 14:01:33', 'Tall horse chardonnay south africa', 'Tall horse chardonnay south africa', '', '', '', '', '', ''),
(202, 'Banfi chianti classico', '', 49, '', '', 0, '2018-05-02 14:03:29', '2018-05-02 14:03:29', 'Banfi chianti classico', 'Banfi chianti classico', '', '', '', '', '', ''),
(203, 'Castiglioni chianti', '', 49, '', '', 0, '2018-05-02 14:05:04', '2018-05-02 14:05:04', 'Castiglioni chianti', 'Castiglioni chianti', '', '', '', '', '', ''),
(204, 'Segnanna grappa gentle', '', 49, '', '', 0, '2018-05-02 14:07:20', '2018-05-02 14:07:20', 'Segnanna grappa gentle', 'Segnanna grappa gentle', '', '', '', '', '', ''),
(205, 'Segnanna solera di solera', '', 49, '', '', 0, '2018-05-02 14:08:17', '2018-05-02 14:08:17', 'Segnanna solera di solera', 'Segnanna solera di solera', '', '', '', '', '', ''),
(206, 'Courvoisier vs', '', 50, '', '', 0, '2018-05-02 14:20:32', '2018-05-02 14:20:32', 'Courvoisier vs', 'Courvoisier vs', '', '', '', '', '', ''),
(207, 'Courvoisier vsop', '', 50, '', '', 0, '2018-05-02 14:23:06', '2018-05-02 14:23:06', 'Courvoisier vsop', 'Courvoisier vsop', '', '', '', '', '', ''),
(208, 'Courvoisier xo', '', 50, '', '', 0, '2018-05-02 14:24:11', '2018-05-02 14:24:11', 'Courvoisier xo', 'Courvoisier xo', '', '', '', '', '', ''),
(209, 'Hennessy vs', '', 50, '', '', 0, '2018-05-02 14:25:16', '2018-05-02 14:25:16', 'Hennessy vs', 'Hennessy vs', '', '', '', '', '', ''),
(210, 'Hennessy vsop', '', 50, '', '', 0, '2018-05-02 14:26:34', '2018-05-02 14:26:34', 'Hennessy vsop', 'Hennessy vsop', '', '', '', '', '', ''),
(211, 'Hennessy xo', '', 50, '', '', 0, '2018-05-02 14:27:50', '2018-05-02 14:27:50', 'Hennessy xo', 'Hennessy xo', '', '', '', '', '', ''),
(212, 'Remy martin vs', '', 50, '', '', 0, '2018-05-02 14:28:59', '2018-05-02 14:28:59', 'Remy martin vs', 'Remy martin vs', '', '', '', '', '', ''),
(213, 'Remy martin vsop', '', 50, '', '', 0, '2018-05-02 14:30:25', '2018-05-02 14:30:25', 'Remy martin vsop', 'Remy martin vsop', '', '', '', '', '', ''),
(214, 'Martel vs', '', 50, '', '', 0, '2018-05-02 14:31:36', '2018-05-02 14:31:36', 'Martel vs', 'Martel vs', '', '', '', '', '', ''),
(215, 'Martel vsop', '', 50, '', '', 0, '2018-05-02 14:32:21', '2018-05-02 14:32:21', 'Martel vsop', 'Martel vsop', '', '', '', '', '', ''),
(216, 'Dom perignon 2006', '', 51, '', '', 0, '2018-05-02 14:34:17', '2018-05-02 14:34:17', 'Dom perignon 2006', 'Dom perignon 2006', '', '', '', '', '', ''),
(217, 'Veuve clicquot ponsardin brut', '', 51, '', '', 0, '2018-05-02 14:35:46', '2018-05-02 14:35:46', 'Veuve clicquot ponsardin brut', 'Veuve clicquot ponsardin brut', '', '', '', '', '', ''),
(218, 'Moet & chandon brut', '', 51, '', '', 0, '2018-05-02 14:37:22', '2018-05-02 14:37:22', 'Moet & chandon brut', 'Moet & chandon brut', '', '', '', '', '', ''),
(219, 'Astoria red label prosecco d.o.c', '', 51, '', '', 0, '2018-05-02 14:49:11', '2018-05-02 14:49:11', 'Astoria red label prosecco d.o.c', 'Astoria red label prosecco d.o.c', '', '', '', '', '', ''),
(220, 'Corona extra', '', 46, '', '', 0, '2018-05-02 14:50:42', '2018-05-02 14:50:42', 'Corona extra', 'Corona extra', '', '', '', '', '', ''),
(221, 'Efes', '', 46, '', '', 0, '2018-05-02 14:55:48', '2018-05-02 14:55:48', 'Efes', 'Efes', '', '', '', '', '', ''),
(222, 'Efes draft', '', 46, '', '', 0, '2018-05-02 14:57:01', '2018-05-02 14:57:01', 'Efes draft', 'Efes draft', '', '', '', '', '', ''),
(223, 'Efes zero', '', 46, '', '', 0, '2018-05-02 15:00:15', '2018-05-02 15:00:15', 'Efes zero', 'Efes zero', '', '', '', '', '', ''),
(224, 'Heineken', '', 46, '', '', 0, '2018-05-02 15:03:37', '2018-05-02 15:03:37', 'Heineken', 'Heineken', '', '', '', '', '', ''),
(225, 'Miller', '', 46, '', '', 0, '2018-05-02 15:06:03', '2018-05-02 15:06:03', 'Miller', 'Miller', '', '', '', '', '', ''),
(226, 'Xirdalan', '', 46, '', '', 0, '2018-05-02 15:07:37', '2018-05-02 15:07:37', 'Xirdalan', 'Xirdalan', '', '', '', '', '', ''),
(229, 'Mai passion tai', 'Rum, cointreau, marakuya, badem siropı, disaronno, lime soki, angostura', 52, '', '', 0, '2018-05-02 15:51:58', '2018-05-02 16:29:51', 'Mai passion tai', 'Mai passion tai', 'Rum, cointreau, passion fruit pure, almond syrup, disaronno, lime juice, angostura bitter', 'Ром, куантро, пюре маракуи, миндальный сироп, дисаронно, сок лайма, ангостура', '', '', '', ''),
(230, 'Caribbean nights', '3 növ rum, darçın siropı, qreypfrut freşı', 52, '', '', 0, '2018-05-02 16:07:56', '2018-05-02 16:29:13', 'Caribbean nights', 'Caribbean nights', '3 kinds of  rum, cinnamon syrup, grapefruit fresh', '3 вида рома, коричный сироп, грейпфрутовый фреш', '', '', '', ''),
(231, 'Lincengburg lemonade', 'Bourbon, cointreau, southern comfort, gazdi su', 52, '', '', 0, '2018-05-02 16:21:46', '2018-05-02 16:21:46', 'Lincengburg lemonade', 'Lincengburg lemonade', 'Bourbon, cointreau, southern comfort, soda', 'Бурбон, куантро, southern comfort, содовая', '', '', '', ''),
(232, 'Old times', 'Vodka, çiyələk siropı, darçın, qreypfrut freşı', 52, '', '', 0, '2018-05-02 16:28:06', '2018-05-02 16:28:06', 'Old times', 'Old times', 'Vodka, strawberry syrup, cinnamon, grapefruit fresh', 'Водка, клубничный сироп, корица, грейпфрут фреш', '', '', '', ''),
(233, 'Aperol spritz', 'Aperol, prosocco', 52, '', '', 0, '2018-05-02 17:24:10', '2018-05-02 17:24:10', 'Aperol spritz', 'Aperol spritz', 'Aperol, prosocco', 'Aperol, prosocco', '', '', '', ''),
(234, 'Spisy coffee', 'Amaro di angostura, rum, tia maria, ananas soku', 52, '', '', 0, '2018-05-02 17:28:01', '2018-05-02 17:28:01', 'Spisy coffee', 'Spisy coffee', 'Amaro di angostura, rum, tia maria, pineapple juice', 'Amaro di angostura, ром пряный, tia maria, ананасовый сок', '', '', '', ''),
(235, 'Summer breeze', 'Remy martin vsop, cointreau, prosecco', 52, '', '', 0, '2018-05-02 17:37:00', '2018-05-02 17:37:00', 'Summer breeze', 'Summer breeze', 'Remy martin vsop, cointreau, prosecco', 'Remy martin vsop, cointreau, prosecco', '', '', '', ''),
(236, 'Strawberry basil', 'Vodka, çiyələk, reyhan', 53, '', '', 0, '2018-05-02 17:39:52', '2018-05-02 17:39:52', 'Strawberry basil', 'Strawberry basil', 'Vodka, strawberry, basil', 'Водка, клубника, базилик', '', '', '', ''),
(237, 'Silent martini', 'Vodka, ruccola, zəncəfil freş', 53, '', '', 0, '2018-05-02 17:41:49', '2018-05-02 17:41:49', 'Silent martini', 'Silent martini', 'Vodka, ruccola, ginger fresh', 'Водка, руккола, имбирьный фреш', '', '', '', ''),
(238, 'Green light', 'Gin, reyhan, badam siropı', 53, '', '', 0, '2018-05-02 17:44:01', '2018-05-02 17:44:01', 'Green light', 'Green light', 'Gin, basil, almond syrup', 'Джин, базилик, миндальный сироп', '', '', '', ''),
(239, 'Kinza marauli', 'Tequila, keşniş, ananas, badem siropı', 53, '', '', 0, '2018-05-02 17:45:38', '2018-05-02 17:45:38', 'Kinza marauli', 'Kinza marauli', 'Tequila, cilantro, pineapple, almond syrup', 'Текила, кинза, ананас, миндальный сироп', '', '', '', ''),
(240, 'Vanilla ninja', 'Vodka vanilya, marakuya siropı, çiyələk, ananas, kəklik, yumurta ağı', 53, '', '', 0, '2018-05-02 17:48:54', '2018-05-02 17:48:54', 'Vanilla ninja', 'Vanilla ninja', 'Vodka vanilla, passion syrup, strawberry, pineapple, thyme, egg white', 'Водка ваниль, сироп маракуи, клубника, ананас, тимьян, яичный белок', '', '', '', ''),
(241, 'Penicillin', 'Viski, bal siropı, zəncəfil freş, tək malt viski', 53, '', '', 0, '2018-05-02 17:53:57', '2018-05-02 17:53:57', 'Penicillin', 'Penicillin', 'Whisky, honey syrup, ginger fresh, single malt whiskey', 'Виски, медовый сироп, имбирь фреш, односолодовый виски', '', '', '', ''),
(242, 'Sweet juniper', 'Tanquirey ten, badam siropı, maraschino, disaronno', 53, '', '', 0, '2018-05-02 18:01:39', '2018-05-02 18:01:39', 'Sweet juniper', 'Sweet juniper', 'Tanquirey ten, almond syrup, maraschino, disaronno', 'Tanquirey ten, миндальный сироп, maraschino, disaronno', '', '', '', ''),
(243, 'Tomis margarita', 'Tequila, lime freş, agave siropı', 53, '', '', 0, '2018-05-02 18:09:49', '2018-05-02 18:09:49', 'Tomis margarita', 'Tomis margarita', 'Tequila, lime juice, agave syrup', 'Текила, сок лайма, сироп агавы', '', '', '', ''),
(244, 'Maligna', 'Moruq, yoğurt likörü, laym freş', 53, '', '', 0, '2018-05-02 18:12:49', '2018-05-02 18:12:49', 'Maligna', 'Maligna', 'Raspberries, yoghurt liqueur, lime juice', 'Малина, йогуртовый ликер, сок лайма', '', '', '', ''),
(245, 'Dutch style', 'Tanqueray ten, martini rosso, qreypfrut freşı', 53, '', '', 0, '2018-05-02 18:14:52', '2018-05-02 18:14:52', 'Dutch style', 'Dutch style', 'Tanquirey ten, martini rosso, grapefruit fresh', 'Tanqueray ten, martini rosso, грейпфрутовый фреш', '', '', '', ''),
(246, 'Zhucchero amaro', 'Amaro di angostura, limon freşı, şəkər siropı, yumurta ağı, angostura', 53, '', '', 0, '2018-05-02 18:16:42', '2018-05-02 18:16:42', 'Zhucchero amaro', 'Zhucchero amaro', 'Amaro di angostura, lemon juice, sugar syrup, egg white, angostura', 'Амаро ди ангостура, лимонный сок, сахарный сироп, яичный белок, ангостура', '', '', '', '');
INSERT INTO `items` (`id`, `name`, `description`, `category_id`, `warning`, `composition`, `position`, `created_at`, `updated_at`, `name_en`, `name_ru`, `description_en`, `description_ru`, `warning_en`, `warning_ru`, `composition_en`, `composition_ru`) VALUES
(247, 'Negroni', 'Gin, martini rosso, campari', 54, '', '', 0, '2018-05-02 18:17:37', '2018-05-02 18:17:37', 'Negroni', 'Negroni', 'Gin, martini rosso, campari', 'Gin, martini rosso, campari', '', '', '', ''),
(248, 'Old fashioned', 'Bourbon, şəkər, angostura', 54, '', '', 0, '2018-05-02 18:19:14', '2018-05-02 18:19:14', 'Old fashioned', 'Old fashioned', 'Bourbon, sugar, bitter', 'Бурбон, сахар, ангостура', '', '', '', ''),
(249, 'Martinez', 'Gin, martini rosso, maraschino', 54, '', '', 0, '2018-05-02 18:19:47', '2018-05-02 18:19:47', 'Martinez', 'Martinez', 'Gin, martini rosso, maraschino', 'Gin, martini rosso, maraschino', '', '', '', ''),
(250, 'Manhattan', 'Bourbon, martini rosso, angostura', 54, '', '', 0, '2018-05-02 18:21:42', '2018-05-02 18:21:42', 'Manhattan', 'Manhattan', 'Bourbon, martini rosso, angostura', 'Бурбон, мартини россо, ангостура', '', '', '', ''),
(251, 'French 75', 'Gin, prosecco', 54, '', '', 0, '2018-05-02 18:23:11', '2018-05-02 18:23:11', 'French 75', 'French 75', 'Gin, prosecco', 'Джин, prosecco', '', '', '', ''),
(252, 'Daiquiri', 'Rum, laym freşı, şəkər siropı', 54, '', '', 0, '2018-05-02 18:25:05', '2018-05-02 18:25:05', 'Daiquiri', 'Daiquiri', 'Rum, lime juice, sugar syrup', 'Ром, сок лайма, сахарный сироп', '', '', '', ''),
(253, 'Whisky sour', 'Bourbon, kəm-şirin mix, yumurta ağı', 54, '', '', 0, '2018-05-02 18:27:39', '2018-05-02 18:27:39', 'Whisky sour', 'Whisky sour', 'Bourbon, sour mix, egg white', 'Бурбон, кисло-сладкая часть, яичный белок', '', '', '', ''),
(254, 'Clover club', 'Gin, moruq, moruq siropı, martini rosso, yumurta ağı', 54, '', '', 0, '2018-05-02 18:29:56', '2018-05-02 18:29:56', 'Clover club', 'Clover club', 'Gin, raspberries syrup, martini rosso, egg white', 'Джин, малина, малиновый сироп, мартини россо, яйчный белок', '', '', '', ''),
(255, 'Espresso martini', 'Vodka, kahlua, tia maria, espresso', 54, '', '', 0, '2018-05-02 18:30:37', '2018-05-02 18:30:37', 'Espresso martini', 'Espresso martini', 'Vodka, kahlua, tia maria, espresso', 'Vodka, kahlua, tia maria, espresso', '', '', '', ''),
(256, 'Rusty nail', 'Scotch, drambuie', 54, '', '', 0, '2018-05-02 18:31:29', '2018-05-02 18:31:29', 'Rusty nail', 'Rusty nail', 'Scotch, drambuie', 'Scotch, drambuie', '', '', '', ''),
(257, 'Sea buckthorn – basil', 'Reyhan, çaytikan mürəbəsi, badam siropı, limon freşı, gazdı su', 55, '', '', 0, '2018-05-02 18:38:56', '2018-05-02 18:38:56', 'Sea buckthorn – basil', 'Sea buckthorn – basil', 'Basil, puree sea buckthorn, almond syrup, lemon fresh, soda', 'Базилик, облепиховое варение, миндальный сироп, лимонный фреш, содавая', '', '', '', ''),
(258, 'Berry macadamia', 'Gara garagat mürəbəsi, macadamia siropı, lemon freşı, gazdı su', 55, '', '', 0, '2018-05-02 18:40:48', '2018-05-02 18:42:50', 'Berry macadamia', 'Berry macadamia', 'Blackcurrant jam, syrup macadamia, lemon juice, soda', 'Варение из черной смородины, сироп макадамия, лимонный сок, содавая', '', '', '', ''),
(259, 'Raspberry jacket', 'Moruq, badam siropı, laym freşı, zəncəfil freşı, ananas şirəsi', 55, '', '', 0, '2018-05-02 18:46:29', '2018-05-02 18:46:29', 'Raspberry jacket', 'Raspberry jacket', 'Raspberry, almond syrup, lime juice, ginger fresh, pineapple juice', 'Малина, миндальный сироп, сок лайма, имбирь фреш, ананасовый сок', '', '', '', ''),
(261, 'Meyvə şirəsi', '', 47, '', '', 0, '2018-05-05 11:44:10', '2018-05-05 11:44:10', 'Fruit juice', 'Фруктовые соки', '', '', '', '', '', ''),
(262, 'Espresso qəhvə, amerikan, cappuccino, latte', '', 41, '', '', 0, '2018-05-05 11:53:09', '2018-05-06 16:15:12', 'Espresso coffee, americano, cappuccino, latte', 'Кофе эспрессо, американо, капучино, латте', '', '', '', '', '', ''),
(263, 'Türk qəhvəsi', '', 41, '', '', 0, '2018-05-05 11:57:37', '2018-05-06 16:15:54', 'Turkish coffee', 'Турецкий кофе', '', '', '', '', '', ''),
(264, 'Coca-cola, fanta, sprite, tonik', '', 47, '', '', 0, '2018-05-05 11:59:47', '2018-05-05 11:59:47', 'Coca-cola, fanta, sprite, tonic', 'Кока-кола, фанта, спрайт, тоник', '', '', '', '', '', ''),
(265, 'Təzə sıxılmış şirələr', '', 47, '', '', 0, '2018-05-05 12:06:06', '2018-05-05 12:06:06', 'Fresh juices', 'Свежевыжатые соки', '', '', '', '', '', ''),
(266, 'Təzə sıxılmış ananas', '', 47, '', '', 0, '2018-05-05 12:07:54', '2018-05-05 12:07:54', 'Freshly squeezed pineapple', 'Свежевыжатый ананас', '', '', '', '', '', ''),
(267, 'Mineral su', '', 47, '', '', 0, '2018-05-05 12:12:14', '2018-05-05 12:12:14', 'Mineral water', 'Минеральная вода', '', '', '', '', '', ''),
(268, 'Milk oolong', '', 41, '', '', 0, '2018-05-06 16:20:31', '2018-05-06 16:20:31', 'Milk oolong', 'Молочный улун', '', '', '', '', '', ''),
(269, 'Ceylon op kenilworth', '', 41, '', '', 0, '2018-05-06 16:27:30', '2018-05-06 16:27:30', 'Ceylon op kenilworth', 'Ceylon op kenilworth', '', '', '', '', '', ''),
(270, 'Black berries of the forest', '', 41, '', '', 0, '2018-05-06 16:30:18', '2018-05-06 16:30:18', 'Black berries of the forest', 'Черные лесные ягоды', '', '', '', '', '', ''),
(271, 'Black tea earl grey', '', 41, '', '', 0, '2018-05-06 16:31:25', '2018-05-06 16:31:25', 'Black tea earl grey', 'Черный чай earl grey', '', '', '', '', '', ''),
(272, 'China sencha organic', '', 41, '', '', 0, '2018-05-06 16:32:46', '2018-05-06 16:32:46', 'China sencha organic', 'China sencha organic', '', '', '', '', '', ''),
(273, 'Qara çay şaftalı', '', 41, '', '', 0, '2018-05-06 16:34:35', '2018-05-06 16:34:35', 'Black tea peach', 'Черный персиковый чай', '', '', '', '', '', ''),
(274, 'Yaşıl çay mango', '', 41, '', '', 0, '2018-05-06 16:36:16', '2018-05-06 16:36:16', 'Green tea mango organic', 'Зеленый чай с манго', '', '', '', '', '', ''),
(275, 'Rooibos vanilla organic', '', 41, '', '', 0, '2018-05-06 16:37:13', '2018-05-06 16:37:13', 'Rooibos vanilla organic', 'Роброй ванильный', '', '', '', '', '', ''),
(276, 'Puer toucha', '', 41, '', '', 0, '2018-05-06 16:38:38', '2018-05-06 16:38:38', 'Puer toucha', 'Пуэр toucha', '', '', '', '', '', ''),
(277, 'Jasmine dragon', '', 41, '', '', 0, '2018-05-06 16:39:55', '2018-05-06 16:39:55', 'Jasmine dragon', 'Джасмин', '', '', '', '', '', ''),
(278, 'Tuna salat', 'Tuna balığı, ənginar, yumurta, kartof, pomidor, xiyar və kahı ilə', 16, 'YUMURTA', '', 0, '2018-05-07 11:08:21', '2018-05-07 11:08:21', 'Tuna salad', 'Салат из тунца', 'Tuna, artichoke, egg, potato, tomato, cucumber and lettuce', 'Тунец, артишок, яйцо, картофель, помидор, огурец и листья салата', 'EGG', 'ЯЙЦО', '', ''),
(279, 'Stroganof', 'Şampinyon göbələk, qaymaq, tutma xiyar, can əti ya toyuq ilə', 21, '', '', 0, '2018-05-07 11:28:56', '2018-05-07 11:28:56', 'Strogonaff', 'Строганофф', 'Champignons mushroom,cream, pickled cucumber, beef or chicken.', 'Шампиньоны, сливки, маринованные огурцы, говядина или курица.', '', '', '', ''),
(280, 'Fajita', 'Rəngli bibər, soğan, pomidor, can əti ya toyuq ilə.', 21, '', '', 0, '2018-05-07 11:34:12', '2018-05-07 11:34:12', 'Fajitas', 'Фахитас', 'Sweet pepper, onion, tomato, beef or chicken', 'Болгарский перец, лук, помидоры, говядина или курица', '', '', '', ''),
(281, 'Milanez', 'Can əti ya toyuq ilə', 21, '', '', 0, '2018-05-07 11:37:24', '2018-05-07 11:37:24', 'Milanese', 'Миланез', 'Beef or chicken', 'Говядина или курица', '', '', '', ''),
(282, 'Qarışıq dəniz məhsulu buğlama', 'Sudak balığı, midya, kalmar, ahtapot, krivet', 21, '', '', 0, '2018-05-07 11:41:37', '2018-05-07 12:10:41', 'Sea food stew', 'Рагу из морепродуктов', 'Zander, mussel, squid, octopus, prawns', 'Судак, мидии, кальмар, осьминог, креветки', '', '', '', ''),
(284, 'Polo converdure', 'Toyuq filesi göbələk və qaymaq sousda', 21, '', '', 0, '2018-05-07 12:03:07', '2018-05-07 12:11:03', 'Polo converdure', 'Поло конвердже', 'Chicken breast with cream mushroom sauce', 'Куриное филе с грибным соусом', '', '', '', ''),
(285, 'Toyuq filesi grildə', 'Sarımsaq və lemon sousda marinə olunmuş toyuq', 21, '', '', 0, '2018-05-07 12:09:38', '2018-05-07 12:09:38', 'Grill chicken breast', 'Куриная грудка на гриле', 'Garlic, lemon marinated chicken', 'Маринованная курица c чесночным и лимонным соусом', '', '', '', ''),
(286, 'Chicken noodle', 'Toyuq filesi, əriştə, bolqar bibəri, kök, qarğıdalı, lobya, sogan', 28, '', '', 0, '2018-05-08 15:00:10', '2018-05-08 15:00:10', 'Chicken noodle', 'Куриный нудлс', 'Chicken fillet, noodle, capsicum, carrot, sweet corn, bean, onion', 'Kуриное филе, лапша, болгарский перец, морковь, кукуруза, фасоль, лук', '', '', '', ''),
(287, 'Seafood noodle', 'Qızıl balıq, krivet, bolqar bibəri, kök, qarğıdalı, lobya, sogan', 28, '', '', 0, '2018-05-08 15:13:25', '2018-05-08 15:22:38', 'Seafood noodle', 'Лапша из морепродуктов', 'Salmon, prawns, capsicum, carrot, sweet corn, bean, onion', 'Лосось, креветки, болгарский перец, морковь, кукуруза, фасоль, лук', '', '', '', ''),
(288, 'Vegetable  noodle', 'Bolqar bibəri, kök, qarğıdalı, lobya', 28, '', '', 0, '2018-05-08 15:26:41', '2018-05-08 15:26:41', 'Vegetable  noodle', 'Овощная лапша', 'Capsicum, carrot, sweet corn, bean', 'Болгарский перец, морковь, кукуруза, фасоль', '', '', '', ''),
(289, 'Jack daniels', '', 37, '', '', 2, '2018-05-09 17:17:57', '2018-05-10 16:35:53', 'Jack daniels', 'Jack daniels', '', '', '', '', '', ''),
(290, 'Ebi maki', 'Krivet, düyü, nori', 31, '', '', 0, '2018-05-10 14:25:40', '2018-05-15 14:44:14', 'Ebi maki', 'Эби маки', 'Shrimps, rice, nori', 'Креветки, рис, нори', '', '', '', ''),
(291, 'Salmon miso', 'Qızıl balıq, vakame, küncüt, tabasko', 44, '', '', 0, '2018-05-15 16:34:14', '2018-05-15 16:34:14', 'Salmon miso', 'Салмон мисо', 'Salmon, wakame, sesame,  tabasco', 'Лосось, вакаме, кунжут, табаско', '', '', '', ''),
(292, 'Unagi miso', 'Ilan balığı, vakame, küncüt, tabasko', 44, '', '', 0, '2018-05-15 16:38:33', '2018-05-15 16:38:33', 'Unagi miso', 'Унаги мисо', 'Unagi, wakame, sesame, tabasko', 'Унаги, вакаме, кунжут, табаско', '', '', '', ''),
(293, 'Kənd sayağı kartof', '', 24, '', '', 0, '2018-05-18 08:31:29', '2018-05-18 09:23:21', 'Village-style potato', 'Картофель по-домашнему', '', '', '', '', '', ''),
(294, 'Düyü', '', 24, '', '', 0, '2018-05-18 08:35:39', '2018-05-18 08:35:39', 'Rice', 'Рис', '', '', '', '', '', ''),
(295, 'Kartof fri', '', 24, '', '', 0, '2018-05-18 08:39:34', '2018-05-18 08:39:34', 'French fries', 'Картофель фри', '', '', '', '', '', ''),
(296, 'Sparja', '', 24, '', '', 0, '2018-05-18 08:43:49', '2018-05-18 08:43:49', 'Asparagus', 'Спаржа', '', '', '', '', '', ''),
(297, 'Şokoladli \"vulkan\"', '', 25, '', '', 0, '2018-05-18 08:50:46', '2018-05-18 08:50:46', 'Chocolate \"volcano\"', 'Шоколадный \"вулкан\"', '', '', '', '', '', ''),
(298, 'Alma piroqu', '', 25, '', '', 0, '2018-05-18 08:52:12', '2018-05-18 08:52:12', 'Apple pie', 'Яблочный пирог', '', '', '', '', '', ''),
(299, 'Soyuq çiskeyk', '', 25, '', '', 0, '2018-05-18 08:59:35', '2018-05-18 08:59:35', 'Cold cheesecake', 'Холодный чизкейк', '', '', '', '', '', ''),
(300, 'Çiskeyk \"new york\"', 'Bananli', 25, '', '', 0, '2018-05-18 09:03:24', '2018-05-18 09:03:24', 'Cheesecake \"new york\"', 'Чизкейк \"нью йорк\"', 'Banana', 'Банановый', '', '', '', ''),
(301, 'Şokoladli çiskeyk', '', 25, '', '', 0, '2018-05-18 09:05:35', '2018-05-18 09:05:35', 'Chocolate cheesecake', 'Шоколадный чизкейк', '', '', '', '', '', ''),
(302, 'Profitrol', '', 25, '', '', 0, '2018-05-18 09:09:01', '2018-05-18 09:09:01', 'Profiterole', 'Профитроль', '', '', '', '', '', ''),
(303, 'Krem brule', '', 25, '', '', 0, '2018-05-18 10:29:37', '2018-05-18 10:29:37', 'Creme brulee', 'Крем-брюле', '', '', '', '', '', ''),
(304, 'Tiramisu', '', 25, '', '', 0, '2018-05-18 10:30:56', '2018-05-18 10:30:56', 'Tiramisu', 'Тирамису', '', '', '', '', '', ''),
(305, 'Qrildə tərəvəz', '', 24, '', '', 0, '2018-05-18 10:39:41', '2018-05-18 10:39:41', 'Grilled vegetables', 'Овощи на гриле', '', '', '', '', '', ''),
(306, 'Tərəvəz sotesi', '', 24, '', '', 0, '2018-05-18 10:42:04', '2018-05-18 10:42:04', 'Vegetable saute', 'Овощное соте', '', '', '', '', '', ''),
(307, 'Tərəvəzli düyü', '', 24, '', '', 0, '2018-05-18 10:46:15', '2018-05-18 10:46:15', 'Rice with vegetables', 'Рис с овощами', '', '', '', '', '', ''),
(309, 'Meyvə assorti', '', 25, '', '', 0, '2018-05-18 10:54:40', '2018-05-18 10:54:40', 'Seasonal fruits', 'Сезонные фрукты', '', '', '', '', '', ''),
(310, 'Maraş dondurması', 'Bir top', 25, '', '', 0, '2018-05-18 11:01:56', '2018-05-18 11:01:56', 'Turkish ice cream \"marash\"', 'Турецкое мороженое \"мараш\"', 'One scoope', 'Один шарик', '', '', '', ''),
(311, 'Flaqman set', 'Kaliforniya ebi, black dragon, fixed fight roll', 29, '', '', 0, '2018-05-18 11:24:25', '2018-05-18 11:24:25', 'Flaqman set', 'Flaqman set', 'Kaliforniya ebi, black dragon, fixed fight roll', 'Kaliforniya ebi, black dragon, fixed fight roll', '', '', '', ''),
(312, 'Samuray set', 'Montoki roll, ebi maki, makota maki, ebi cheese roll', 29, '', '', 0, '2018-05-18 11:26:41', '2018-05-18 11:26:41', 'Samuray set', 'Samuray set', 'Montoki roll, ebi maki, makota maki, ebi cheese roll', 'Montoki roll, ebi maki, makota maki, ebi cheese roll', '', '', '', ''),
(313, 'Grand hotel set', 'Unaqi maki, grand hotel roll, tokio roll, chicken bar roll, hot manhetten, nimme roll, makota maki', 29, '', '', 0, '2018-05-18 11:28:46', '2018-05-18 11:28:46', 'Grand hotel set', 'Grand hotel set', 'Unaqi maki, grand hotel roll, tokio roll, chicken bar roll, hot manhetten, nimme roll, makota maki', 'Unaqi maki, grand hotel roll, tokio roll, chicken bar roll, hot manhetten, nimme roll, makota maki', '', '', '', '');

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
(12, '2018_04_27_232559_create_prices_table', 2),
(13, '2018_04_29_162341_add_parentid_to_categories', 3),
(14, '2018_04_29_172757_remove_price_column_items', 3);

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
(75, '1524827420_8.jpeg', 23, 'App\\Category', '2018-04-27 11:10:20', '2018-04-27 11:10:20'),
(87, '1524898920_Grand Hotel_2-20.jpg', 17, 'App\\Category', '2018-04-28 07:02:00', '2018-04-28 07:02:00'),
(88, '1524899584_Grand Hotel_2-19.jpg', 7, 'App\\Item', '2018-04-28 07:13:04', '2018-04-28 07:13:04'),
(89, '1524900136_Grand Hotel_2-13.jpg', 8, 'App\\Item', '2018-04-28 07:22:16', '2018-04-28 07:22:16'),
(92, '1524901201_Grand Hotel_2-4.jpg', 11, 'App\\Item', '2018-04-28 07:40:01', '2018-04-28 07:40:01'),
(94, '1524906696_Grand Hotel_2-50.jpg', 9, 'App\\Item', '2018-04-28 09:11:36', '2018-04-28 09:11:36'),
(95, '1524907842_Grand Hotel_2-6.jpg', 12, 'App\\Item', '2018-04-28 09:30:42', '2018-04-28 09:30:42'),
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
(112, '1524937812_Grand Hotel_2-104.jpg', 27, 'App\\Item', '2018-04-28 17:50:12', '2018-04-28 17:50:12'),
(113, '1524938257_Grand Hotel_2-99.jpg', 28, 'App\\Item', '2018-04-28 17:57:37', '2018-04-28 17:57:37'),
(114, '1524938531_Grand Hotel_2-100.jpg', 29, 'App\\Item', '2018-04-28 18:02:11', '2018-04-28 18:02:11'),
(115, '1524938910_Grand Hotel_2-97.jpg', 30, 'App\\Item', '2018-04-28 18:08:30', '2018-04-28 18:08:30'),
(116, '1524939310_Grand Hotel_2-96.jpg', 31, 'App\\Item', '2018-04-28 18:15:10', '2018-04-28 18:15:10'),
(117, '1524988376_Grand Hotel_2-76.jpg', 19, 'App\\Category', '2018-04-29 07:52:56', '2018-04-29 07:52:56'),
(118, '1524989090_Grand Hotel_2-76.jpg', 32, 'App\\Item', '2018-04-29 08:04:50', '2018-04-29 08:04:50'),
(120, '1524991799_Grand Hotel_2-60.jpg', 34, 'App\\Item', '2018-04-29 08:49:59', '2018-04-29 08:49:59'),
(121, '1524992209_Grand Hotel_2-62.jpg', 35, 'App\\Item', '2018-04-29 08:56:49', '2018-04-29 08:56:49'),
(122, '1524992533_Grand Hotel_2-57.jpg', 36, 'App\\Item', '2018-04-29 09:02:13', '2018-04-29 09:02:13'),
(123, '1524993179_Grand Hotel_2-70.jpg', 37, 'App\\Item', '2018-04-29 09:12:59', '2018-04-29 09:12:59'),
(124, '1524993617_Grand Hotel_2-53.jpg', 38, 'App\\Item', '2018-04-29 09:20:17', '2018-04-29 09:20:17'),
(125, '1524994102_Grand Hotel_2-52.jpg', 39, 'App\\Item', '2018-04-29 09:28:22', '2018-04-29 09:28:22'),
(126, '1525024160_Grand Hotel_2-245.jpg', 31, 'App\\Category', '2018-04-29 17:49:20', '2018-04-29 17:49:20'),
(127, '1525027706_Grand Hotel_2-154.jpg', 40, 'App\\Item', '2018-04-29 18:48:26', '2018-04-29 18:48:26'),
(128, '1525028020_Grand Hotel_2-160.jpg', 41, 'App\\Item', '2018-04-29 18:53:40', '2018-04-29 18:53:40'),
(129, '1525028317_Grand Hotel_2-227.jpg', 42, 'App\\Item', '2018-04-29 18:58:37', '2018-04-29 18:58:37'),
(130, '1525029226_Grand Hotel_2-229.jpg', 43, 'App\\Item', '2018-04-29 19:13:46', '2018-04-29 19:13:46'),
(131, '1525029980_Grand Hotel_2-156.jpg', 44, 'App\\Item', '2018-04-29 19:26:20', '2018-04-29 19:26:20'),
(132, '1525030134_Grand Hotel_2-175.jpg', 45, 'App\\Item', '2018-04-29 19:28:54', '2018-04-29 19:28:54'),
(133, '1525030469_Grand Hotel_2-170.jpg', 46, 'App\\Item', '2018-04-29 19:34:30', '2018-04-29 19:34:30'),
(134, '1525031224_Grand Hotel_2-171.jpg', 47, 'App\\Item', '2018-04-29 19:47:04', '2018-04-29 19:47:04'),
(135, '1525031753_Grand Hotel_2-186.jpg', 48, 'App\\Item', '2018-04-29 19:55:53', '2018-04-29 19:55:53'),
(136, '1525032090_Grand Hotel_2-188.jpg', 49, 'App\\Item', '2018-04-29 20:01:30', '2018-04-29 20:01:30'),
(137, '1525032298_Grand Hotel_2-191.jpg', 50, 'App\\Item', '2018-04-29 20:04:58', '2018-04-29 20:04:58'),
(138, '1525032513_Grand Hotel_2-199.jpg', 51, 'App\\Item', '2018-04-29 20:08:33', '2018-04-29 20:08:33'),
(139, '1525032937_Grand Hotel_2-207.jpg', 52, 'App\\Item', '2018-04-29 20:15:37', '2018-04-29 20:15:37'),
(143, '1525082149_Grand Hotel_2-242.jpg', 34, 'App\\Category', '2018-04-30 09:55:49', '2018-04-30 09:55:49'),
(144, '1525082361_Grand Hotel_2-33.jpg', 35, 'App\\Category', '2018-04-30 09:59:21', '2018-04-30 09:59:21'),
(145, '1525082954_Grand Hotel_2-159.jpg', 54, 'App\\Item', '2018-04-30 10:09:14', '2018-04-30 10:09:14'),
(148, '1525085922_Grand Hotel_2-163.jpg', 57, 'App\\Item', '2018-04-30 10:58:42', '2018-04-30 10:58:42'),
(149, '1525086353_Grand Hotel_2-177.jpg', 58, 'App\\Item', '2018-04-30 11:05:53', '2018-04-30 11:05:53'),
(152, '1525088540_1.jpg', 36, 'App\\Category', '2018-04-30 11:42:20', '2018-04-30 11:42:20'),
(157, '1525094192_2.jpg', 37, 'App\\Category', '2018-04-30 13:16:32', '2018-04-30 13:16:32'),
(158, '1525094269_3.jpg', 38, 'App\\Category', '2018-04-30 13:17:49', '2018-04-30 13:17:49'),
(159, '1525094313_5.jpg', 39, 'App\\Category', '2018-04-30 13:18:33', '2018-04-30 13:18:33'),
(160, '1525094414_download.jfif', 40, 'App\\Category', '2018-04-30 13:20:14', '2018-04-30 13:20:14'),
(161, '1525094553_917uVC8WjwL._SY355_.jpg', 41, 'App\\Category', '2018-04-30 13:22:33', '2018-04-30 13:22:33'),
(162, '1525094665_4.jpg', 42, 'App\\Category', '2018-04-30 13:24:25', '2018-04-30 13:24:25'),
(163, '1525094759_Sparkling+Rosemary-Pear+Cocktail+with+Absolut+Vodka+via.+www.birdieshoots.com', 43, 'App\\Category', '2018-04-30 13:25:59', '2018-04-30 13:25:59'),
(164, '1525095988_Aberfeldy-12-year-gear-patrol.jpg', 65, 'App\\Item', '2018-04-30 13:46:28', '2018-04-30 13:46:28'),
(166, '1525097226_quinta-ruban-176x300.jpg', 66, 'App\\Item', '2018-04-30 14:07:06', '2018-04-30 14:07:06'),
(167, '1525097598_download (1).jfif', 67, 'App\\Item', '2018-04-30 14:13:18', '2018-04-30 14:13:18'),
(168, '1525097792_mars-maltage-cosmo.jpg', 68, 'App\\Item', '2018-04-30 14:16:32', '2018-04-30 14:16:32'),
(169, '1525098215_IMG_5388_0.jpg', 69, 'App\\Item', '2018-04-30 14:23:35', '2018-04-30 14:23:35'),
(170, '1525098429_download (2).jfif', 70, 'App\\Item', '2018-04-30 14:27:09', '2018-04-30 14:27:09'),
(171, '1525098594_images (1).jfif', 71, 'App\\Item', '2018-04-30 14:29:54', '2018-04-30 14:29:54'),
(172, '1525098985_brbon_jim1.jpg', 72, 'App\\Item', '2018-04-30 14:36:25', '2018-04-30 14:36:25'),
(174, '1525099261_johnnie_walker_blue_label750__56678.1377203770.380.500.jpg', 74, 'App\\Item', '2018-04-30 14:41:01', '2018-04-30 14:41:01'),
(175, '1525099420_1.jpg', 75, 'App\\Item', '2018-04-30 14:43:40', '2018-04-30 14:43:40'),
(176, '1525099535_2.jpg', 76, 'App\\Item', '2018-04-30 14:45:35', '2018-04-30 14:45:35'),
(177, '1525099712_oct12-jw-platinum-1.jpg', 77, 'App\\Item', '2018-04-30 14:48:32', '2018-04-30 14:48:32'),
(178, '1525099841_m13.jpg', 78, 'App\\Item', '2018-04-30 14:50:41', '2018-04-30 14:50:41'),
(179, '1525100022_DSC00198.jpg', 79, 'App\\Item', '2018-04-30 14:53:42', '2018-04-30 14:53:42'),
(180, '1525100211_macallan10yosb.jpg', 80, 'App\\Item', '2018-04-30 14:56:51', '2018-04-30 14:56:51'),
(181, '1525101324_macallan-fine-oak-15-years.jpg', 81, 'App\\Item', '2018-04-30 15:15:24', '2018-04-30 15:15:24'),
(182, '1525101480_mac18.jpg', 82, 'App\\Item', '2018-04-30 15:18:00', '2018-04-30 15:18:00'),
(183, '1525101887_ardbeg-10-year-old-whisky.jpg', 83, 'App\\Item', '2018-04-30 15:24:47', '2018-04-30 15:24:47'),
(184, '1525102124_auchn.jpg', 84, 'App\\Item', '2018-04-30 15:28:44', '2018-04-30 15:28:44'),
(185, '1525102232_blend_bal5.jpg', 85, 'App\\Item', '2018-04-30 15:30:32', '2018-04-30 15:30:32'),
(186, '1525102326_bal.jpg', 86, 'App\\Item', '2018-04-30 15:32:06', '2018-04-30 15:32:06'),
(187, '1525102413_balob.14yov4.jpg', 87, 'App\\Item', '2018-04-30 15:33:33', '2018-04-30 15:33:33'),
(188, '1525102473_bal17.jpg', 88, 'App\\Item', '2018-04-30 15:34:33', '2018-04-30 15:34:33'),
(189, '1525102585_bunna.jpg', 89, 'App\\Item', '2018-04-30 15:36:25', '2018-04-30 15:36:25'),
(190, '1525102671_bushmils.jpg', 90, 'App\\Item', '2018-04-30 15:37:51', '2018-04-30 15:37:51'),
(191, '1525103501_chardu.jpg', 91, 'App\\Item', '2018-04-30 15:51:41', '2018-04-30 15:51:41'),
(192, '1525103647_chi12.jpg', 92, 'App\\Item', '2018-04-30 15:54:07', '2018-04-30 15:54:07'),
(193, '1525103882_chi18.png', 93, 'App\\Item', '2018-04-30 15:58:02', '2018-04-30 15:58:02'),
(194, '1525104042_chivas-regal-21-yo-0.70l-1376.png', 94, 'App\\Item', '2018-04-30 16:00:42', '2018-04-30 16:00:42'),
(195, '1525104184_dalmore-regalis-1l-whisky.jpg', 95, 'App\\Item', '2018-04-30 16:03:04', '2018-04-30 16:03:04'),
(196, '1525104334_Dewars-White-Label-Scotch_main-1.png', 96, 'App\\Item', '2018-04-30 16:05:34', '2018-04-30 16:05:34'),
(197, '1525104459_the-famous-grouse-1l-435488.jpg', 97, 'App\\Item', '2018-04-30 16:07:39', '2018-04-30 16:07:39'),
(198, '1525104624_big_15523-glenfiddich-scotch-whiskey-12yo.jpg', 98, 'App\\Item', '2018-04-30 16:10:24', '2018-04-30 16:10:24'),
(199, '1525104839_gfdob.15yo.jpg', 99, 'App\\Item', '2018-04-30 16:13:59', '2018-04-30 16:13:59'),
(200, '1525105083_product367.jpg', 100, 'App\\Item', '2018-04-30 16:18:03', '2018-04-30 16:18:03'),
(201, '1525105510_MIN_968604_EAA.jpg', 101, 'App\\Item', '2018-04-30 16:25:10', '2018-04-30 16:25:10'),
(202, '1525105615_the-glenlivet-15-year-old-french-oak-reserve-single-malt-scotch-whisky-2.jpg', 102, 'App\\Item', '2018-04-30 16:26:55', '2018-04-30 16:26:55'),
(203, '1525105731_Glenlivet-18.jpg', 103, 'App\\Item', '2018-04-30 16:28:51', '2018-04-30 16:28:51'),
(204, '1525105855_gmgob.10yov21.jpg', 104, 'App\\Item', '2018-04-30 16:30:55', '2018-04-30 16:30:55'),
(205, '1525109022_gmgob.12yov7.jpg', 105, 'App\\Item', '2018-04-30 17:23:42', '2018-04-30 17:23:42'),
(206, '1525109822_Nikka_Miyagikyo_Non_Age_800_X_800_large.jpg', 106, 'App\\Item', '2018-04-30 17:37:02', '2018-04-30 17:37:02'),
(207, '1525109993_Image_Nikka-Taketsuru-Pure-Malt-525x700.jpg', 107, 'App\\Item', '2018-04-30 17:39:53', '2018-04-30 17:39:53'),
(208, '1525110109_nikka-yoichi-no-aged-single-malt-japanese-whisky.jpg', 108, 'App\\Item', '2018-04-30 17:41:49', '2018-04-30 17:41:49'),
(209, '1525110245_hibiki-japanese-harmony-whisky.jpg', 109, 'App\\Item', '2018-04-30 17:44:05', '2018-04-30 17:44:05'),
(210, '1525110331_878994_0_9999_med_v1_m56577569855170702.png', 110, 'App\\Item', '2018-04-30 17:45:31', '2018-04-30 17:45:31'),
(211, '1525110437_Talisker-10-Year-Old.jpg', 111, 'App\\Item', '2018-04-30 17:47:17', '2018-04-30 17:47:17'),
(212, '1525110515_irish_tul1.jpg', 112, 'App\\Item', '2018-04-30 17:48:35', '2018-04-30 17:48:35'),
(213, '1525118233_20180202.1517577569.SNCPSG10.obj.0.1.jpg.oe.jpg.pf.jpg.1350nowm.jpg.1350x.jpg', 113, 'App\\Item', '2018-04-30 19:57:13', '2018-04-30 19:57:13'),
(214, '1525118293_olmeca_gold.jpg', 114, 'App\\Item', '2018-04-30 19:58:13', '2018-04-30 19:58:13'),
(215, '1525118474_olmeca-tezon-blanco-tequila.jpg', 115, 'App\\Item', '2018-04-30 20:01:14', '2018-04-30 20:01:14'),
(216, '1525118598_teqla_don3.jpg', 116, 'App\\Item', '2018-04-30 20:03:18', '2018-04-30 20:03:18'),
(217, '1525118665_ci-patron-silver-25fa130a809ea038.jpeg', 117, 'App\\Item', '2018-04-30 20:04:25', '2018-04-30 20:04:25'),
(218, '1525118977_patron-anejo-tequila_1024x1024.jpg', 118, 'App\\Item', '2018-04-30 20:09:37', '2018-04-30 20:09:37'),
(219, '1525119019_patronreposado__31487__32371.1358534099.380.500.jpg', 119, 'App\\Item', '2018-04-30 20:10:19', '2018-04-30 20:10:19'),
(220, '1525119142_11S023-Beefeater-Gin-70cl.png', 120, 'App\\Item', '2018-04-30 20:12:22', '2018-04-30 20:12:22'),
(221, '1525119219_gin_bom2.jpg', 121, 'App\\Item', '2018-04-30 20:13:39', '2018-04-30 20:13:39'),
(222, '1525119319_tanqueray-ten-gin.jpg', 122, 'App\\Item', '2018-04-30 20:15:19', '2018-04-30 20:15:19'),
(223, '1525119619_rum_bac92.jpg', 123, 'App\\Item', '2018-04-30 20:20:19', '2018-04-30 20:20:19'),
(224, '1525119778_Bacardi-Gold-Carta-Oro.jpg', 124, 'App\\Item', '2018-04-30 20:22:58', '2018-04-30 20:22:58'),
(225, '1525119820_full_full-bacardi-black-4-goda-0-7l.jpg', 125, 'App\\Item', '2018-04-30 20:23:40', '2018-04-30 20:23:40'),
(226, '1525119868_rum_bac37.jpg', 126, 'App\\Item', '2018-04-30 20:24:28', '2018-04-30 20:24:28'),
(227, '1525120029_havana-club-anejo-3-anos-591334.jpeg', 127, 'App\\Item', '2018-04-30 20:27:09', '2018-04-30 20:27:09'),
(228, '1525120077_86093_Havana-Club-Anejo-Especial-Rum-10L-40-Vol_4.jpg', 128, 'App\\Item', '2018-04-30 20:27:57', '2018-04-30 20:27:57'),
(229, '1525120108_719254.jpg', 129, 'App\\Item', '2018-04-30 20:28:28', '2018-04-30 20:28:28'),
(230, '1525120452_5432285SZ.jpg', 130, 'App\\Item', '2018-04-30 20:34:12', '2018-04-30 20:34:12'),
(231, '1525120485_Absolute-Citron1.jpg', 131, 'App\\Item', '2018-04-30 20:34:45', '2018-04-30 20:34:45'),
(232, '1525120573_Finlandia_Vodka.jpg', 132, 'App\\Item', '2018-04-30 20:36:13', '2018-04-30 20:36:13'),
(233, '1525120662_101447_beluga_noble_russian_vodka_1500.jpg', 133, 'App\\Item', '2018-04-30 20:37:42', '2018-04-30 20:37:42'),
(234, '1525120795_vodka_gre13.jpg', 134, 'App\\Item', '2018-04-30 20:39:55', '2018-04-30 20:39:55'),
(235, '1525121164_Sergei-Kaminsky-7-of-21.jpg', 135, 'App\\Item', '2018-04-30 20:46:04', '2018-04-30 20:46:04'),
(236, '1525161867_Grand Hotel_2-23.jpg', 16, 'App\\Category', '2018-05-01 08:04:27', '2018-05-01 08:04:27'),
(237, '1525162399_Grand Hotel_2-119.jpg', 18, 'App\\Category', '2018-05-01 08:13:19', '2018-05-01 08:13:19'),
(238, '1525163722_Grand Hotel_2-147.jpg', 5, 'App\\Item', '2018-05-01 08:35:22', '2018-05-01 08:35:22'),
(239, '1525164175_Grand Hotel_2-20.jpg', 136, 'App\\Item', '2018-05-01 08:42:55', '2018-05-01 08:42:55'),
(240, '1525166064_Grand Hotel_2-124.jpg', 137, 'App\\Item', '2018-05-01 09:14:24', '2018-05-01 09:14:24'),
(241, '1525167498_Grand Hotel_2-77.jpg', 138, 'App\\Item', '2018-05-01 09:38:18', '2018-05-01 09:38:18'),
(242, '1525170569_Grand Hotel_2-115.jpg', 139, 'App\\Item', '2018-05-01 10:29:29', '2018-05-01 10:29:29'),
(243, '1525171756_Grand Hotel_2-120.jpg', 140, 'App\\Item', '2018-05-01 10:49:16', '2018-05-01 10:49:16'),
(244, '1525172988_Grand Hotel_2-130.jpg', 141, 'App\\Item', '2018-05-01 11:09:48', '2018-05-01 11:09:48'),
(245, '1525173105_Grand Hotel_2-113.jpg', 142, 'App\\Item', '2018-05-01 11:11:45', '2018-05-01 11:11:45'),
(246, '1525173834_Grand Hotel_2-85.jpg', 143, 'App\\Item', '2018-05-01 11:23:54', '2018-05-01 11:23:54'),
(247, '1525174202_Grand Hotel_2-84.jpg', 144, 'App\\Item', '2018-05-01 11:30:02', '2018-05-01 11:30:02'),
(248, '1525174488_Grand Hotel_2-107.jpg', 145, 'App\\Item', '2018-05-01 11:34:48', '2018-05-01 11:34:48'),
(249, '1525174671_Grand Hotel_2-121.jpg', 146, 'App\\Item', '2018-05-01 11:37:51', '2018-05-01 11:37:51'),
(250, '1525174804_Grand Hotel_2-81.jpg', 147, 'App\\Item', '2018-05-01 11:40:04', '2018-05-01 11:40:04'),
(251, '1525174904_Grand Hotel_2-105.jpg', 148, 'App\\Item', '2018-05-01 11:41:44', '2018-05-01 11:41:44'),
(256, '1525182232_Grand Hotel_2-177.jpg', 20, 'App\\Category', '2018-05-01 13:43:52', '2018-05-01 13:43:52'),
(257, '1525182387_Grand Hotel_2-144.jpg', 21, 'App\\Category', '2018-05-01 13:46:27', '2018-05-01 13:46:27'),
(258, '1525182531_Grand Hotel_2-185.jpg', 26, 'App\\Category', '2018-05-01 13:48:51', '2018-05-01 13:48:51'),
(259, '1525182736_Grand Hotel_2-221.jpg', 27, 'App\\Category', '2018-05-01 13:52:16', '2018-05-01 13:52:16'),
(260, '1525183208_Grand Hotel_2-242.jpg', 29, 'App\\Category', '2018-05-01 14:00:08', '2018-05-01 14:00:08'),
(262, '1525185210_Grand Hotel_2-205.jpg', 149, 'App\\Item', '2018-05-01 14:33:30', '2018-05-01 14:33:30'),
(263, '1525185747_Grand Hotel_2-232.jpg', 150, 'App\\Item', '2018-05-01 14:42:27', '2018-05-01 14:42:27'),
(264, '1525186044_Grand Hotel_2-235.jpg', 151, 'App\\Item', '2018-05-01 14:47:24', '2018-05-01 14:47:24'),
(265, '1525186752_Grand Hotel_2-237.jpg', 152, 'App\\Item', '2018-05-01 14:59:12', '2018-05-01 14:59:12'),
(267, '1525187951_Grand Hotel_2-212.jpg', 154, 'App\\Item', '2018-05-01 15:19:11', '2018-05-01 15:19:11'),
(268, '1525188184_Grand Hotel_2-180.jpg', 153, 'App\\Item', '2018-05-01 15:23:04', '2018-05-01 15:23:04'),
(269, '1525188748_Grand Hotel_2-217.jpg', 155, 'App\\Item', '2018-05-01 15:32:28', '2018-05-01 15:32:28'),
(270, '1525188881_Grand Hotel_2-218.jpg', 156, 'App\\Item', '2018-05-01 15:34:41', '2018-05-01 15:34:41'),
(271, '1525190000_Grand Hotel_2-239.jpg', 157, 'App\\Item', '2018-05-01 15:53:20', '2018-05-01 15:53:20'),
(272, '1525190236_Grand Hotel_2-209.jpg', 158, 'App\\Item', '2018-05-01 15:57:16', '2018-05-01 15:57:16'),
(273, '1525190424_Grand Hotel_2-211.jpg', 159, 'App\\Item', '2018-05-01 16:00:24', '2018-05-01 16:00:24'),
(274, '1525190856_Grand Hotel_2-224.jpg', 160, 'App\\Item', '2018-05-01 16:07:36', '2018-05-01 16:07:36'),
(275, '1525191079_Grand Hotel_2-223.jpg', 161, 'App\\Item', '2018-05-01 16:11:19', '2018-05-01 16:11:19'),
(276, '1525191842_Grand Hotel_2-201.jpg', 162, 'App\\Item', '2018-05-01 16:24:02', '2018-05-01 16:24:02'),
(277, '1525192077_Grand Hotel_2-221.jpg', 163, 'App\\Item', '2018-05-01 16:27:57', '2018-05-01 16:27:57'),
(278, '1525192337_Grand Hotel_2-230.jpg', 164, 'App\\Item', '2018-05-01 16:32:17', '2018-05-01 16:32:17'),
(279, '1525262454_nastojki_na_koriandre.jpg', 45, 'App\\Category', '2018-05-02 12:00:54', '2018-05-02 12:00:54'),
(280, '1525262767_una-birra-al-giorno-allunga-la-vita.jpg', 46, 'App\\Category', '2018-05-02 12:06:07', '2018-05-02 12:06:07'),
(281, '1525263488_vegetablejuice.jpg', 47, 'App\\Category', '2018-05-02 12:18:08', '2018-05-02 12:18:08'),
(282, '1525264016_81Xtyj01IQL._SX522_.jpg', 165, 'App\\Item', '2018-05-02 12:26:56', '2018-05-02 12:26:56'),
(283, '1525264119_angostura.jpg', 166, 'App\\Item', '2018-05-02 12:28:39', '2018-05-02 12:28:39'),
(284, '1525264362_baileys-irish-cream-liquor-splash.jpg', 167, 'App\\Item', '2018-05-02 12:32:42', '2018-05-02 12:32:42'),
(285, '1525264485_beh.jpg', 168, 'App\\Item', '2018-05-02 12:34:45', '2018-05-02 12:34:45'),
(286, '1525264654_Brandy_014.jpg', 169, 'App\\Item', '2018-05-02 12:37:34', '2018-05-02 12:37:34'),
(287, '1525264813_bols_creme_de_cassis_700ml_large.png', 170, 'App\\Item', '2018-05-02 12:40:13', '2018-05-02 12:40:13'),
(288, '1525264953_yog.jpg', 171, 'App\\Item', '2018-05-02 12:42:33', '2018-05-02 12:42:33'),
(289, '1525265046_campari.jpg', 172, 'App\\Item', '2018-05-02 12:44:06', '2018-05-02 12:44:06'),
(290, '1525265113_liq_coi1.jpg', 173, 'App\\Item', '2018-05-02 12:45:13', '2018-05-02 12:45:13'),
(291, '1525265297_ава-2-1180x650.jpg', 174, 'App\\Item', '2018-05-02 12:48:17', '2018-05-02 12:48:17'),
(292, '1525265388_benedictine-dom-2017.jpg', 175, 'App\\Item', '2018-05-02 12:49:48', '2018-05-02 12:49:48'),
(293, '1525265466_w-liq_dra1.jpg', 176, 'App\\Item', '2018-05-02 12:51:06', '2018-05-02 12:51:06'),
(294, '1525265548_119585011_0_640x640.jpg', 177, 'App\\Item', '2018-05-02 12:52:28', '2018-05-02 12:52:28'),
(295, '1525265619_25520011_1_640x640.jpg', 178, 'App\\Item', '2018-05-02 12:53:39', '2018-05-02 12:53:39'),
(296, '1525265722_59db815599b80.jpg', 179, 'App\\Item', '2018-05-02 12:55:22', '2018-05-02 12:55:22'),
(297, '1525265800_liq_mal1.jpg', 180, 'App\\Item', '2018-05-02 12:56:40', '2018-05-02 12:56:40'),
(298, '1525265871_88544018941_1_default_default.jpg', 181, 'App\\Item', '2018-05-02 12:57:51', '2018-05-02 12:57:51'),
(299, '1525265919_tia-maria.jpg', 182, 'App\\Item', '2018-05-02 12:58:39', '2018-05-02 12:58:39'),
(300, '1525266331_martini.jpg', 48, 'App\\Category', '2018-05-02 13:05:31', '2018-05-02 13:05:31'),
(301, '1525266471_vermut.jpg', 183, 'App\\Item', '2018-05-02 13:07:51', '2018-05-02 13:07:51'),
(302, '1525266502_vermut.jpg', 184, 'App\\Item', '2018-05-02 13:08:22', '2018-05-02 13:08:22'),
(303, '1525266535_vermut.jpg', 185, 'App\\Item', '2018-05-02 13:08:55', '2018-05-02 13:08:55'),
(304, '1525266570_vermut.jpg', 186, 'App\\Item', '2018-05-02 13:09:30', '2018-05-02 13:09:30'),
(305, '1525266688_wine.png', 49, 'App\\Category', '2018-05-02 13:11:29', '2018-05-02 13:11:29'),
(311, '1525268624_taylors-fine-tawny-port.jpg', 192, 'App\\Item', '2018-05-02 13:43:44', '2018-05-02 13:43:44'),
(321, '1525269809_banfi.jpg', 202, 'App\\Item', '2018-05-02 14:03:29', '2018-05-02 14:03:29'),
(322, '1525269904_chi.jpg', 203, 'App\\Item', '2018-05-02 14:05:04', '2018-05-02 14:05:04'),
(323, '1525270040_grappa-inside-header.jpg', 204, 'App\\Item', '2018-05-02 14:07:20', '2018-05-02 14:07:20'),
(324, '1525270097_grappa-inside-header.jpg', 205, 'App\\Item', '2018-05-02 14:08:17', '2018-05-02 14:08:17'),
(325, '1525270563_лщнь.jpg', 50, 'App\\Category', '2018-05-02 14:16:03', '2018-05-02 14:16:03'),
(326, '1525270676_champagne1.jpg', 51, 'App\\Category', '2018-05-02 14:17:56', '2018-05-02 14:17:56'),
(327, '1525270832_ci-courvoisier-vs-cognac-52b2fd180fa60fc9.jpeg', 206, 'App\\Item', '2018-05-02 14:20:33', '2018-05-02 14:20:33'),
(328, '1525270986_81vsNvXXz3L._SY445_.jpg', 207, 'App\\Item', '2018-05-02 14:23:06', '2018-05-02 14:23:06'),
(329, '1525271051_288.jpg', 208, 'App\\Item', '2018-05-02 14:24:11', '2018-05-02 14:24:11'),
(330, '1525271117_cognc_hen6.jpg', 209, 'App\\Item', '2018-05-02 14:25:17', '2018-05-02 14:25:17'),
(331, '1525271194_Hennessy_Spirit_VSOP_70cl_1062725_2__53023.1404964755.500.659.png', 210, 'App\\Item', '2018-05-02 14:26:34', '2018-05-02 14:26:34'),
(332, '1525271270_hennessy-xo-cognac-2017.jpg', 211, 'App\\Item', '2018-05-02 14:27:50', '2018-05-02 14:27:50'),
(333, '1525271339_0_0_orig.jpg', 212, 'App\\Item', '2018-05-02 14:28:59', '2018-05-02 14:28:59'),
(334, '1525271425_Remy-Martin-VSOP-500x500.jpg', 213, 'App\\Item', '2018-05-02 14:30:25', '2018-05-02 14:30:25'),
(335, '1525271496_martel_vs_750__91585.1334009897.jpg', 214, 'App\\Item', '2018-05-02 14:31:36', '2018-05-02 14:31:36'),
(336, '1525271541_images.jfif', 215, 'App\\Item', '2018-05-02 14:32:21', '2018-05-02 14:32:21'),
(337, '1525271657_dom-perignon-champagne-vintage-2006-magnum.jpg', 216, 'App\\Item', '2018-05-02 14:34:17', '2018-05-02 14:34:17'),
(338, '1525271746_full_shampanskoe-veuve-clicquot-ponsardin-pod-upak-b-sukh-0-75-l.jpg', 217, 'App\\Item', '2018-05-02 14:35:46', '2018-05-02 14:35:46'),
(339, '1525271842_MH006_Moet---Chandon-Brut-Imperial-075L-12-Vol_4.jpg', 218, 'App\\Item', '2018-05-02 14:37:22', '2018-05-02 14:37:22'),
(340, '1525272552_67620_XXX_v1.jpg', 219, 'App\\Item', '2018-05-02 14:49:12', '2018-05-02 14:49:12'),
(341, '1525272642_ci-corona-extra-17ddab5e602499d2.jpeg', 220, 'App\\Item', '2018-05-02 14:50:42', '2018-05-02 14:50:42'),
(342, '1525272948_efes-beer-online-1439340572.jpg', 221, 'App\\Item', '2018-05-02 14:55:48', '2018-05-02 14:55:48'),
(343, '1525273022_efes-draft-lager-500ml_temp.jpg', 222, 'App\\Item', '2018-05-02 14:57:02', '2018-05-02 14:57:02'),
(344, '1525273215_efes0.jpg', 223, 'App\\Item', '2018-05-02 15:00:15', '2018-05-02 15:00:15'),
(345, '1525273417_ci-heineken-lager-6ea7dedfaaced647.jpeg', 224, 'App\\Item', '2018-05-02 15:03:37', '2018-05-02 15:03:37'),
(346, '1525273563_Miller_Brewing_CO._Miller_Genuine_Draft_Bottle.jpg', 225, 'App\\Item', '2018-05-02 15:06:03', '2018-05-02 15:06:03'),
(347, '1525273657_Xirdalan_beer.jpg', 226, 'App\\Item', '2018-05-02 15:07:37', '2018-05-02 15:07:37'),
(350, '1525274846_85_main_new.1513532781.jpg', 52, 'App\\Category', '2018-05-02 15:27:26', '2018-05-02 15:27:26'),
(351, '1525274967_85_main_new.1513532781.jpg', 53, 'App\\Category', '2018-05-02 15:29:27', '2018-05-02 15:29:27'),
(352, '1525275006_85_main_new.1513532781.jpg', 54, 'App\\Category', '2018-05-02 15:30:06', '2018-05-02 15:30:06'),
(353, '1525275053_85_main_new.1513532781.jpg', 55, 'App\\Category', '2018-05-02 15:30:53', '2018-05-02 15:30:53'),
(354, '1525276318_85_main_new.1513532781.jpg', 229, 'App\\Item', '2018-05-02 15:51:58', '2018-05-02 15:51:58'),
(355, '1525277277_85_main_new.1513532781.jpg', 230, 'App\\Item', '2018-05-02 16:07:57', '2018-05-02 16:07:57'),
(356, '1525278106_85_main_new.1513532781.jpg', 231, 'App\\Item', '2018-05-02 16:21:46', '2018-05-02 16:21:46'),
(357, '1525278486_85_main_new.1513532781.jpg', 232, 'App\\Item', '2018-05-02 16:28:06', '2018-05-02 16:28:06'),
(358, '1525281850_85_main_new.1513532781.jpg', 233, 'App\\Item', '2018-05-02 17:24:10', '2018-05-02 17:24:10'),
(359, '1525282082_85_main_new.1513532781.jpg', 234, 'App\\Item', '2018-05-02 17:28:02', '2018-05-02 17:28:02'),
(360, '1525282620_85_main_new.1513532781.jpg', 235, 'App\\Item', '2018-05-02 17:37:00', '2018-05-02 17:37:00'),
(361, '1525282792_85_main_new.1513532781.jpg', 236, 'App\\Item', '2018-05-02 17:39:52', '2018-05-02 17:39:52'),
(362, '1525282909_85_main_new.1513532781.jpg', 237, 'App\\Item', '2018-05-02 17:41:49', '2018-05-02 17:41:49'),
(363, '1525283041_85_main_new.1513532781.jpg', 238, 'App\\Item', '2018-05-02 17:44:01', '2018-05-02 17:44:01'),
(364, '1525283138_85_main_new.1513532781.jpg', 239, 'App\\Item', '2018-05-02 17:45:38', '2018-05-02 17:45:38'),
(365, '1525283335_85_main_new.1513532781.jpg', 240, 'App\\Item', '2018-05-02 17:48:55', '2018-05-02 17:48:55'),
(366, '1525283637_85_main_new.1513532781.jpg', 241, 'App\\Item', '2018-05-02 17:53:57', '2018-05-02 17:53:57'),
(367, '1525284100_85_main_new.1513532781.jpg', 242, 'App\\Item', '2018-05-02 18:01:40', '2018-05-02 18:01:40'),
(368, '1525284589_85_main_new.1513532781.jpg', 243, 'App\\Item', '2018-05-02 18:09:49', '2018-05-02 18:09:49'),
(369, '1525284769_85_main_new.1513532781.jpg', 244, 'App\\Item', '2018-05-02 18:12:49', '2018-05-02 18:12:49'),
(370, '1525284893_85_main_new.1513532781.jpg', 245, 'App\\Item', '2018-05-02 18:14:53', '2018-05-02 18:14:53'),
(371, '1525285002_85_main_new.1513532781.jpg', 246, 'App\\Item', '2018-05-02 18:16:42', '2018-05-02 18:16:42'),
(372, '1525285057_85_main_new.1513532781.jpg', 247, 'App\\Item', '2018-05-02 18:17:37', '2018-05-02 18:17:37'),
(373, '1525285154_85_main_new.1513532781.jpg', 248, 'App\\Item', '2018-05-02 18:19:14', '2018-05-02 18:19:14'),
(374, '1525285188_85_main_new.1513532781.jpg', 249, 'App\\Item', '2018-05-02 18:19:48', '2018-05-02 18:19:48'),
(375, '1525285302_85_main_new.1513532781.jpg', 250, 'App\\Item', '2018-05-02 18:21:42', '2018-05-02 18:21:42'),
(376, '1525285391_85_main_new.1513532781.jpg', 251, 'App\\Item', '2018-05-02 18:23:11', '2018-05-02 18:23:11'),
(377, '1525285505_85_main_new.1513532781.jpg', 252, 'App\\Item', '2018-05-02 18:25:05', '2018-05-02 18:25:05'),
(378, '1525285659_85_main_new.1513532781.jpg', 253, 'App\\Item', '2018-05-02 18:27:39', '2018-05-02 18:27:39'),
(379, '1525285797_85_main_new.1513532781.jpg', 254, 'App\\Item', '2018-05-02 18:29:57', '2018-05-02 18:29:57'),
(380, '1525285837_85_main_new.1513532781.jpg', 255, 'App\\Item', '2018-05-02 18:30:37', '2018-05-02 18:30:37'),
(381, '1525285889_85_main_new.1513532781.jpg', 256, 'App\\Item', '2018-05-02 18:31:29', '2018-05-02 18:31:29'),
(382, '1525286336_85_main_new.1513532781.jpg', 257, 'App\\Item', '2018-05-02 18:38:56', '2018-05-02 18:38:56'),
(383, '1525286448_85_main_new.1513532781.jpg', 258, 'App\\Item', '2018-05-02 18:40:48', '2018-05-02 18:40:48'),
(384, '1525286789_85_main_new.1513532781.jpg', 259, 'App\\Item', '2018-05-02 18:46:29', '2018-05-02 18:46:29'),
(388, '1525520650_sok_d_850.jpg', 261, 'App\\Item', '2018-05-05 11:44:10', '2018-05-05 11:44:10'),
(389, '1525521189_Cafe-trois-tasses-par-jour-pour-vivre-plus-longtemps_width1024.jpg', 262, 'App\\Item', '2018-05-05 11:53:09', '2018-05-05 11:53:09'),
(390, '1525521458_image-87.jpg', 263, 'App\\Item', '2018-05-05 11:57:38', '2018-05-05 11:57:38'),
(391, '1525521587_290116_0054_coca-cola-fanta-sprite-shweppes-20280589.jpg', 264, 'App\\Item', '2018-05-05 11:59:47', '2018-05-05 11:59:47'),
(392, '1525521966_apelsinovyiy-sok-polza-i-vred.jpg', 265, 'App\\Item', '2018-05-05 12:06:06', '2018-05-05 12:06:06'),
(393, '1525522074_17575935ee6f929.jpg', 266, 'App\\Item', '2018-05-05 12:07:54', '2018-05-05 12:07:54'),
(394, '1525522334_Рисунок2.png', 267, 'App\\Item', '2018-05-05 12:12:14', '2018-05-05 12:12:14'),
(395, '1525623631_chernyj-chaj-pri-otravleniyax.jpg', 268, 'App\\Item', '2018-05-06 16:20:31', '2018-05-06 16:20:31'),
(396, '1525624050_chernyj-chaj-pri-otravleniyax.jpg', 269, 'App\\Item', '2018-05-06 16:27:30', '2018-05-06 16:27:30'),
(397, '1525624218_chernyj-chaj-pri-otravleniyax.jpg', 270, 'App\\Item', '2018-05-06 16:30:18', '2018-05-06 16:30:18'),
(398, '1525624285_chernyj-chaj-pri-otravleniyax.jpg', 271, 'App\\Item', '2018-05-06 16:31:25', '2018-05-06 16:31:25'),
(399, '1525624366_chernyj-chaj-pri-otravleniyax.jpg', 272, 'App\\Item', '2018-05-06 16:32:46', '2018-05-06 16:32:46'),
(400, '1525624475_chernyj-chaj-pri-otravleniyax.jpg', 273, 'App\\Item', '2018-05-06 16:34:35', '2018-05-06 16:34:35'),
(401, '1525624576_chernyj-chaj-pri-otravleniyax.jpg', 274, 'App\\Item', '2018-05-06 16:36:16', '2018-05-06 16:36:16'),
(402, '1525624633_chernyj-chaj-pri-otravleniyax.jpg', 275, 'App\\Item', '2018-05-06 16:37:13', '2018-05-06 16:37:13'),
(403, '1525624718_chernyj-chaj-pri-otravleniyax.jpg', 276, 'App\\Item', '2018-05-06 16:38:38', '2018-05-06 16:38:38'),
(404, '1525624795_chernyj-chaj-pri-otravleniyax.jpg', 277, 'App\\Item', '2018-05-06 16:39:55', '2018-05-06 16:39:55'),
(405, '1525691301_Grand Hotel_2-29.jpg', 278, 'App\\Item', '2018-05-07 11:08:21', '2018-05-07 11:08:21'),
(406, '1525692536_Grand Hotel_2-133.jpg', 279, 'App\\Item', '2018-05-07 11:28:56', '2018-05-07 11:28:56'),
(407, '1525692852_Grand Hotel_2-141.jpg', 280, 'App\\Item', '2018-05-07 11:34:12', '2018-05-07 11:34:12'),
(409, '1525693297_Grand Hotel_2-137.jpg', 282, 'App\\Item', '2018-05-07 11:41:37', '2018-05-07 11:41:37'),
(411, '1525694153_Grand Hotel_2-112.jpg', 281, 'App\\Item', '2018-05-07 11:55:53', '2018-05-07 11:55:53'),
(412, '1525694587_Grand Hotel_2-144.jpg', 284, 'App\\Item', '2018-05-07 12:03:07', '2018-05-07 12:03:07'),
(413, '1525694978_Grand Hotel_2-152.jpg', 285, 'App\\Item', '2018-05-07 12:09:38', '2018-05-07 12:09:38'),
(414, '1525791610_Grand Hotel_2-254.jpg', 286, 'App\\Item', '2018-05-08 15:00:10', '2018-05-08 15:00:10'),
(415, '1525791702_Grand Hotel_2-247.jpg', 28, 'App\\Category', '2018-05-08 15:01:42', '2018-05-08 15:01:42'),
(418, '1525793004_Grand Hotel_2-248.jpg', 287, 'App\\Item', '2018-05-08 15:23:24', '2018-05-08 15:23:24'),
(419, '1525793201_Grand Hotel_2-249.jpg', 288, 'App\\Item', '2018-05-08 15:26:41', '2018-05-08 15:26:41'),
(420, '1525882686_ci-johnnie-walker-black-label-22021747b4b37f02.jpeg', 73, 'App\\Item', '2018-05-09 16:18:06', '2018-05-09 16:18:06'),
(421, '1525886278_brbon_jac1.jpg', 289, 'App\\Item', '2018-05-09 17:17:58', '2018-05-09 17:17:58'),
(422, '1525962340_Grand Hotel_2-214.jpg', 290, 'App\\Item', '2018-05-10 14:25:40', '2018-05-10 14:25:40'),
(423, '1525968596_3259360310404-600x600.jpg', 187, 'App\\Item', '2018-05-10 16:09:56', '2018-05-10 16:09:56'),
(424, '1525969458_Danzante-Merlot-Toscana-IGT-2015-B.png', 188, 'App\\Item', '2018-05-10 16:24:18', '2018-05-10 16:24:18'),
(425, '1525969557_0Z_340093.jpg', 189, 'App\\Item', '2018-05-10 16:25:57', '2018-05-10 16:25:57'),
(426, '1525969645_88907011_0_640x640.jpg', 190, 'App\\Item', '2018-05-10 16:27:25', '2018-05-10 16:27:25'),
(427, '1525969704_danzante_PG_bottle.jpg', 191, 'App\\Item', '2018-05-10 16:28:24', '2018-05-10 16:28:24'),
(428, '1525970446_chardonay.jpg', 193, 'App\\Item', '2018-05-10 16:40:46', '2018-05-10 16:40:46'),
(429, '1525970552_29542184_1631646723621028_8513165672734119513_n.jpg', 194, 'App\\Item', '2018-05-10 16:42:32', '2018-05-10 16:42:32'),
(430, '1525970650_8-hill-reserve-1-195x730.png', 195, 'App\\Item', '2018-05-10 16:44:10', '2018-05-10 16:44:10'),
(431, '1525970718_IMG_4267-194x730.png', 196, 'App\\Item', '2018-05-10 16:45:18', '2018-05-10 16:45:18'),
(432, '1525970782_Mi-Pueblo_-SAUVIGNON-BLANC.png', 197, 'App\\Item', '2018-05-10 16:46:22', '2018-05-10 16:46:22'),
(433, '1525970842_vina-maipo-mi-pueblo-syrah-1207544-s289_p.jpg', 198, 'App\\Item', '2018-05-10 16:47:22', '2018-05-10 16:47:22'),
(434, '1525970903_cq5dam.web.1280.1280.jpeg', 199, 'App\\Item', '2018-05-10 16:48:23', '2018-05-10 16:48:23'),
(435, '1525970975_images.jpg', 200, 'App\\Item', '2018-05-10 16:49:35', '2018-05-10 16:49:35'),
(436, '1525971037_Tall_Horse_Chardonnay__22209.1374658856.jpg', 201, 'App\\Item', '2018-05-10 16:50:37', '2018-05-10 16:50:37'),
(437, '1526289078_Grand Hotel_2-97.jpg', 22, 'App\\Category', '2018-05-14 09:11:18', '2018-05-14 09:11:18'),
(438, '1526289299_Grand Hotel_2-172.jpg', 55, 'App\\Item', '2018-05-14 09:14:59', '2018-05-14 09:14:59'),
(439, '1526289342_Grand Hotel_2-166.jpg', 56, 'App\\Item', '2018-05-14 09:15:42', '2018-05-14 09:15:42'),
(440, '1526289387_Grand Hotel_2-182.jpg', 60, 'App\\Item', '2018-05-14 09:16:27', '2018-05-14 09:16:27'),
(441, '1526299764_Grand Hotel_2-23.jpg', 14, 'App\\Item', '2018-05-14 12:09:24', '2018-05-14 12:09:24'),
(442, '1526402054_Grand Hotel_2-257.jpg', 291, 'App\\Item', '2018-05-15 16:34:14', '2018-05-15 16:34:14'),
(443, '1526402313_Grand Hotel_2-259.jpg', 292, 'App\\Item', '2018-05-15 16:38:33', '2018-05-15 16:38:33'),
(445, '1526627247_Grand Hotel_2-16.jpg', 6, 'App\\Item', '2018-05-18 07:07:27', '2018-05-18 07:07:27'),
(447, '1526632290_yj.jpg', 293, 'App\\Item', '2018-05-18 08:31:30', '2018-05-18 08:31:30'),
(448, '1526632540_gfc.jpg', 294, 'App\\Item', '2018-05-18 08:35:40', '2018-05-18 08:35:40'),
(449, '1526632774_ahb.jpg', 295, 'App\\Item', '2018-05-18 08:39:34', '2018-05-18 08:39:34'),
(450, '1526633029_sparja.jpg', 296, 'App\\Item', '2018-05-18 08:43:49', '2018-05-18 08:43:49'),
(451, '1526633446_Grand Hotel_2-295 (1).jpg', 297, 'App\\Item', '2018-05-18 08:50:46', '2018-05-18 08:50:46'),
(452, '1526633533_Grand Hotel_2-281.jpg', 298, 'App\\Item', '2018-05-18 08:52:13', '2018-05-18 08:52:13'),
(453, '1526633975_Grand Hotel_2-288.jpg', 299, 'App\\Item', '2018-05-18 08:59:35', '2018-05-18 08:59:35'),
(454, '1526634204_Grand Hotel_2-302.jpg', 300, 'App\\Item', '2018-05-18 09:03:24', '2018-05-18 09:03:24'),
(455, '1526634335_Grand Hotel_2-299.jpg', 301, 'App\\Item', '2018-05-18 09:05:35', '2018-05-18 09:05:35'),
(456, '1526634541_Grand Hotel_2-296.jpg', 302, 'App\\Item', '2018-05-18 09:09:01', '2018-05-18 09:09:01'),
(457, '1526639377_me.jpg', 303, 'App\\Item', '2018-05-18 10:29:37', '2018-05-18 10:29:37'),
(458, '1526639457_tir.jpg', 304, 'App\\Item', '2018-05-18 10:30:57', '2018-05-18 10:30:57'),
(459, '1526639687_Grand Hotel_2-279.jpg', 13, 'App\\Item', '2018-05-18 10:34:47', '2018-05-18 10:34:47'),
(460, '1526639819_Grand Hotel_2-168.jpg', 59, 'App\\Item', '2018-05-18 10:36:59', '2018-05-18 10:36:59'),
(461, '1526639981_Grand Hotel_2-270.jpg', 305, 'App\\Item', '2018-05-18 10:39:41', '2018-05-18 10:39:41'),
(462, '1526640124_Grand Hotel_2-272.jpg', 306, 'App\\Item', '2018-05-18 10:42:04', '2018-05-18 10:42:04'),
(463, '1526640375_Grand Hotel_2-275.jpg', 307, 'App\\Item', '2018-05-18 10:46:15', '2018-05-18 10:46:15'),
(465, '1526640881_0_B0d84wC04.jpg', 309, 'App\\Item', '2018-05-18 10:54:41', '2018-05-18 10:54:41'),
(466, '1526641316_Morozhenoe-Lyuftganza-1.jpg', 310, 'App\\Item', '2018-05-18 11:01:56', '2018-05-18 11:01:56'),
(467, '1526642665_Grand Hotel_2-192.jpg', 311, 'App\\Item', '2018-05-18 11:24:25', '2018-05-18 11:24:25'),
(468, '1526642801_Grand Hotel_2-244.jpg', 312, 'App\\Item', '2018-05-18 11:26:41', '2018-05-18 11:26:41'),
(469, '1526642926_Grand Hotel_2-243.jpg', 313, 'App\\Item', '2018-05-18 11:28:46', '2018-05-18 11:28:46'),
(471, '1526644094_zast.jpg', 25, 'App\\Category', '2018-05-18 11:48:14', '2018-05-18 11:48:14'),
(473, '1526649093_Grand Hotel_2-256.jpg', 44, 'App\\Category', '2018-05-18 13:11:33', '2018-05-18 13:11:33'),
(474, '1526649198_Grand Hotel_2-275.jpg', 24, 'App\\Category', '2018-05-18 13:13:18', '2018-05-18 13:13:18');

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
(4, 'a:3:{i:0;s:4:\"6.00\";i:1;N;i:2;N;}', 5, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-05-03 14:05:01'),
(5, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 6, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-05-18 07:07:27'),
(6, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 7, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-05-03 14:08:42'),
(7, 'a:3:{i:0;s:4:\"4.00\";i:1;N;i:2;N;}', 8, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-05-03 14:09:08'),
(8, 'a:3:{i:0;s:5:\"12.00\";i:1;N;i:2;N;}', 9, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-05-14 12:39:23'),
(10, 'a:3:{i:0;s:5:\"10.00\";i:1;N;i:2;N;}', 11, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-05-14 12:23:10'),
(11, 'a:3:{i:0;s:5:\"15.00\";i:1;N;i:2;N;}', 12, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-04-28 11:24:11'),
(12, 'a:3:{i:0;s:5:\"15.00\";i:1;N;i:2;N;}', 13, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-05-18 10:34:47'),
(13, 'a:3:{i:0;s:5:\"13.00\";i:1;N;i:2;N;}', 14, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:11', '2018-05-14 12:22:37'),
(14, 'a:3:{i:0;s:5:\"18.00\";i:1;N;i:2;N;}', 15, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:12', '2018-04-28 11:24:12'),
(15, 'a:3:{i:0;s:5:\"12.00\";i:1;N;i:2;N;}', 16, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:12', '2018-05-14 12:48:37'),
(16, 'a:3:{i:0;s:5:\"12.00\";i:1;N;i:2;N;}', 17, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 11:24:12', '2018-05-14 14:44:24'),
(18, 'a:3:{i:0;s:5:\"12.00\";i:1;N;i:2;N;}', 19, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 13:37:50', '2018-04-29 09:13:12'),
(19, 'a:3:{i:0;s:5:\"28.00\";i:1;N;i:2;N;}', 20, 'App\\Item', 'a:3:{i:0;s:5:\"270gr\";i:1;N;i:2;N;}', '2018-04-28 15:54:38', '2018-05-04 06:58:37'),
(20, 'a:3:{i:0;s:5:\"30.00\";i:1;N;i:2;N;}', 21, 'App\\Item', 'a:3:{i:0;s:3:\"370\";i:1;N;i:2;N;}', '2018-04-28 16:11:07', '2018-05-04 07:02:28'),
(21, 'a:3:{i:0;s:5:\"52.00\";i:1;N;i:2;N;}', 22, 'App\\Item', 'a:3:{i:0;s:5:\"250gr\";i:1;N;i:2;N;}', '2018-04-28 16:35:53', '2018-05-12 15:11:44'),
(22, 'a:3:{i:0;s:5:\"16.00\";i:1;N;i:2;N;}', 23, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 16:44:04', '2018-05-14 16:16:10'),
(23, 'a:3:{i:0;s:5:\"19.00\";i:1;N;i:2;N;}', 24, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 16:47:13', '2018-05-04 07:12:24'),
(24, 'a:3:{i:0;s:5:\"16.00\";i:1;N;i:2;N;}', 25, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 17:11:05', '2018-04-29 09:47:04'),
(26, 'a:3:{i:0;s:5:\"26.00\";i:1;N;i:2;N;}', 27, 'App\\Item', 'a:3:{i:0;s:5:\"250gr\";i:1;N;i:2;N;}', '2018-04-28 17:50:12', '2018-05-04 06:26:19'),
(27, 'a:3:{i:0;s:5:\"15.00\";i:1;N;i:2;N;}', 28, 'App\\Item', 'a:3:{i:0;s:5:\"400gr\";i:1;N;i:2;N;}', '2018-04-28 17:57:37', '2018-04-30 15:41:05'),
(28, 'a:3:{i:0;s:5:\"15.00\";i:1;N;i:2;N;}', 29, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 18:02:11', '2018-04-30 15:41:28'),
(29, 'a:3:{i:0;s:2:\"15\";i:1;N;i:2;N;}', 30, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 18:08:30', '2018-05-01 13:37:14'),
(30, 'a:3:{i:0;s:2:\"25\";i:1;N;i:2;N;}', 31, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-28 18:15:09', '2018-05-01 13:39:15'),
(31, 'a:3:{i:0;s:2:\"12\";i:1;N;i:2;N;}', 32, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 08:04:50', '2018-05-03 14:43:08'),
(33, 'a:3:{i:0;s:2:\"11\";i:1;N;i:2;N;}', 34, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 08:49:59', '2018-04-29 08:49:59'),
(34, 'a:3:{i:0;s:1:\"9\";i:1;N;i:2;N;}', 35, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 08:56:49', '2018-05-03 14:41:22'),
(35, 'a:3:{i:0;s:5:\"19.00\";i:1;N;i:2;N;}', 36, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 09:02:13', '2018-04-29 09:02:13'),
(36, 'a:3:{i:0;s:5:\"11.00\";i:1;N;i:2;N;}', 37, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 09:12:59', '2018-04-29 09:12:59'),
(37, 'a:3:{i:0;s:5:\"19.00\";i:1;N;i:2;N;}', 38, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 09:20:17', '2018-05-14 15:02:20'),
(38, 'a:3:{i:0;s:5:\"15.00\";i:1;N;i:2;N;}', 39, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 09:28:22', '2018-04-29 09:28:22'),
(39, 'a:3:{i:0;s:2:\"11\";i:1;N;i:2;N;}', 40, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 18:48:26', '2018-04-29 18:48:26'),
(40, 'a:3:{i:0;s:2:\"13\";i:1;N;i:2;N;}', 41, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 18:53:40', '2018-04-29 18:53:40'),
(41, 'a:3:{i:0;s:2:\"13\";i:1;N;i:2;N;}', 42, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 18:58:37', '2018-05-15 14:48:34'),
(42, 'a:3:{i:0;s:2:\"12\";i:1;N;i:2;N;}', 43, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 19:13:46', '2018-05-15 14:49:14'),
(43, 'a:3:{i:0;s:2:\"10\";i:1;N;i:2;N;}', 44, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 19:26:20', '2018-04-29 19:26:20'),
(44, 'a:3:{i:0;s:2:\"12\";i:1;N;i:2;N;}', 45, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 19:28:54', '2018-05-15 14:50:04'),
(45, 'a:3:{i:0;s:2:\"10\";i:1;N;i:2;N;}', 46, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 19:34:29', '2018-05-15 14:50:22'),
(46, 'a:3:{i:0;s:2:\"10\";i:1;N;i:2;N;}', 47, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 19:47:04', '2018-05-15 14:50:37'),
(47, 'a:3:{i:0;s:2:\"15\";i:1;N;i:2;N;}', 48, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 19:55:53', '2018-04-29 19:55:53'),
(48, 'a:3:{i:0;s:2:\"14\";i:1;N;i:2;N;}', 49, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 20:01:30', '2018-04-29 20:01:30'),
(49, 'a:3:{i:0;s:2:\"11\";i:1;N;i:2;N;}', 50, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 20:04:58', '2018-05-15 14:55:16'),
(50, 'a:3:{i:0;s:1:\"9\";i:1;N;i:2;N;}', 51, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 20:08:33', '2018-05-15 14:52:01'),
(51, 'a:3:{i:0;s:2:\"10\";i:1;N;i:2;N;}', 52, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-29 20:15:37', '2018-04-29 20:15:37'),
(53, 'a:3:{i:0;s:2:\"12\";i:1;N;i:2;N;}', 54, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-30 10:09:14', '2018-04-30 10:09:14'),
(54, 'a:3:{i:0;s:1:\"7\";i:1;N;i:2;N;}', 55, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-30 10:17:52', '2018-05-14 09:14:59'),
(55, 'a:3:{i:0;s:2:\"13\";i:1;N;i:2;N;}', 56, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-30 10:51:54', '2018-05-14 09:15:42'),
(56, 'a:3:{i:0;s:2:\"14\";i:1;N;i:2;N;}', 57, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-30 10:58:42', '2018-05-04 07:16:55'),
(57, 'a:3:{i:0;s:5:\"13.00\";i:1;N;i:2;N;}', 58, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-30 11:05:53', '2018-05-14 14:52:46'),
(58, 'a:3:{i:0;s:2:\"19\";i:1;N;i:2;N;}', 59, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-30 11:14:23', '2018-05-18 10:36:59'),
(59, 'a:3:{i:0;s:2:\"19\";i:1;N;i:2;N;}', 60, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-04-30 11:17:10', '2018-05-14 14:52:22'),
(64, 'a:3:{i:0;s:2:\"12\";i:1;s:3:\"240\";i:2;N;}', 65, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 13:46:28', '2018-05-09 16:01:48'),
(65, 'a:3:{i:0;s:2:\"12\";i:1;s:3:\"168\";i:2;N;}', 66, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 14:06:09', '2018-05-09 16:10:15'),
(66, 'a:3:{i:0;s:2:\"11\";i:1;s:3:\"154\";i:2;N;}', 67, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 14:13:18', '2018-05-09 16:12:06'),
(67, 'a:3:{i:0;s:2:\"12\";i:1;s:3:\"180\";i:2;N;}', 68, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 14:16:32', '2018-05-09 16:12:43'),
(68, 'a:3:{i:0;s:1:\"5\";i:1;s:2:\"70\";i:2;N;}', 69, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 14:23:35', '2018-05-09 16:13:14'),
(69, 'a:3:{i:0;s:2:\"12\";i:1;s:3:\"180\";i:2;N;}', 70, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 14:27:09', '2018-05-09 16:14:22'),
(70, 'a:3:{i:0;s:1:\"6\";i:1;s:3:\"120\";i:2;N;}', 71, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 14:29:54', '2018-05-09 16:14:45'),
(71, 'a:3:{i:0;s:1:\"6\";i:1;s:3:\"120\";i:2;N;}', 72, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 14:36:25', '2018-05-09 16:16:39'),
(72, 'a:3:{i:0;s:1:\"6\";i:1;s:3:\"120\";i:2;N;}', 73, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 14:37:24', '2018-05-09 16:18:06'),
(73, 'a:3:{i:0;s:2:\"31\";i:1;s:3:\"465\";i:2;N;}', 74, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 14:41:01', '2018-05-09 16:18:49'),
(74, 'a:3:{i:0;s:1:\"7\";i:1;s:3:\"105\";i:2;N;}', 75, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 14:43:40', '2018-05-09 16:23:11'),
(75, 'a:3:{i:0;s:1:\"9\";i:1;s:3:\"135\";i:2;N;}', 76, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 14:45:35', '2018-05-09 16:23:37'),
(76, 'a:3:{i:0;s:2:\"12\";i:1;s:3:\"168\";i:2;N;}', 77, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 14:48:32', '2018-05-09 16:24:17'),
(77, 'a:3:{i:0;s:1:\"5\";i:1;s:3:\"100\";i:2;N;}', 78, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 14:50:41', '2018-05-09 16:24:43'),
(78, 'a:3:{i:0;s:2:\"12\";i:1;s:3:\"168\";i:2;N;}', 79, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 14:53:42', '2018-05-09 16:25:11'),
(79, 'a:3:{i:0;s:2:\"14\";i:1;s:3:\"196\";i:2;N;}', 80, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 14:56:51', '2018-05-09 16:27:01'),
(80, 'a:3:{i:0;s:2:\"19\";i:1;s:3:\"266\";i:2;N;}', 81, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 15:15:24', '2018-05-09 16:27:39'),
(81, 'a:3:{i:0;s:2:\"37\";i:1;s:3:\"518\";i:2;N;}', 82, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 15:18:00', '2018-05-09 16:28:13'),
(82, 'a:3:{i:0;s:2:\"16\";i:1;s:3:\"320\";i:2;N;}', 83, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 15:24:47', '2018-05-09 16:29:27'),
(83, 'a:3:{i:0;s:1:\"9\";i:1;s:3:\"126\";i:2;N;}', 84, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 15:28:43', '2018-05-09 16:29:53'),
(84, 'a:3:{i:0;s:1:\"5\";i:1;s:3:\"100\";i:2;N;}', 85, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 15:30:32', '2018-05-09 16:30:13'),
(85, 'a:3:{i:0;s:2:\"10\";i:1;s:3:\"140\";i:2;N;}', 86, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 15:32:05', '2018-05-09 16:30:38'),
(86, 'a:3:{i:0;s:2:\"12\";i:1;s:3:\"168\";i:2;N;}', 87, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 15:33:33', '2018-05-09 16:31:02'),
(87, 'a:3:{i:0;s:2:\"19\";i:1;s:3:\"266\";i:2;N;}', 88, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 15:34:33', '2018-05-09 16:31:28'),
(88, 'a:3:{i:0;s:2:\"12\";i:1;s:3:\"240\";i:2;N;}', 89, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 15:36:25', '2018-05-09 16:31:50'),
(89, 'a:3:{i:0;s:1:\"5\";i:1;s:3:\"100\";i:2;N;}', 90, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 15:37:51', '2018-05-09 16:32:22'),
(90, 'a:3:{i:0;s:1:\"8\";i:1;s:3:\"112\";i:2;N;}', 91, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 15:51:41', '2018-05-09 16:32:51'),
(91, 'a:3:{i:0;s:1:\"8\";i:1;s:3:\"160\";i:2;N;}', 92, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 15:54:07', '2018-05-09 16:34:36'),
(92, 'a:3:{i:0;s:2:\"12\";i:1;s:3:\"168\";i:2;N;}', 93, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 15:58:02', '2018-05-09 16:34:51'),
(93, 'a:3:{i:0;s:2:\"26\";i:1;s:3:\"520\";i:2;N;}', 94, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 16:00:42', '2018-05-09 16:35:50'),
(94, 'a:3:{i:0;s:2:\"14\";i:1;s:3:\"280\";i:2;N;}', 95, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 16:03:04', '2018-05-09 16:36:42'),
(95, 'a:3:{i:0;s:1:\"5\";i:1;s:3:\"100\";i:2;N;}', 96, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 16:05:34', '2018-05-09 16:49:43'),
(96, 'a:3:{i:0;s:1:\"5\";i:1;s:3:\"100\";i:2;N;}', 97, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 16:07:39', '2018-05-09 16:50:17'),
(97, 'a:3:{i:0;s:1:\"8\";i:1;s:3:\"160\";i:2;N;}', 98, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 16:10:24', '2018-05-09 16:50:56'),
(98, 'a:3:{i:0;s:1:\"9\";i:1;s:3:\"180\";i:2;N;}', 99, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 16:13:59', '2018-05-09 16:51:22'),
(99, 'a:3:{i:0;s:2:\"14\";i:1;s:3:\"196\";i:2;N;}', 100, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 16:18:03', '2018-05-09 16:51:48'),
(100, 'a:3:{i:0;s:1:\"9\";i:1;s:3:\"126\";i:2;N;}', 101, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 16:25:10', '2018-05-09 16:52:20'),
(101, 'a:3:{i:0;s:2:\"12\";i:1;s:3:\"168\";i:2;N;}', 102, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 16:26:55', '2018-05-09 16:54:04'),
(102, 'a:3:{i:0;s:2:\"14\";i:1;s:3:\"196\";i:2;N;}', 103, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 16:28:51', '2018-05-09 16:54:52'),
(103, 'a:3:{i:0;s:2:\"10\";i:1;s:3:\"200\";i:2;N;}', 104, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 16:30:55', '2018-05-09 16:55:19'),
(104, 'a:3:{i:0;s:2:\"14\";i:1;s:3:\"196\";i:2;N;}', 105, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 17:23:42', '2018-05-09 17:02:45'),
(105, 'a:3:{i:0;s:2:\"22\";i:1;s:3:\"308\";i:2;N;}', 106, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 17:37:02', '2018-05-09 17:04:25'),
(106, 'a:3:{i:0;s:2:\"22\";i:1;s:3:\"308\";i:2;N;}', 107, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 17:39:53', '2018-05-09 17:05:03'),
(107, 'a:3:{i:0;s:2:\"23\";i:1;s:3:\"322\";i:2;N;}', 108, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 17:41:49', '2018-05-09 17:05:44'),
(108, 'a:3:{i:0;s:2:\"29\";i:1;s:3:\"406\";i:2;N;}', 109, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 17:44:05', '2018-05-09 17:06:57'),
(109, 'a:3:{i:0;s:2:\"14\";i:1;s:3:\"196\";i:2;N;}', 110, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 17:45:31', '2018-05-09 17:07:25'),
(110, 'a:3:{i:0;s:2:\"12\";i:1;s:3:\"240\";i:2;N;}', 111, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 17:47:17', '2018-05-09 17:07:56'),
(111, 'a:3:{i:0;s:1:\"6\";i:1;s:3:\"120\";i:2;N;}', 112, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 17:48:35', '2018-05-09 17:08:27'),
(112, 'a:3:{i:0;s:1:\"6\";i:1;s:3:\"120\";i:2;N;}', 113, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 19:57:13', '2018-05-09 17:19:51'),
(113, 'a:3:{i:0;s:1:\"6\";i:1;s:3:\"120\";i:2;N;}', 114, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 19:58:13', '2018-05-09 17:20:07'),
(114, 'a:3:{i:0;s:2:\"14\";i:1;s:3:\"210\";i:2;N;}', 115, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:01:14', '2018-05-09 17:20:32'),
(115, 'a:3:{i:0;s:1:\"8\";i:1;s:3:\"120\";i:2;N;}', 116, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:03:18', '2018-05-09 17:20:53'),
(116, 'a:3:{i:0;s:1:\"8\";i:1;s:3:\"120\";i:2;N;}', 117, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:04:25', '2018-05-09 17:21:17'),
(117, 'a:3:{i:0;s:2:\"10\";i:1;s:3:\"150\";i:2;N;}', 118, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:09:37', '2018-05-09 17:21:43'),
(118, 'a:3:{i:0;s:2:\"11\";i:1;s:3:\"165\";i:2;N;}', 119, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:10:19', '2018-05-09 17:22:08'),
(119, 'a:3:{i:0;s:1:\"5\";i:1;s:3:\"100\";i:2;N;}', 120, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:12:22', '2018-05-09 17:25:11'),
(120, 'a:3:{i:0;s:1:\"6\";i:1;s:2:\"90\";i:2;N;}', 121, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:13:39', '2018-05-09 17:25:59'),
(121, 'a:3:{i:0;s:1:\"7\";i:1;s:3:\"140\";i:2;N;}', 122, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:15:19', '2018-05-09 17:26:30'),
(122, 'a:3:{i:0;s:1:\"6\";i:1;s:3:\"120\";i:2;N;}', 123, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:20:19', '2018-05-09 17:22:28'),
(123, 'a:3:{i:0;s:1:\"6\";i:1;s:3:\"120\";i:2;N;}', 124, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:22:58', '2018-05-09 17:22:43'),
(124, 'a:3:{i:0;s:1:\"6\";i:1;s:3:\"120\";i:2;N;}', 125, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:23:40', '2018-05-09 17:23:00'),
(125, 'a:3:{i:0;s:1:\"6\";i:1;s:3:\"120\";i:2;N;}', 126, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:24:28', '2018-05-09 17:41:43'),
(126, 'a:3:{i:0;s:1:\"6\";i:1;s:3:\"120\";i:2;N;}', 127, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:27:09', '2018-05-09 17:23:33'),
(127, 'a:3:{i:0;s:1:\"7\";i:1;s:3:\"140\";i:2;N;}', 128, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:27:57', '2018-05-09 17:24:29'),
(128, 'a:3:{i:0;s:1:\"9\";i:1;s:3:\"180\";i:2;N;}', 129, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:28:28', '2018-05-09 17:24:49'),
(129, 'a:3:{i:0;s:1:\"5\";i:1;s:3:\"100\";i:2;N;}', 130, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:34:12', '2018-05-09 17:26:50'),
(130, 'a:3:{i:0;s:1:\"5\";i:1;s:3:\"100\";i:2;N;}', 131, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:34:45', '2018-05-09 17:27:04'),
(131, 'a:3:{i:0;s:1:\"5\";i:1;s:2:\"70\";i:2;N;}', 132, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:36:13', '2018-05-09 17:28:10'),
(132, 'a:3:{i:0;s:1:\"7\";i:1;s:3:\"140\";i:2;N;}', 133, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:37:42', '2018-05-09 17:28:27'),
(133, 'a:3:{i:0;s:1:\"6\";i:1;s:3:\"120\";i:2;N;}', 134, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:39:55', '2018-05-09 17:28:45'),
(134, 'a:3:{i:0;s:1:\"7\";i:1;s:3:\"140\";i:2;N;}', 135, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-04-30 20:46:04', '2018-05-09 17:29:02'),
(135, 'a:3:{i:0;s:1:\"4\";i:1;N;i:2;N;}', 136, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 08:42:55', '2018-05-03 14:34:24'),
(136, 'a:3:{i:0;s:2:\"12\";i:1;N;i:2;N;}', 137, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 09:14:24', '2018-05-01 09:14:24'),
(137, 'a:3:{i:0;s:2:\"10\";i:1;N;i:2;N;}', 138, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 09:38:18', '2018-05-01 09:38:18'),
(138, 'a:3:{i:0;s:1:\"8\";i:1;N;i:2;N;}', 139, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 10:29:29', '2018-05-01 10:29:29'),
(139, 'a:3:{i:0;s:1:\"9\";i:1;N;i:2;N;}', 140, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 10:49:15', '2018-05-01 10:49:15'),
(140, 'a:3:{i:0;s:1:\"7\";i:1;N;i:2;N;}', 141, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 11:09:48', '2018-05-01 11:09:48'),
(141, 'a:3:{i:0;s:2:\"12\";i:1;N;i:2;N;}', 142, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 11:11:45', '2018-05-14 14:31:00'),
(142, 'a:3:{i:0;s:1:\"9\";i:1;N;i:2;N;}', 143, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 11:23:54', '2018-05-14 13:24:46'),
(143, 'a:3:{i:0;s:1:\"8\";i:1;N;i:2;N;}', 144, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 11:30:02', '2018-05-14 13:17:42'),
(144, 'a:3:{i:0;s:2:\"10\";i:1;N;i:2;N;}', 145, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 11:34:48', '2018-05-01 11:34:48'),
(145, 'a:3:{i:0;s:2:\"27\";i:1;N;i:2;N;}', 146, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 11:37:51', '2018-05-14 14:37:36'),
(146, 'a:3:{i:0;s:2:\"11\";i:1;N;i:2;N;}', 147, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 11:40:04', '2018-05-14 13:11:21'),
(147, 'a:3:{i:0;s:2:\"15\";i:1;N;i:2;N;}', 148, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 11:41:44', '2018-05-14 13:16:01'),
(148, 'a:3:{i:0;s:2:\"10\";i:1;N;i:2;N;}', 149, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 14:33:30', '2018-05-01 14:33:30'),
(149, 'a:3:{i:0;s:2:\"14\";i:1;N;i:2;N;}', 150, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 14:42:27', '2018-05-01 14:42:27'),
(150, 'a:3:{i:0;s:2:\"14\";i:1;N;i:2;N;}', 151, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 14:47:24', '2018-05-01 14:47:24'),
(151, 'a:3:{i:0;s:2:\"10\";i:1;N;i:2;N;}', 152, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 14:59:12', '2018-05-01 14:59:12'),
(152, 'a:3:{i:0;s:2:\"10\";i:1;N;i:2;N;}', 153, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 15:13:00', '2018-05-15 14:43:29'),
(153, 'a:3:{i:0;s:1:\"7\";i:1;N;i:2;N;}', 154, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 15:19:11', '2018-05-01 15:19:11'),
(154, 'a:3:{i:0;s:1:\"6\";i:1;N;i:2;N;}', 155, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 15:32:28', '2018-05-01 15:32:28'),
(155, 'a:3:{i:0;s:1:\"7\";i:1;N;i:2;N;}', 156, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 15:34:41', '2018-05-01 15:34:41'),
(156, 'a:3:{i:0;s:1:\"7\";i:1;N;i:2;N;}', 157, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 15:53:20', '2018-05-01 15:53:20'),
(157, 'a:3:{i:0;s:1:\"7\";i:1;N;i:2;N;}', 158, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 15:57:16', '2018-05-01 15:57:16'),
(158, 'a:3:{i:0;s:1:\"6\";i:1;N;i:2;N;}', 159, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 16:00:24', '2018-05-01 16:00:24'),
(159, 'a:3:{i:0;s:2:\"12\";i:1;N;i:2;N;}', 160, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 16:07:36', '2018-05-01 16:07:36'),
(160, 'a:3:{i:0;s:2:\"11\";i:1;N;i:2;N;}', 161, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 16:11:19', '2018-05-01 16:11:19'),
(161, 'a:3:{i:0;s:2:\"12\";i:1;N;i:2;N;}', 162, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 16:24:02', '2018-05-01 16:24:02'),
(162, 'a:3:{i:0;s:2:\"14\";i:1;N;i:2;N;}', 163, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 16:27:57', '2018-05-01 16:27:57'),
(163, 'a:3:{i:0;s:2:\"14\";i:1;N;i:2;N;}', 164, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-01 16:32:16', '2018-05-01 16:32:16'),
(164, 'a:3:{i:0;s:1:\"5\";i:1;s:3:\"100\";i:2;N;}', 165, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:26:56', '2018-05-09 17:42:03'),
(165, 'a:3:{i:0;s:1:\"6\";i:1;s:2:\"84\";i:2;N;}', 166, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:28:39', '2018-05-09 17:42:24'),
(166, 'a:3:{i:0;s:4:\"6.00\";i:1;s:3:\"120\";i:2;N;}', 167, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:32:42', '2018-05-09 17:42:41'),
(167, 'a:3:{i:0;s:1:\"5\";i:1;s:3:\"100\";i:2;N;}', 168, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:34:45', '2018-05-09 17:43:07'),
(168, 'a:3:{i:0;s:1:\"6\";i:1;s:2:\"84\";i:2;N;}', 169, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:37:34', '2018-05-09 17:43:27'),
(169, 'a:3:{i:0;s:1:\"6\";i:1;s:2:\"84\";i:2;N;}', 170, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:40:13', '2018-05-09 17:43:43'),
(170, 'a:3:{i:0;s:1:\"6\";i:1;s:2:\"84\";i:2;N;}', 171, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:42:33', '2018-05-09 17:44:02'),
(171, 'a:3:{i:0;s:1:\"5\";i:1;s:3:\"100\";i:2;N;}', 172, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:44:06', '2018-05-09 17:44:22'),
(172, 'a:3:{i:0;s:1:\"6\";i:1;s:2:\"84\";i:2;N;}', 173, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:45:13', '2018-05-09 17:44:43'),
(173, 'a:3:{i:0;s:1:\"6\";i:1;s:2:\"84\";i:2;N;}', 174, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:48:17', '2018-05-09 17:45:02'),
(174, 'a:3:{i:0;s:1:\"7\";i:1;s:2:\"98\";i:2;N;}', 175, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:49:48', '2018-05-09 17:45:33'),
(175, 'a:3:{i:0;s:1:\"6\";i:1;s:3:\"120\";i:2;N;}', 176, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:51:06', '2018-05-09 17:45:55'),
(176, 'a:3:{i:0;s:1:\"7\";i:1;s:3:\"140\";i:2;N;}', 177, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:52:28', '2018-05-09 17:46:14'),
(177, 'a:3:{i:0;s:1:\"6\";i:1;s:2:\"84\";i:2;N;}', 178, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:53:39', '2018-05-09 17:46:31'),
(178, 'a:3:{i:0;s:1:\"7\";i:1;s:2:\"98\";i:2;N;}', 179, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:55:22', '2018-05-09 17:46:48'),
(179, 'a:3:{i:0;s:1:\"6\";i:1;s:3:\"120\";i:2;N;}', 180, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:56:40', '2018-05-09 17:47:13'),
(180, 'a:3:{i:0;s:1:\"5\";i:1;s:3:\"100\";i:2;N;}', 181, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:57:51', '2018-05-09 17:47:31'),
(181, 'a:3:{i:0;s:1:\"6\";i:1;s:3:\"120\";i:2;N;}', 182, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 12:58:39', '2018-05-09 17:47:49'),
(182, 'a:3:{i:0;s:1:\"5\";i:1;s:3:\"100\";i:2;N;}', 183, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 13:07:51', '2018-05-09 17:36:54'),
(183, 'a:3:{i:0;s:1:\"5\";i:1;s:3:\"100\";i:2;N;}', 184, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 13:08:22', '2018-05-09 17:37:11'),
(184, 'a:3:{i:0;s:1:\"5\";i:1;s:3:\"100\";i:2;N;}', 185, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 13:08:55', '2018-05-09 17:37:31'),
(185, 'a:3:{i:0;s:1:\"5\";i:1;s:3:\"100\";i:2;N;}', 186, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 13:09:30', '2018-05-09 17:37:48'),
(186, 'a:3:{i:0;s:2:\"40\";i:1;N;i:2;N;}', 187, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 13:37:24', '2018-05-10 16:11:03'),
(187, 'a:3:{i:0;s:2:\"40\";i:1;N;i:2;N;}', 188, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 13:38:51', '2018-05-10 16:24:18'),
(188, 'a:3:{i:0;s:2:\"35\";i:1;N;i:2;N;}', 189, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 13:39:34', '2018-05-10 16:25:57'),
(189, 'a:3:{i:0;s:2:\"35\";i:1;N;i:2;N;}', 190, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 13:40:22', '2018-05-10 16:27:25'),
(190, 'a:3:{i:0;s:2:\"40\";i:1;N;i:2;N;}', 191, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 13:41:44', '2018-05-10 16:28:24'),
(191, 'a:3:{i:0;s:4:\"8.00\";i:1;N;i:2;N;}', 192, 'App\\Item', 'a:3:{i:0;s:5:\"150ml\";i:1;N;i:2;N;}', '2018-05-02 13:43:44', '2018-05-02 13:43:44'),
(192, 'a:3:{i:0;s:4:\"7.00\";i:1;N;i:2;N;}', 193, 'App\\Item', 'a:3:{i:0;s:5:\"150ml\";i:1;N;i:2;N;}', '2018-05-02 13:45:47', '2018-05-10 16:41:05'),
(193, 'a:3:{i:0;s:4:\"7.00\";i:1;N;i:2;N;}', 194, 'App\\Item', 'a:3:{i:0;s:5:\"150ml\";i:1;N;i:2;N;}', '2018-05-02 13:46:50', '2018-05-10 16:42:32'),
(194, 'a:3:{i:0;s:4:\"7.00\";i:1;N;i:2;N;}', 195, 'App\\Item', 'a:3:{i:0;s:5:\"150ml\";i:1;N;i:2;N;}', '2018-05-02 13:55:35', '2018-05-10 16:44:10'),
(195, 'a:3:{i:0;s:4:\"7.00\";i:1;N;i:2;N;}', 196, 'App\\Item', 'a:3:{i:0;s:5:\"150ml\";i:1;N;i:2;N;}', '2018-05-02 13:56:06', '2018-05-10 16:45:18'),
(196, 'a:3:{i:0;s:2:\"40\";i:1;N;i:2;N;}', 197, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 13:57:02', '2018-05-10 16:46:21'),
(197, 'a:3:{i:0;s:2:\"40\";i:1;N;i:2;N;}', 198, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 13:57:47', '2018-05-10 16:47:22'),
(198, 'a:3:{i:0;s:2:\"30\";i:1;N;i:2;N;}', 199, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 13:59:01', '2018-05-10 16:48:23'),
(199, 'a:3:{i:0;s:2:\"30\";i:1;N;i:2;N;}', 200, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 14:00:36', '2018-05-10 16:49:35'),
(200, 'a:3:{i:0;s:2:\"30\";i:1;N;i:2;N;}', 201, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 14:01:33', '2018-05-10 16:50:37'),
(201, 'a:3:{i:0;s:2:\"53\";i:1;N;i:2;N;}', 202, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 14:03:29', '2018-05-02 14:03:29'),
(202, 'a:3:{i:0;s:2:\"51\";i:1;N;i:2;N;}', 203, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 14:05:04', '2018-05-02 14:05:04'),
(203, 'a:3:{i:0;s:4:\"6.00\";i:1;N;i:2;N;}', 204, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;N;i:2;N;}', '2018-05-02 14:07:20', '2018-05-02 14:07:20'),
(204, 'a:3:{i:0;s:4:\"7.00\";i:1;N;i:2;N;}', 205, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;N;i:2;N;}', '2018-05-02 14:08:17', '2018-05-02 14:08:17'),
(205, 'a:3:{i:0;s:1:\"7\";i:1;s:3:\"140\";i:2;N;}', 206, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 14:20:32', '2018-05-09 17:32:00'),
(206, 'a:3:{i:0;s:2:\"10\";i:1;s:3:\"140\";i:2;N;}', 207, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 14:23:06', '2018-05-09 17:32:24'),
(207, 'a:3:{i:0;s:2:\"14\";i:1;s:3:\"196\";i:2;N;}', 208, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 14:24:11', '2018-05-09 17:32:45'),
(208, 'a:3:{i:0;s:1:\"7\";i:1;s:3:\"140\";i:2;N;}', 209, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 14:25:17', '2018-05-09 17:33:19'),
(209, 'a:3:{i:0;s:2:\"13\";i:1;s:3:\"130\";i:2;N;}', 210, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 14:26:34', '2018-05-09 17:33:43'),
(210, 'a:3:{i:0;s:2:\"36\";i:1;s:3:\"252\";i:2;N;}', 211, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 14:27:50', '2018-05-09 17:34:24'),
(211, 'a:3:{i:0;s:1:\"8\";i:1;s:3:\"160\";i:2;N;}', 212, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 14:28:59', '2018-05-09 17:34:57'),
(212, 'a:3:{i:0;s:2:\"12\";i:1;s:3:\"240\";i:2;N;}', 213, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 14:30:25', '2018-05-09 17:35:34'),
(213, 'a:3:{i:0;s:1:\"7\";i:1;s:3:\"140\";i:2;N;}', 214, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 14:31:36', '2018-05-09 17:35:57'),
(214, 'a:3:{i:0;s:1:\"9\";i:1;s:3:\"180\";i:2;N;}', 215, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-02 14:32:21', '2018-05-09 17:36:18'),
(215, 'a:3:{i:0;s:6:\"470.00\";i:1;N;i:2;N;}', 216, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 14:34:17', '2018-05-02 14:34:17'),
(216, 'a:3:{i:0;s:6:\"180.00\";i:1;N;i:2;N;}', 217, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 14:35:46', '2018-05-02 14:35:46'),
(217, 'a:3:{i:0;s:6:\"160.00\";i:1;N;i:2;N;}', 218, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 14:37:22', '2018-05-02 14:37:22'),
(218, 'a:3:{i:0;s:5:\"16.00\";i:1;N;i:2;N;}', 219, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 14:49:12', '2018-05-02 14:49:12'),
(219, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 220, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 14:50:42', '2018-05-02 14:50:42'),
(220, 'a:3:{i:0;s:4:\"4.00\";i:1;N;i:2;N;}', 221, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 14:55:48', '2018-05-02 14:55:48'),
(221, 'a:3:{i:0;s:4:\"4.00\";i:1;N;i:2;N;}', 222, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 14:57:01', '2018-05-02 14:57:01'),
(222, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 223, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 15:00:15', '2018-05-02 15:00:15'),
(223, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 224, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 15:03:37', '2018-05-02 15:03:37'),
(224, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 225, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 15:06:03', '2018-05-02 15:06:03'),
(225, 'a:3:{i:0;s:4:\"4.00\";i:1;N;i:2;N;}', 226, 'App\\Item', 'a:3:{i:0;s:3:\"BTL\";i:1;N;i:2;N;}', '2018-05-02 15:07:37', '2018-05-02 15:07:37'),
(228, 'a:3:{i:0;s:5:\"11.00\";i:1;N;i:2;N;}', 229, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 15:51:58', '2018-05-02 16:29:51'),
(229, 'a:3:{i:0;s:5:\"12.00\";i:1;N;i:2;N;}', 230, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 16:07:57', '2018-05-02 16:29:13'),
(230, 'a:3:{i:0;s:4:\"6.00\";i:1;N;i:2;N;}', 231, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 16:21:46', '2018-05-02 16:21:46'),
(231, 'a:3:{i:0;s:4:\"6.00\";i:1;N;i:2;N;}', 232, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 16:28:06', '2018-05-02 16:28:06'),
(232, 'a:3:{i:0;s:5:\"17.00\";i:1;N;i:2;N;}', 233, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 17:24:10', '2018-05-02 17:24:10'),
(233, 'a:3:{i:0;s:4:\"9.00\";i:1;N;i:2;N;}', 234, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 17:28:01', '2018-05-02 17:28:01'),
(234, 'a:3:{i:0;s:5:\"17.00\";i:1;N;i:2;N;}', 235, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 17:37:00', '2018-05-02 17:37:00'),
(235, 'a:3:{i:0;s:4:\"6.00\";i:1;N;i:2;N;}', 236, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 17:39:52', '2018-05-02 17:39:52'),
(236, 'a:3:{i:0;s:4:\"7.00\";i:1;N;i:2;N;}', 237, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 17:41:49', '2018-05-02 17:41:49'),
(237, 'a:3:{i:0;s:4:\"6.00\";i:1;N;i:2;N;}', 238, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 17:44:01', '2018-05-02 17:44:01'),
(238, 'a:3:{i:0;s:5:\"10.00\";i:1;N;i:2;N;}', 239, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 17:45:38', '2018-05-02 17:45:38'),
(239, 'a:3:{i:0;s:4:\"8.00\";i:1;N;i:2;N;}', 240, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 17:48:55', '2018-05-02 17:48:55'),
(240, 'a:3:{i:0;s:4:\"9.00\";i:1;N;i:2;N;}', 241, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 17:53:57', '2018-05-02 17:53:57'),
(241, 'a:3:{i:0;s:4:\"8.00\";i:1;N;i:2;N;}', 242, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:01:40', '2018-05-02 18:01:40'),
(242, 'a:3:{i:0;s:4:\"6.00\";i:1;N;i:2;N;}', 243, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:09:49', '2018-05-02 18:09:49'),
(243, 'a:3:{i:0;s:5:\"14.00\";i:1;N;i:2;N;}', 244, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:12:49', '2018-05-02 18:12:49'),
(244, 'a:3:{i:0;s:4:\"6.00\";i:1;N;i:2;N;}', 245, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:14:52', '2018-05-02 18:14:52'),
(245, 'a:3:{i:0;s:4:\"8.00\";i:1;N;i:2;N;}', 246, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:16:42', '2018-05-02 18:16:42'),
(246, 'a:3:{i:0;s:4:\"8.00\";i:1;N;i:2;N;}', 247, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:17:37', '2018-05-02 18:17:37'),
(247, 'a:3:{i:0;s:4:\"6.00\";i:1;N;i:2;N;}', 248, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:19:14', '2018-05-02 18:19:14'),
(248, 'a:3:{i:0;s:4:\"8.00\";i:1;N;i:2;N;}', 249, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:19:48', '2018-05-02 18:19:48'),
(249, 'a:3:{i:0;s:4:\"8.00\";i:1;N;i:2;N;}', 250, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:21:42', '2018-05-02 18:21:42'),
(250, 'a:3:{i:0;s:5:\"10.00\";i:1;N;i:2;N;}', 251, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:23:11', '2018-05-02 18:23:11'),
(251, 'a:3:{i:0;s:4:\"6.00\";i:1;N;i:2;N;}', 252, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:25:05', '2018-05-02 18:25:05'),
(252, 'a:3:{i:0;s:4:\"6.00\";i:1;N;i:2;N;}', 253, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:27:39', '2018-05-02 18:27:39'),
(253, 'a:3:{i:0;s:5:\"10.00\";i:1;N;i:2;N;}', 254, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:29:56', '2018-05-02 18:29:56'),
(254, 'a:3:{i:0;s:4:\"6.00\";i:1;N;i:2;N;}', 255, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:30:37', '2018-05-02 18:30:37'),
(255, 'a:3:{i:0;s:4:\"6.00\";i:1;N;i:2;N;}', 256, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:31:29', '2018-05-02 18:31:29'),
(256, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 257, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:38:56', '2018-05-02 18:41:12'),
(257, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 258, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:40:48', '2018-05-02 18:44:11'),
(258, 'a:3:{i:0;s:5:\"10.00\";i:1;N;i:2;N;}', 259, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-02 18:46:29', '2018-05-02 18:46:29'),
(260, 'a:3:{i:0;s:4:\"4.00\";i:1;N;i:2;N;}', 261, 'App\\Item', 'a:3:{i:0;s:5:\"250ml\";i:1;N;i:2;N;}', '2018-05-05 11:44:10', '2018-05-05 11:44:10'),
(261, 'a:3:{i:0;s:4:\"3.00\";i:1;N;i:2;N;}', 262, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-05 11:53:09', '2018-05-06 16:15:12'),
(262, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 263, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-05 11:57:38', '2018-05-06 16:15:55'),
(263, 'a:3:{i:0;s:4:\"4.00\";i:1;N;i:2;N;}', 264, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-05 11:59:47', '2018-05-05 11:59:47'),
(264, 'a:3:{i:0;s:4:\"6.00\";i:1;N;i:2;N;}', 265, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-05 12:06:06', '2018-05-05 12:06:06'),
(265, 'a:3:{i:0;s:5:\"10.00\";i:1;N;i:2;N;}', 266, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-05 12:07:54', '2018-05-05 12:07:54'),
(266, 'a:3:{i:0;s:4:\"3.00\";i:1;N;i:2;N;}', 267, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-05 12:12:14', '2018-05-05 12:12:14'),
(267, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 268, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-06 16:20:31', '2018-05-06 16:23:43'),
(268, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 269, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-06 16:27:30', '2018-05-06 16:27:30'),
(269, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 270, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-06 16:30:18', '2018-05-06 16:30:18'),
(270, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 271, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-06 16:31:25', '2018-05-06 16:31:25'),
(271, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 272, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-06 16:32:46', '2018-05-06 16:32:46'),
(272, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 273, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-06 16:34:35', '2018-05-06 16:34:35'),
(273, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 274, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-06 16:36:16', '2018-05-06 16:36:16'),
(274, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 275, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-06 16:37:13', '2018-05-06 16:37:13'),
(275, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 276, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-06 16:38:38', '2018-05-06 16:38:38'),
(276, 'a:3:{i:0;s:4:\"5.00\";i:1;N;i:2;N;}', 277, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-06 16:39:55', '2018-05-06 16:39:55'),
(277, 'a:3:{i:0;s:2:\"12\";i:1;N;i:2;N;}', 278, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-07 11:08:21', '2018-05-07 11:08:21'),
(278, 'a:3:{i:0;s:2:\"12\";i:1;s:2:\"14\";i:2;N;}', 279, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-07 11:28:56', '2018-05-14 15:05:35'),
(279, 'a:3:{i:0;s:2:\"12\";i:1;s:2:\"14\";i:2;N;}', 280, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-07 11:34:12', '2018-05-14 15:10:37'),
(280, 'a:3:{i:0;s:2:\"12\";i:1;s:2:\"14\";i:2;N;}', 281, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-07 11:37:24', '2018-05-14 15:15:19'),
(281, 'a:3:{i:0;s:2:\"17\";i:1;N;i:2;N;}', 282, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-07 11:41:37', '2018-05-14 15:37:33'),
(283, 'a:3:{i:0;s:2:\"10\";i:1;N;i:2;N;}', 284, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-07 12:03:07', '2018-05-14 15:56:00'),
(284, 'a:3:{i:0;s:1:\"8\";i:1;N;i:2;N;}', 285, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-07 12:09:38', '2018-05-14 16:00:13'),
(285, 'a:3:{i:0;s:2:\"11\";i:1;N;i:2;N;}', 286, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-08 15:00:10', '2018-05-08 15:00:10'),
(286, 'a:3:{i:0;s:2:\"13\";i:1;N;i:2;N;}', 287, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-08 15:13:25', '2018-05-08 15:23:35'),
(287, 'a:3:{i:0;s:2:\"10\";i:1;N;i:2;N;}', 288, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-08 15:26:41', '2018-05-08 15:26:41'),
(288, 'a:3:{i:0;s:1:\"6\";i:1;s:2:\"84\";i:2;N;}', 289, 'App\\Item', 'a:3:{i:0;s:4:\"50ml\";i:1;s:3:\"BTL\";i:2;N;}', '2018-05-09 17:17:58', '2018-05-09 17:17:58'),
(289, 'a:3:{i:0;s:2:\"10\";i:1;N;i:2;N;}', 290, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-10 14:25:40', '2018-05-15 14:44:14'),
(290, 'a:3:{i:0;s:2:\"13\";i:1;N;i:2;N;}', 291, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-15 16:34:14', '2018-05-15 16:34:14'),
(291, 'a:3:{i:0;s:2:\"14\";i:1;N;i:2;N;}', 292, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-15 16:38:33', '2018-05-15 16:38:33'),
(292, 'a:3:{i:0;s:3:\"4.5\";i:1;N;i:2;N;}', 293, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 08:31:30', '2018-05-18 09:23:21'),
(293, 'a:3:{i:0;s:3:\"3.5\";i:1;N;i:2;N;}', 294, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 08:35:39', '2018-05-18 08:35:39'),
(294, 'a:3:{i:0;s:3:\"3.5\";i:1;N;i:2;N;}', 295, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 08:39:34', '2018-05-18 08:39:34'),
(295, 'a:3:{i:0;s:3:\"4.5\";i:1;N;i:2;N;}', 296, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 08:43:49', '2018-05-18 08:43:49'),
(296, 'a:3:{i:0;s:2:\"10\";i:1;N;i:2;N;}', 297, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 08:50:46', '2018-05-18 09:23:54'),
(297, 'a:3:{i:0;s:1:\"9\";i:1;N;i:2;N;}', 298, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 08:52:12', '2018-05-18 09:24:08'),
(298, 'a:3:{i:0;s:1:\"9\";i:1;N;i:2;N;}', 299, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 08:59:35', '2018-05-18 09:24:22'),
(299, 'a:3:{i:0;s:1:\"9\";i:1;N;i:2;N;}', 300, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 09:03:24', '2018-05-18 09:24:34'),
(300, 'a:3:{i:0;s:1:\"9\";i:1;N;i:2;N;}', 301, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 09:05:35', '2018-05-18 09:24:43'),
(301, 'a:3:{i:0;s:1:\"9\";i:1;N;i:2;N;}', 302, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 09:09:01', '2018-05-18 09:24:54'),
(302, 'a:3:{i:0;s:1:\"9\";i:1;N;i:2;N;}', 303, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 10:29:37', '2018-05-18 10:29:37'),
(303, 'a:3:{i:0;s:2:\"10\";i:1;N;i:2;N;}', 304, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 10:30:57', '2018-05-18 10:30:57'),
(304, 'a:3:{i:0;s:3:\"3.5\";i:1;N;i:2;N;}', 305, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 10:39:41', '2018-05-18 10:39:41'),
(305, 'a:3:{i:0;s:3:\"3.5\";i:1;N;i:2;N;}', 306, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 10:42:04', '2018-05-18 10:42:04'),
(306, 'a:3:{i:0;s:3:\"3.5\";i:1;N;i:2;N;}', 307, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 10:46:15', '2018-05-18 10:46:15'),
(308, 'a:3:{i:0;s:2:\"11\";i:1;N;i:2;N;}', 309, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 10:54:41', '2018-05-18 10:54:41'),
(309, 'a:3:{i:0;s:3:\"1.5\";i:1;N;i:2;N;}', 310, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 11:01:56', '2018-05-18 11:01:56'),
(310, 'a:3:{i:0;s:2:\"29\";i:1;N;i:2;N;}', 311, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 11:24:25', '2018-05-18 11:24:25'),
(311, 'a:3:{i:0;s:2:\"34\";i:1;N;i:2;N;}', 312, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 11:26:41', '2018-05-18 11:26:41'),
(312, 'a:3:{i:0;s:2:\"55\";i:1;N;i:2;N;}', 313, 'App\\Item', 'a:3:{i:0;N;i:1;N;i:2;N;}', '2018-05-18 11:28:46', '2018-05-18 11:28:46');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

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
