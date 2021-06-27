-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 27 2021 г., 20:28
-- Версия сервера: 10.3.16-MariaDB
-- Версия PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel-activitar`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`) VALUES
(1, 'CROSSFIT', NULL, NULL),
(2, 'LUNGE BALL', NULL, NULL),
(3, 'PPSR', NULL, NULL),
(4, 'WALLS', NULL, NULL),
(5, 'CANDY', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`, `post_id`) VALUES
(1, 'lharris', 'savanna.berge@grady.net', '+1.757.983.1401', 'Repellendus fugit in nobis commodi quaerat. Quam eligendi ut saepe aliquam explicabo cupiditate autem tempora. Nihil odio sed sint sit provident labore. Quae soluta qui quaerat qui labore aut.', '2021-04-01 23:28:44', '2021-06-24 13:47:52', 15),
(2, 'patricia.dach', 'clotilde.howell@schultz.info', NULL, 'In expedita qui deserunt et. Qui saepe iure fugiat magnam et. Repellendus quia quisquam ipsam vel.', '2021-05-31 14:07:14', '2021-06-24 13:47:52', 15),
(3, 'berry.tromp', 'xprice@mclaughlin.com', NULL, 'Amet est cum fuga. Ut dolores labore magni qui. Quae eum minus quis dolore. Dolorem ullam a eaque corrupti qui earum tenetur.', '2021-06-08 19:36:58', '2021-06-24 13:47:52', 9),
(4, 'wilkinson.mina', 'trey21@wiegand.com', '586-764-1609', 'Et amet ut et aperiam molestiae. Et voluptates dicta ipsam ratione omnis modi. Saepe nihil architecto quod minus amet aliquam. Quibusdam ut voluptas totam dicta architecto mollitia.', '2021-05-04 19:21:24', '2021-06-24 13:47:52', 15),
(5, 'kuvalis.carolyn', 'deckow.precious@yahoo.com', NULL, 'Est est aut quae vitae labore. Voluptas velit sequi ut. Sequi aliquid molestiae ipsum totam accusamus temporibus dolor. Cum suscipit non et ex quibusdam.', '2021-04-23 16:15:36', '2021-06-24 13:47:52', 7),
(6, 'marilyne.eichmann', 'kuvalis.arvid@hotmail.com', NULL, 'Repellendus sequi voluptatum numquam iste qui occaecati placeat. Vero dolor enim occaecati repellat sunt similique. Repudiandae quia reiciendis aut sit. Sit qui itaque ad qui ipsum in voluptates.', '2021-04-24 09:52:31', '2021-06-24 13:47:52', 8),
(7, 'ibraun', 'brobel@hotmail.com', NULL, 'Quas in qui eligendi possimus. Magni voluptatibus ad quia. Laboriosam neque earum rem harum corrupti error ut fugit.', '2021-04-15 04:36:24', '2021-06-24 13:47:52', 6),
(8, 'selmer50', 'fboehm@kerluke.info', '+1-432-483-4049', 'Odio at iste molestiae inventore. Recusandae a qui harum modi est delectus saepe eligendi.', '2021-06-07 04:31:31', '2021-06-24 13:47:53', 3),
(9, 'swaniawski.justus', 'grady.candelario@reichert.net', '214-647-2149', 'Dolores nihil perferendis quos est exercitationem minus dolorem. Temporibus voluptatem distinctio numquam quidem sint. Laudantium dolorem earum voluptas eligendi consequatur voluptas.', '2021-06-09 23:14:29', '2021-06-24 13:47:53', 5),
(10, 'kessler.krystal', 'orville67@yahoo.com', '1-919-447-6421', 'Et libero et explicabo ex qui debitis et. Magni a delectus omnis rerum repellat. Laborum aut voluptatem beatae quia. Nihil exercitationem accusantium perferendis tempore optio rerum.', '2021-06-22 15:00:29', '2021-06-24 13:47:53', 15),
(11, 'nona51', 'cesar25@treutel.org', NULL, 'Sunt assumenda facere quia commodi tempore accusantium nisi. Saepe suscipit omnis illo iure. Velit placeat ea blanditiis dolorum repudiandae ut. At atque tempore aut temporibus.', '2021-06-13 21:01:22', '2021-06-24 13:47:53', 12),
(12, 'imarquardt', 'kling.aisha@gmail.com', '1-240-988-7649', 'Vero molestiae harum velit. Repellat aut sit cumque minima. Nemo nam sed optio a.', '2021-05-18 17:46:03', '2021-06-24 13:47:53', 19),
(13, 'wschmitt', 'zboncak.murl@hotmail.com', '1-385-308-6678', 'Aperiam libero eum iusto asperiores quia aut. Laborum id ipsam officiis et mollitia. Magni ut eligendi omnis.', '2021-05-13 14:41:08', '2021-06-24 13:47:53', 12),
(14, 'aubree37', 'ray.wunsch@gerhold.net', NULL, 'Voluptatem tenetur quasi aut iusto suscipit. Fuga aperiam aut aut ipsum perspiciatis vel ipsa. Quia ut libero est numquam nostrum.', '2021-03-30 14:07:44', '2021-06-24 13:47:53', 10),
(15, 'jeramie.heaney', 'ova10@grant.com', NULL, 'Voluptas quisquam distinctio eius commodi. Est quo dolorum quo quia. Molestias possimus tempora illo est.', '2021-05-31 10:51:54', '2021-06-24 13:47:53', 5),
(16, 'blanda.bernadine', 'zane89@damore.com', NULL, 'Dolorem sed in iusto numquam odit qui cumque. Inventore deleniti accusantium error consequatur. Harum laborum voluptatibus porro odio consequatur.', '2021-04-12 17:19:17', '2021-06-24 13:47:53', 6),
(17, 'schroeder.camilla', 'maggio.torrance@white.com', NULL, 'Quo sed eum iure autem. Repellat dolores amet officia ut. Sint aut voluptas eum. Rerum dolorum optio officia est. Tempora aut quo sequi repudiandae sed. Voluptates omnis quo repellendus.', '2021-04-11 05:42:14', '2021-06-24 13:47:53', 6),
(18, 'pacocha.wendy', 'elinore74@bradtke.com', NULL, 'Et optio adipisci ut officiis molestias reiciendis. Commodi est et quia totam ea maxime cupiditate similique. Non nostrum sed voluptates.', '2021-05-15 23:17:28', '2021-06-24 13:47:53', 10),
(19, 'krystal32', 'stanton.taylor@yahoo.com', '+1-339-501-2558', 'Et et odio natus et optio. Deserunt et quia dolores saepe laudantium. Eum tempore facere voluptatem labore laborum aut. Ullam est deserunt minus voluptas totam veniam ut ut.', '2021-06-02 04:35:47', '2021-06-24 13:47:53', 14),
(20, 'mallie.barrows', 'ebert.isobel@gmail.com', '805.280.4066', 'Ut consectetur et dolorem minus ratione velit rem harum. Facilis illo dolor sint corrupti odio. Ut ut eveniet qui. Incidunt laudantium sint eligendi qui enim.', '2021-04-03 22:36:25', '2021-06-24 13:47:53', 2),
(21, 'marcelo.douglas', 'xpollich@satterfield.info', '+1-567-693-3682', 'Dignissimos omnis neque rem ullam reprehenderit. Numquam et impedit corporis quasi dolorem.', '2021-06-07 20:46:22', '2021-06-24 13:47:53', 18),
(22, 'schuster.adela', 'marina.daniel@raynor.info', NULL, 'Et quidem dolor ut rerum et. Omnis non maxime eius omnis cupiditate. Voluptatem odio occaecati ex numquam alias est non tenetur. At quis quod dignissimos facilis fugit eum.', '2021-03-27 02:10:12', '2021-06-24 13:47:53', 11),
(23, 'kstark', 'antonio.hand@lemke.com', '(843) 239-4432', 'Eos a eaque rerum possimus quia adipisci similique rerum. Vel repellat voluptatem eos tenetur consectetur harum. Maxime eveniet molestias dolorem eos deserunt totam modi sint.', '2021-04-03 11:06:03', '2021-06-24 13:47:53', 18),
(24, 'hstreich', 'hettinger.columbus@watsica.com', NULL, 'Id dolor reiciendis eligendi voluptatem vitae velit atque. Vitae neque est autem non temporibus nemo et. Et aut molestias temporibus in eum quisquam repellendus.', '2021-06-05 01:26:46', '2021-06-24 13:47:53', 11),
(25, 'jaleel38', 'alice50@gmail.com', '785-735-0939', 'Dolor voluptas tenetur molestiae officia numquam. Omnis facilis consequatur tempora maiores delectus. Pariatur unde quam quo quia molestiae culpa iusto.', '2021-04-05 15:54:12', '2021-06-24 13:47:53', 7),
(26, 'trey.reinger', 'beahan.kamren@connelly.biz', NULL, 'Voluptatem aspernatur id dignissimos quis laudantium ea sunt. Dolorum sint quis ut harum. Nam totam ullam cumque est.', '2021-06-01 18:07:52', '2021-06-24 13:47:53', 7),
(27, 'angie30', 'klein.rebeca@ullrich.com', NULL, 'Aspernatur est iure iusto qui dolorem explicabo minus. Cupiditate sint eos dolore fugit.', '2021-05-22 23:30:01', '2021-06-24 13:47:53', 2),
(28, 'parisian.enoch', 'pwill@sporer.info', NULL, 'Dolorem sint illum sunt facere exercitationem sed incidunt. Ut ullam possimus fuga ipsa molestiae ut autem. Ex harum eius eum et. Illum esse vel quia sed.', '2021-04-07 03:52:21', '2021-06-24 13:47:53', 1),
(29, 'miller.mikel', 'loconnell@bartoletti.net', NULL, 'Ad dolores eos qui repudiandae. Veniam tempora iusto corporis eos. Fuga neque ut est ducimus architecto cum et. Aperiam est in atque.', '2021-05-13 00:12:58', '2021-06-24 13:47:54', 3),
(30, 'emmanuelle.lowe', 'ogoldner@yahoo.com', '+1-347-387-1709', 'Consequatur provident veniam officia itaque adipisci. Alias dolorem quisquam possimus quia.', '2021-03-26 09:35:27', '2021-06-24 13:47:54', 3),
(31, 'judy.bosco', 'raven.gusikowski@gmail.com', NULL, 'Vitae necessitatibus facere voluptatum molestiae veritatis reiciendis ab. Alias laborum quidem quaerat dolorem quibusdam eius unde.', '2021-06-11 11:48:03', '2021-06-24 13:47:54', 12),
(32, 'jadyn49', 'kozey.joany@yahoo.com', NULL, 'Natus molestiae asperiores corporis inventore quia occaecati quod. Et ducimus quia omnis qui eius officia quos voluptatem.', '2021-05-15 16:27:43', '2021-06-24 13:47:54', 16),
(33, 'aiden90', 'flo.mcglynn@hotmail.com', NULL, 'Placeat laudantium quas adipisci vero voluptatem dignissimos reiciendis. Sapiente beatae perferendis tempore. Quas ut nihil vel voluptatem rerum.', '2021-05-24 00:44:49', '2021-06-24 13:47:54', 12),
(34, 'bradtke.karine', 'lincoln.bins@gmail.com', NULL, 'Deserunt nobis vitae velit occaecati aliquam. Optio et corrupti sit aut consequatur voluptas blanditiis aut.', '2021-06-12 16:34:42', '2021-06-24 13:47:54', 16),
(35, 'braun.gage', 'zmurazik@yahoo.com', NULL, 'Occaecati amet laboriosam assumenda sint. Voluptatem dolores error et nihil aut. Eum ut perferendis facilis id. Impedit nulla ullam nemo aut odit.', '2021-05-26 00:42:40', '2021-06-24 13:47:54', 15),
(36, 'katelyn25', 'monahan.maryse@yahoo.com', NULL, 'Est quibusdam ut assumenda id. Eaque sed et sed vel. Esse dolore qui consequatur maiores accusantium voluptatem pariatur. Ea rerum dolores illo minus nihil nam.', '2021-05-18 14:16:52', '2021-06-24 13:47:54', 11),
(37, 'miller.alba', 'gerhold.ryan@greenholt.info', NULL, 'Modi exercitationem velit molestiae perferendis. In ipsa voluptas qui earum nemo quod error. Corrupti cupiditate error ipsam.', '2021-04-26 21:32:35', '2021-06-24 13:47:54', 7),
(38, 'gerhold.milford', 'randall77@senger.net', NULL, 'Ipsam et sit labore rerum repudiandae voluptatum mollitia. Enim occaecati voluptas repudiandae ratione nobis.', '2021-03-30 14:20:02', '2021-06-24 13:47:54', 13),
(39, 'maddison.kling', 'auer.albin@kris.com', NULL, 'Eum fugiat nulla sapiente neque alias ex ea. Minima quis ut excepturi quas. Deserunt explicabo saepe reprehenderit molestiae beatae molestiae. Velit molestiae voluptatem nemo.', '2021-06-12 21:46:17', '2021-06-24 13:47:54', 15),
(40, 'dasia88', 'aliza20@yahoo.com', NULL, 'Doloribus labore mollitia quo ut iusto. Adipisci fugiat unde asperiores quo. Quae est rem illo porro beatae eum quo at.', '2021-04-11 16:03:16', '2021-06-24 13:47:54', 13),
(41, 'swaniawski.effie', 'vdare@hotmail.com', '234.293.0020', 'Et ex est harum iusto et quasi nam quaerat. Enim quasi quasi nihil excepturi est fuga. Et voluptas aut ut id cumque non.', '2021-05-10 01:01:57', '2021-06-24 13:47:54', 9),
(42, 'angel.ritchie', 'tina.runolfsson@hotmail.com', NULL, 'Qui fugiat voluptatem doloremque cupiditate rerum sequi nihil sint. Qui doloremque at ut qui non quaerat et. Soluta aliquam dolorem neque quaerat enim commodi neque.', '2021-05-14 08:12:24', '2021-06-24 13:47:54', 6),
(43, 'bianka02', 'eryn53@cummings.com', NULL, 'Architecto incidunt quia consectetur ut voluptatum. Officia fuga sit quos illo officiis. Ipsum a sint dolor nobis. Soluta cumque dolor molestiae.', '2021-06-08 12:36:07', '2021-06-24 13:47:54', 4),
(44, 'mcglynn.jamarcus', 'vallie.tromp@gmail.com', '470-466-4301', 'Est dolorum iste nesciunt ut. Magnam autem similique voluptates. Laboriosam cupiditate eum excepturi eum sed culpa eius. Iure consectetur nobis consectetur non ad quia atque earum.', '2021-04-14 12:43:49', '2021-06-24 13:47:54', 20),
(45, 'yvon', 'mills.meghan@feest.com', NULL, 'Provident quis nesciunt repellendus magni pariatur sint. Dolores nihil perspiciatis fuga sed.', '2021-05-12 13:57:00', '2021-06-24 13:47:54', 19),
(46, 'freeda17', 'jroob@yahoo.com', NULL, 'Tenetur saepe sit laboriosam et. Quos alias quis nemo quae consequatur repellendus explicabo quaerat.', '2021-03-29 08:57:01', '2021-06-24 13:47:54', 18),
(47, 'orpha77', 'fmclaughlin@schneider.com', NULL, 'Doloremque beatae harum iure aperiam placeat harum hic at. Aperiam cum velit laudantium. Aut expedita adipisci est. Non rerum et quas excepturi.', '2021-06-15 13:13:57', '2021-06-24 13:47:54', 6),
(48, 'jerald47', 'tbruen@hegmann.biz', NULL, 'Et fugit voluptatem ex natus illo. Possimus animi eaque ab fugit sed voluptatem et exercitationem. Possimus aut enim et inventore expedita.', '2021-05-10 04:39:23', '2021-06-24 13:47:54', 20),
(49, 'pollich.gilberto', 'muller.bernadine@yahoo.com', NULL, 'Est ut molestiae sit quo quos. Vero eius natus deserunt omnis qui ex voluptatem quia. Asperiores occaecati omnis aut quidem. Dolores est distinctio repellat consequatur.', '2021-05-07 23:18:53', '2021-06-24 13:47:54', 8),
(50, 'waters.herta', 'lmiller@murphy.com', NULL, 'Illum ullam consequatur sed in. Quam corrupti quisquam et voluptatem velit. Distinctio aut aut cumque perspiciatis delectus et.', '2021-04-24 01:32:10', '2021-06-24 13:47:55', 2),
(51, 'Viacheslav', 'john@laravel.test', '+38 (097) 411-98-53', 'wedafew', '2021-06-25 16:59:18', '2021-06-25 16:59:18', 11),
(52, 'Viacheslav', 'admin@laravel.test', '+38 (097) 411-98-53', 'test', '2021-06-26 17:22:54', '2021-06-26 17:22:54', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(30, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(31, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(32, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(33, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(34, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(35, 8, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(36, 8, 'content', 'text', 'Content', 1, 1, 1, 1, 1, 1, '{}', 4),
(37, 8, 'post_type', 'text', 'Post Type', 1, 1, 1, 1, 1, 1, '{}', 5),
(38, 8, 'background_image', 'text', 'Background Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(39, 8, 'user_id', 'select_dropdown', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(40, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(41, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(42, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(43, 10, 'program_id', 'text', 'Program Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(44, 10, 'started_at', 'timestamp', 'Started At', 1, 1, 1, 1, 1, 1, '{}', 4),
(45, 10, 'ended_at', 'timestamp', 'Ended At', 0, 1, 1, 1, 1, 1, '{}', 5),
(46, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(47, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(48, 10, 'schedule_belongsto_program_relationship', 'relationship', 'programs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Program\",\"table\":\"programs\",\"type\":\"belongsTo\",\"column\":\"program_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(49, 8, 'post_belongsto_user_relationship', 'relationship', 'user', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(50, 8, 'post_belongstomany_tag_relationship', 'relationship', 'tags', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Tag\",\"table\":\"tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"post_tag\",\"pivot\":\"1\",\"taggable\":\"on\"}', 10),
(51, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(52, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(53, 11, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(54, 11, 'image', 'text', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(55, 11, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(56, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 13, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 13, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 13, 'image', 'text', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 11, 'program_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Program\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 6),
(61, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 14, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(63, 14, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(64, 14, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 5),
(65, 14, 'comment', 'text', 'Comment', 1, 1, 1, 1, 1, 1, '{}', 6),
(66, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(67, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(68, 14, 'post_id', 'text', 'Post Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(69, 14, 'comment_belongsto_post_relationship', 'relationship', 'post', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Post\",\"table\":\"posts\",\"type\":\"belongsTo\",\"column\":\"post_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(70, 8, 'post_hasmany_comment_relationship', 'relationship', 'comments', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Comment\",\"table\":\"comments\",\"type\":\"hasMany\",\"column\":\"post_id\",\"key\":\"id\",\"label\":\"comment\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(71, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 15, 'name', 'text', 'Name', 1, 1, 1, 0, 0, 1, '{}', 2),
(73, 15, 'email', 'text', 'Email', 0, 1, 1, 0, 0, 1, '{}', 3),
(74, 15, 'phone', 'text', 'Phone', 0, 1, 1, 0, 0, 1, '{}', 4),
(75, 15, 'message', 'text', 'Message', 1, 1, 1, 0, 0, 1, '{}', 5),
(76, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 6),
(77, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-06-25 15:59:05', '2021-06-25 15:59:05'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-06-25 15:59:05', '2021-06-25 15:59:05'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-06-25 15:59:05', '2021-06-25 15:59:05'),
(7, 'tags', 'tags', 'Tag', 'Tags', NULL, 'App\\Models\\Tag', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-06-25 16:08:41', '2021-06-25 16:08:41'),
(8, 'posts', 'posts', 'Post', 'Posts', NULL, 'App\\Models\\Post', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-25 16:29:12', '2021-06-26 16:41:57'),
(10, 'schedules', 'schedules', 'Schedule', 'Schedules', NULL, 'App\\Models\\Schedule', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-25 16:41:54', '2021-06-26 16:28:01'),
(11, 'programs', 'programs', 'Program', 'Programs', NULL, 'App\\Models\\Program', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"name\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-26 16:33:34', '2021-06-26 16:36:29'),
(13, 'categories', 'categories', 'Category', 'Categories', NULL, 'App\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"name\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-26 16:34:22', '2021-06-26 16:35:47'),
(14, 'comments', 'comments', 'Comment', 'Comments', NULL, 'App\\Models\\Comment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-26 16:38:44', '2021-06-26 16:39:58'),
(15, 'contacts', 'contacts', 'Contact', 'Contacts', NULL, 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-06-26 16:45:15', '2021-06-26 16:45:15');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-06-25 15:59:06', '2021-06-25 15:59:06');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-06-25 15:59:06', '2021-06-25 15:59:06', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 9, '2021-06-25 15:59:06', '2021-06-26 17:19:02', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 8, '2021-06-25 15:59:06', '2021-06-26 17:19:02', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-06-25 15:59:07', '2021-06-25 15:59:07', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2021-06-25 15:59:07', '2021-06-26 17:19:02', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-06-25 15:59:07', '2021-06-25 16:39:48', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-06-25 15:59:07', '2021-06-25 16:39:48', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-06-25 15:59:07', '2021-06-25 16:39:48', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-06-25 15:59:07', '2021-06-25 16:39:48', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 11, '2021-06-25 15:59:07', '2021-06-26 17:19:02', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2021-06-25 15:59:11', '2021-06-25 16:39:48', 'voyager.hooks', NULL),
(13, 1, 'Tags', '', '_self', 'voyager-new', '#000000', NULL, 6, '2021-06-25 16:08:41', '2021-06-26 17:19:06', 'voyager.tags.index', 'null'),
(14, 1, 'Posts', '', '_self', 'voyager-news', '#000000', NULL, 5, '2021-06-25 16:29:13', '2021-06-26 17:18:52', 'voyager.posts.index', 'null'),
(15, 1, 'Schedules', '', '_self', 'voyager-calendar', '#000000', NULL, 3, '2021-06-25 16:41:54', '2021-06-26 16:11:26', 'voyager.schedules.index', 'null'),
(16, 1, 'Programs', '', '_self', 'voyager-barbell', '#000000', 17, 1, '2021-06-26 16:33:34', '2021-06-26 17:18:52', 'voyager.programs.index', 'null'),
(17, 1, 'Categories', '', '_self', 'voyager-categories', '#000000', NULL, 4, '2021-06-26 16:34:23', '2021-06-26 17:18:38', 'voyager.categories.index', 'null'),
(18, 1, 'Comments', '', '_self', 'voyager-bubble', '#000000', 14, 1, '2021-06-26 16:38:44', '2021-06-26 17:18:59', 'voyager.comments.index', 'null'),
(19, 1, 'Contacts', '', '_self', 'voyager-people', '#000000', NULL, 7, '2021-06-26 16:45:16', '2021-06-26 17:19:06', 'voyager.contacts.index', 'null');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(33, '2014_10_12_000000_create_users_table', 1),
(34, '2014_10_12_100000_create_password_resets_table', 1),
(35, '2019_08_19_000000_create_failed_jobs_table', 1),
(36, '2021_06_17_114029_create_categories_table', 1),
(37, '2021_06_17_114241_create_programs_table', 1),
(38, '2021_06_18_184616_create_schedules_table', 1),
(41, '2021_06_21_122021_create_pricing_plans_table', 2),
(42, '2021_06_21_122627_create_pricing_plans_feachers_table', 2),
(43, '2021_06_21_183739_create_trainers_table', 3),
(49, '2021_06_21_190708_create_contacts_table', 4),
(53, '2021_06_23_112949_create_comments_table', 5),
(54, '2021_06_24_171816_create_tags_table', 6),
(55, '2021_06_24_172118_create_post_tag_table', 6),
(56, '2016_01_01_000000_add_voyager_user_fields', 7),
(57, '2016_01_01_000000_create_data_types_table', 7),
(58, '2016_05_19_173453_create_menu_table', 7),
(59, '2016_10_21_190000_create_roles_table', 7),
(60, '2016_10_21_190000_create_settings_table', 7),
(61, '2016_11_30_135954_create_permission_table', 7),
(62, '2016_11_30_141208_create_permission_role_table', 7),
(63, '2016_12_26_201236_data_types__add__server_side', 7),
(64, '2017_01_13_000000_add_route_to_menu_items_table', 7),
(65, '2017_01_14_005015_create_translations_table', 7),
(66, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 7),
(67, '2017_03_06_000000_add_controller_to_data_types_table', 7),
(68, '2017_04_21_000000_add_order_to_data_rows_table', 7),
(69, '2017_07_05_210000_add_policyname_to_data_types_table', 7),
(70, '2017_08_05_000000_add_group_to_settings_table', 7),
(71, '2017_11_26_013050_add_user_role_relationship', 7),
(72, '2017_11_26_015000_create_user_roles_table', 7),
(73, '2018_03_11_000000_add_user_settings', 7),
(74, '2018_03_14_000000_add_details_to_data_types_table', 7),
(75, '2018_03_16_000000_make_settings_value_nullable', 7),
(76, '2016_01_01_000000_create_pages_table', 8),
(77, '2021_06_22_122554_create_posts_table', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-06-25 15:59:07', '2021-06-25 15:59:07'),
(2, 'browse_bread', NULL, '2021-06-25 15:59:07', '2021-06-25 15:59:07'),
(3, 'browse_database', NULL, '2021-06-25 15:59:07', '2021-06-25 15:59:07'),
(4, 'browse_media', NULL, '2021-06-25 15:59:08', '2021-06-25 15:59:08'),
(5, 'browse_compass', NULL, '2021-06-25 15:59:08', '2021-06-25 15:59:08'),
(6, 'browse_menus', 'menus', '2021-06-25 15:59:08', '2021-06-25 15:59:08'),
(7, 'read_menus', 'menus', '2021-06-25 15:59:08', '2021-06-25 15:59:08'),
(8, 'edit_menus', 'menus', '2021-06-25 15:59:08', '2021-06-25 15:59:08'),
(9, 'add_menus', 'menus', '2021-06-25 15:59:08', '2021-06-25 15:59:08'),
(10, 'delete_menus', 'menus', '2021-06-25 15:59:08', '2021-06-25 15:59:08'),
(11, 'browse_roles', 'roles', '2021-06-25 15:59:08', '2021-06-25 15:59:08'),
(12, 'read_roles', 'roles', '2021-06-25 15:59:08', '2021-06-25 15:59:08'),
(13, 'edit_roles', 'roles', '2021-06-25 15:59:08', '2021-06-25 15:59:08'),
(14, 'add_roles', 'roles', '2021-06-25 15:59:08', '2021-06-25 15:59:08'),
(15, 'delete_roles', 'roles', '2021-06-25 15:59:08', '2021-06-25 15:59:08'),
(16, 'browse_users', 'users', '2021-06-25 15:59:08', '2021-06-25 15:59:08'),
(17, 'read_users', 'users', '2021-06-25 15:59:08', '2021-06-25 15:59:08'),
(18, 'edit_users', 'users', '2021-06-25 15:59:08', '2021-06-25 15:59:08'),
(19, 'add_users', 'users', '2021-06-25 15:59:08', '2021-06-25 15:59:08'),
(20, 'delete_users', 'users', '2021-06-25 15:59:09', '2021-06-25 15:59:09'),
(21, 'browse_settings', 'settings', '2021-06-25 15:59:09', '2021-06-25 15:59:09'),
(22, 'read_settings', 'settings', '2021-06-25 15:59:09', '2021-06-25 15:59:09'),
(23, 'edit_settings', 'settings', '2021-06-25 15:59:09', '2021-06-25 15:59:09'),
(24, 'add_settings', 'settings', '2021-06-25 15:59:09', '2021-06-25 15:59:09'),
(25, 'delete_settings', 'settings', '2021-06-25 15:59:09', '2021-06-25 15:59:09'),
(26, 'browse_hooks', NULL, '2021-06-25 15:59:12', '2021-06-25 15:59:12'),
(32, 'browse_tags', 'tags', '2021-06-25 16:08:41', '2021-06-25 16:08:41'),
(33, 'read_tags', 'tags', '2021-06-25 16:08:41', '2021-06-25 16:08:41'),
(34, 'edit_tags', 'tags', '2021-06-25 16:08:41', '2021-06-25 16:08:41'),
(35, 'add_tags', 'tags', '2021-06-25 16:08:41', '2021-06-25 16:08:41'),
(36, 'delete_tags', 'tags', '2021-06-25 16:08:41', '2021-06-25 16:08:41'),
(37, 'browse_posts', 'posts', '2021-06-25 16:29:13', '2021-06-25 16:29:13'),
(38, 'read_posts', 'posts', '2021-06-25 16:29:13', '2021-06-25 16:29:13'),
(39, 'edit_posts', 'posts', '2021-06-25 16:29:13', '2021-06-25 16:29:13'),
(40, 'add_posts', 'posts', '2021-06-25 16:29:13', '2021-06-25 16:29:13'),
(41, 'delete_posts', 'posts', '2021-06-25 16:29:13', '2021-06-25 16:29:13'),
(42, 'browse_schedules', 'schedules', '2021-06-25 16:41:54', '2021-06-25 16:41:54'),
(43, 'read_schedules', 'schedules', '2021-06-25 16:41:54', '2021-06-25 16:41:54'),
(44, 'edit_schedules', 'schedules', '2021-06-25 16:41:54', '2021-06-25 16:41:54'),
(45, 'add_schedules', 'schedules', '2021-06-25 16:41:54', '2021-06-25 16:41:54'),
(46, 'delete_schedules', 'schedules', '2021-06-25 16:41:54', '2021-06-25 16:41:54'),
(47, 'browse_programs', 'programs', '2021-06-26 16:33:34', '2021-06-26 16:33:34'),
(48, 'read_programs', 'programs', '2021-06-26 16:33:34', '2021-06-26 16:33:34'),
(49, 'edit_programs', 'programs', '2021-06-26 16:33:34', '2021-06-26 16:33:34'),
(50, 'add_programs', 'programs', '2021-06-26 16:33:34', '2021-06-26 16:33:34'),
(51, 'delete_programs', 'programs', '2021-06-26 16:33:34', '2021-06-26 16:33:34'),
(52, 'browse_categories', 'categories', '2021-06-26 16:34:23', '2021-06-26 16:34:23'),
(53, 'read_categories', 'categories', '2021-06-26 16:34:23', '2021-06-26 16:34:23'),
(54, 'edit_categories', 'categories', '2021-06-26 16:34:23', '2021-06-26 16:34:23'),
(55, 'add_categories', 'categories', '2021-06-26 16:34:23', '2021-06-26 16:34:23'),
(56, 'delete_categories', 'categories', '2021-06-26 16:34:23', '2021-06-26 16:34:23'),
(57, 'browse_comments', 'comments', '2021-06-26 16:38:44', '2021-06-26 16:38:44'),
(58, 'read_comments', 'comments', '2021-06-26 16:38:44', '2021-06-26 16:38:44'),
(59, 'edit_comments', 'comments', '2021-06-26 16:38:44', '2021-06-26 16:38:44'),
(60, 'add_comments', 'comments', '2021-06-26 16:38:44', '2021-06-26 16:38:44'),
(61, 'delete_comments', 'comments', '2021-06-26 16:38:44', '2021-06-26 16:38:44'),
(62, 'browse_contacts', 'contacts', '2021-06-26 16:45:16', '2021-06-26 16:45:16'),
(63, 'read_contacts', 'contacts', '2021-06-26 16:45:16', '2021-06-26 16:45:16'),
(64, 'edit_contacts', 'contacts', '2021-06-26 16:45:16', '2021-06-26 16:45:16'),
(65, 'add_contacts', 'contacts', '2021-06-26 16:45:16', '2021-06-26 16:45:16'),
(66, 'delete_contacts', 'contacts', '2021-06-26 16:45:16', '2021-06-26 16:45:16');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'large',
  `background_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `post_type`, `background_image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Dolorem laudantium ipsa ut corrupti minima.', 'Et eum aliquam debitis id nesciunt ut quas. Tenetur consequatur sunt dolor dolorem voluptatem quis. Id hic voluptates expedita illum repellendus et sint.\n\nEnim voluptatem in error veniam quod blanditiis. Architecto repellat voluptas voluptas minima rerum est iure. Nihil aut id sint quia.\n\nSit veritatis vero voluptas aperiam aut ipsam velit porro. Est est fugiat molestiae suscipit odit quis iusto. Praesentium ad rerum necessitatibus ipsum minus.\n\nFugiat dolorum cupiditate deleniti facilis. Ab sunt dolor aspernatur sed.\n\nSaepe accusantium tempora minus. Vel consectetur est ex sint. Eum dicta eligendi rem velit ut voluptas perspiciatis.\n\nQui quas nihil et magni hic. Ut recusandae consequatur quos corporis accusamus magni est quia. Ex libero ea rerum non quaerat commodi.\n\nPlaceat qui velit omnis voluptatibus quae possimus accusamus. Voluptates excepturi sunt consectetur id est quo ducimus. Hic omnis itaque maiores sit dolorem ipsum tempora.\n\nQuia ipsam similique tempore in. Assumenda rerum sapiente voluptatem nihil consectetur voluptas voluptas qui. Omnis quas quia sapiente fugiat et dicta praesentium.\n\nAt autem in dolore ex. Repellendus ducimus ex facilis veniam aliquid ullam pariatur voluptate. Est suscipit velit quo iure nam sed voluptatum. Aut recusandae ab tenetur.\n\nVel maxime laboriosam sint cum recusandae quod rerum. Vel reprehenderit omnis doloremque qui adipisci consequuntur blanditiis tempora. In exercitationem atque voluptatem est omnis perspiciatis.', 'large', 'blog-page-4.jpg', 1, '2021-04-24 18:29:24', '2021-06-24 13:47:44'),
(2, 'Placeat fuga facilis sed at voluptatem id quos est.', 'Quasi ducimus consequatur voluptatem. Sed aspernatur non laborum repellendus totam laborum nihil. Tempora deleniti commodi iste. Pariatur libero necessitatibus eum magni provident omnis.\n\nLaborum perspiciatis omnis numquam in sapiente nesciunt temporibus. Voluptas illo sint distinctio ullam eos. Ipsam id blanditiis impedit hic doloremque. Distinctio harum perspiciatis qui maiores quo numquam ut. Et accusamus aliquid ut aperiam.\n\nA omnis sit corrupti est consequatur repellat eius. Voluptas quis voluptatem impedit dignissimos veritatis nesciunt. Quis minima alias laudantium incidunt.\n\nArchitecto assumenda voluptas reiciendis consequuntur. Quia quia ipsum inventore nam libero veniam quos. Cupiditate non et eius necessitatibus dolore tempora quisquam. Ut sed eveniet architecto itaque.\n\nUllam quisquam est ad et. Sint ea quos nihil reprehenderit et. Veniam repellat minus fugit aperiam labore incidunt molestiae. Laboriosam in rerum quidem velit.\n\nQuia reiciendis porro officiis aut accusantium. Adipisci molestiae sed sed blanditiis et est. Veniam eveniet itaque laboriosam itaque. Non esse quo vitae vel voluptatem. Enim veritatis tempora enim officiis voluptatem.\n\nSunt repellendus veritatis quisquam. Quis iure vitae consequuntur sint similique facere. Atque voluptatibus recusandae ducimus nam.\n\nAut aut voluptates dolorem sit. Blanditiis unde dolorum aut omnis. Laborum a facere fuga occaecati distinctio.\n\nDolore enim exercitationem vero aut et. Quod quo magni delectus sunt. Expedita numquam facere accusamus quibusdam.\n\nEveniet qui voluptatem repellat aut. Sit ut odio accusantium et molestiae. Debitis quam numquam perspiciatis et natus numquam velit rerum.', 'sm', 'blog-page-3.jpg', 1, '2021-05-12 06:32:06', '2021-06-24 13:47:44'),
(3, 'Aspernatur repellendus dolor et expedita modi sunt sed.', 'Quidem quis et tempore pariatur et ab praesentium. Laborum dolor sint quod aspernatur vero quis et sunt.\n\nQuibusdam iure expedita blanditiis suscipit. Vel aspernatur iure earum non distinctio omnis sed voluptatem. Et quia et amet aut.\n\nNihil consectetur nam explicabo qui magnam. Debitis ullam nulla voluptatem earum at. Eaque omnis consectetur amet consectetur. Exercitationem id aut magni est perspiciatis aut.\n\nVoluptate quos sunt corrupti at fuga maxime. Voluptatem modi voluptate aut dolor laudantium. Rerum dolorum harum laudantium veritatis similique sunt. Aut molestias et enim temporibus cumque omnis.\n\nEos natus dolorum debitis voluptas porro. Nisi nulla et repellendus aut quia illum. Voluptatem est et numquam exercitationem sit. Tenetur in voluptas cumque voluptatem qui.\n\nSed qui vero reiciendis ratione vitae aut est. Occaecati quis voluptas earum incidunt sequi quaerat dolorum qui. Ut ab dolorem voluptatem sed.\n\nEnim non hic tenetur mollitia blanditiis veritatis. Placeat impedit impedit qui vero libero et veritatis. Libero repudiandae corrupti qui tempore corporis.\n\nQuia iste repudiandae impedit. Quas voluptatum optio illum ipsum. Praesentium impedit eaque quae et voluptas sed vel.\n\nQuo ut error consequatur eveniet eum at aut. Dolor deserunt consectetur tenetur consequatur. Culpa illum labore inventore. Repellat maiores mollitia porro facilis.\n\nSit cupiditate nemo facere eos veniam qui molestiae. Fuga asperiores et odit. Quia magnam voluptatibus reiciendis. Accusamus et vitae repellat quia eum id expedita.', 'large', 'blog-page-1.jpg', 1, '2021-05-22 14:11:07', '2021-06-24 13:47:44'),
(4, 'Ratione ut animi quisquam dolorem necessitatibus.', 'Nihil ea et sit beatae ut non. Vitae a aperiam nesciunt rem earum. Voluptatem sequi nemo voluptatem ea corrupti mollitia dignissimos.\n\nVelit aliquam velit tempore quia fuga eveniet omnis. In cumque qui est fugit tempora praesentium molestiae. Voluptate quis numquam nulla ut tempora quam facere. Sequi et molestiae occaecati commodi error quis.\n\nOfficia a iste aliquid quidem ut. Debitis tenetur ut molestiae modi. Laudantium illum dolores sed eligendi autem autem nobis.\n\nMolestiae est est necessitatibus assumenda. Facere sunt qui est doloremque. Distinctio aut quisquam ut vel non. Ad voluptatem rerum sit sint ut eveniet.\n\nVoluptatem corporis eos sit. Commodi quasi asperiores aspernatur ad rerum et. Et aperiam soluta cumque modi culpa. Voluptas natus deserunt ut voluptatem.\n\nExercitationem ipsum quas consequatur saepe voluptatem. At ipsa optio beatae et et quia id. Fuga voluptas vitae itaque dolorem asperiores fugit.\n\nSit non accusantium assumenda nemo quis excepturi consectetur. Officiis distinctio modi quia laudantium numquam.\n\nEt quo repellat id et. Est officiis earum eum nesciunt fugit eligendi et. Ut voluptate rem qui est laboriosam sed.\n\nEsse iste et dolorem consequatur voluptas in voluptas. Aut error numquam dignissimos omnis sint ea. Quod quia soluta consequuntur totam.\n\nEt fugit ullam porro laudantium et. Vel tenetur architecto quia consectetur voluptas. Non nesciunt voluptate eius voluptas laudantium. Adipisci officiis inventore quo quos corrupti.', 'large', 'blog-page-3.jpg', 1, '2021-05-16 01:27:14', '2021-06-24 13:47:44'),
(5, 'Mollitia adipisci similique libero sapiente rerum consequuntur veritatis eius.', 'Dolore nesciunt ea sit est aliquid rerum et. Odit inventore sit aut aut debitis est. Reiciendis natus et commodi in voluptates eos. Dolores nihil veritatis minus magnam rem.\n\nEt maxime temporibus eligendi. Sit debitis eum eum occaecati distinctio et saepe. Sed dolorem ad consequatur voluptatem quis sed harum. Tenetur praesentium quidem repellendus reiciendis non mollitia enim quibusdam.\n\nEaque odit asperiores nobis repellendus recusandae id sit. Vel velit numquam ea. Quibusdam a eum amet itaque sed exercitationem excepturi.\n\nSit eligendi et voluptas delectus. Vel exercitationem repellat deleniti. Nobis placeat molestias eius asperiores assumenda delectus consequatur.\n\nPerspiciatis alias maiores in iste tenetur tenetur. Nemo amet est enim. Omnis molestiae consequatur nihil nisi. Temporibus modi saepe debitis. Ut in cumque fuga natus nam rerum dolore aut.\n\nItaque tenetur ut aperiam quos. Ut porro ipsum consequatur placeat sint quos et.\n\nEarum mollitia ea tempore voluptatem vero ut nostrum. Odio sed accusantium tempora blanditiis qui ut exercitationem. Non reiciendis qui enim voluptatem quae enim.\n\nEsse nisi eius sint esse dolorem nihil debitis. Qui ea libero voluptas voluptatem perferendis nobis est. Sequi aperiam repellat maxime sint. Omnis repellendus ipsum veniam id. Iste minus quis iure sed explicabo ut non.\n\nFacere laboriosam et architecto provident provident non iste. Beatae quia recusandae illum corrupti. Molestiae possimus voluptatem et numquam. Dolores aut assumenda quia velit quia. Molestias consectetur repellat alias.\n\nA dolorem et itaque. Reiciendis sed labore eos illum. Vel animi et molestias dolorem et esse.', 'sms', 'blog-page-5.jpg', 1, '2021-04-04 18:50:56', '2021-06-24 13:47:44'),
(6, 'Magnam omnis architecto ipsa eum.', 'Rem veritatis quis possimus natus sit qui. Consectetur delectus tenetur illum et optio molestiae harum nostrum. Quod doloribus facilis ipsum accusamus consequatur ullam voluptas.\n\nQuos quidem voluptas odio at. Quasi qui eos minima dicta sed. Et excepturi a sint quia.\n\nRerum tempora earum fugit exercitationem. Ut sint consequatur consequatur perspiciatis atque. Et est aut dicta perspiciatis. In et id repudiandae ut qui itaque.\n\nVoluptas qui tempora autem illum dolorum molestiae. Porro velit quia nulla. Sint quia natus quis architecto labore quibusdam.\n\nNatus fuga aut voluptatem dolorum cumque. Et eum sit corrupti.\n\nTempore necessitatibus nihil molestiae eligendi. Explicabo labore autem sed omnis commodi quis eaque. Amet eum beatae facilis praesentium ut. Voluptatem aut totam et dicta. Aliquid voluptatem asperiores repellendus.\n\nUt et maxime occaecati inventore qui sit. Nesciunt odio qui quis non non. Aut corporis est et molestias illo. Animi animi fugiat soluta nulla quam et aut ipsum. Voluptatem laborum architecto soluta dolore est quasi reiciendis.\n\nPerferendis modi distinctio consequuntur dolores iste natus veritatis quaerat. Quod voluptatum facere dicta laboriosam voluptatem. Voluptas quam totam quia non quas.\n\nAlias occaecati illum voluptas sequi. Quas sapiente debitis distinctio reiciendis sequi. Aut et quas at eos. Id accusamus aut officia et fugiat.\n\nConsectetur ex excepturi voluptatum. Sit optio molestiae earum nihil deserunt repellendus. Repellendus ab aliquam aspernatur hic eligendi hic.', 'sm', 'blog-page-3.jpg', 1, '2021-04-09 09:08:57', '2021-06-24 13:47:44'),
(7, 'Velit in illum incidunt aut et aut maiores qui.', 'Labore assumenda iste molestiae ex magni. Dolor voluptas id iusto dolores doloribus et. Veritatis omnis quia accusamus totam laborum et.\n\nTotam commodi officiis a asperiores dolorem praesentium autem. Rerum sunt sint voluptatum quia voluptatem. Consectetur sunt laboriosam earum enim voluptatem. Quia quisquam deserunt architecto dolores sapiente ullam ab ducimus.\n\nPorro non molestiae illo necessitatibus qui hic vel. Occaecati quam veniam facilis vitae quasi ut. Veniam iure qui consequatur perspiciatis.\n\nEos quas voluptatibus adipisci et. Corporis nisi repellendus sed rerum laboriosam similique tempora quisquam.\n\nCum et rerum laudantium sapiente eum fugit omnis repudiandae. Voluptas officiis quibusdam necessitatibus recusandae. Et sit ex nesciunt est. Sed magnam dolores cum.\n\nCommodi vitae qui nesciunt culpa ad. Natus incidunt est nobis rem. Magnam eligendi voluptate corrupti quia. Nobis enim quo maxime ut eligendi placeat.\n\nAdipisci ipsam sint enim ullam mollitia similique. Quisquam dignissimos non sequi assumenda. Quia cum perspiciatis consequatur illum et accusantium qui.\n\nUt distinctio mollitia at rerum. Aut ut commodi vero nobis neque in non. Sunt delectus repellat dolorum corrupti quo suscipit. Autem iusto aspernatur mollitia voluptatem ipsa.\n\nFugit debitis ut magnam itaque unde. Aut veniam est ipsam dolorum. Dolorum velit enim nobis tempora. Unde error iusto aut ea ipsa.\n\nOdio ut aut impedit molestiae. Nobis natus iusto et exercitationem ab in sapiente ea. Quidem maxime accusamus praesentium ex laudantium explicabo minus. Ea dolorem iure voluptatem rerum maiores.', 'instagram', NULL, 1, '2021-05-10 17:46:41', '2021-06-24 13:47:44'),
(8, 'Nisi eius nobis repellendus quia incidunt a mollitia.', 'Assumenda autem cum ut eos ea. Maxime aut sit culpa reiciendis. Iste dolor reprehenderit nihil.\n\nQuos sint vel non consequatur. Nostrum harum culpa aut officia odio. Modi officiis omnis veritatis voluptas distinctio voluptas reiciendis.\n\nVel esse fuga ipsa. Enim aspernatur soluta iste magni perspiciatis voluptates. Et et laborum earum non voluptate mollitia aut. Voluptas dolorem quos nostrum quod eveniet vel.\n\nUt sed velit voluptatem facilis voluptatem sunt aliquam. Modi omnis porro maxime et atque sunt voluptas. Harum illum culpa laboriosam. Praesentium illo qui velit. Sint quis iste cupiditate aliquam est provident aut labore.\n\nQuidem voluptatem asperiores sequi est cum quia inventore. Molestiae possimus aut voluptas corporis. Modi dicta quae inventore ea saepe omnis eaque praesentium. Optio laudantium fugit veniam omnis est dolor.\n\nEt exercitationem ratione doloribus magni reiciendis quidem. Autem nihil aliquam et sed ut. Vel consequuntur tempore id dolore quod maiores impedit consequuntur.\n\nCorporis odio temporibus quasi et qui harum quos est. Doloribus laboriosam exercitationem quia sit suscipit id. Et sit dolorem rerum rerum corporis ex veritatis esse. Neque architecto quia sed vel.\n\nHic et qui qui voluptatem vel et cum. Libero veniam cum tenetur. Voluptatem expedita laboriosam amet omnis. Quis tempora est ullam ea voluptates et enim.\n\nEarum iste asperiores totam dicta. Error quis fugit quam eveniet vero non. Esse explicabo quam voluptatem fugiat. Iste ut autem eum quia sed omnis aut.\n\nLibero nulla quia quam cum nulla. Dicta qui neque laudantium dolor ab aut similique. Qui consequatur minus rem. Asperiores alias officiis laudantium corporis dolor.', 'large', 'blog-page-4.jpg', 1, '2021-05-27 17:38:18', '2021-06-24 13:47:44'),
(9, 'Eveniet iure neque et quia.', 'Tempora odio similique error a voluptas saepe. Corporis voluptate similique consequatur ad sunt exercitationem magnam. Ipsam voluptatibus ut maiores totam eum cupiditate quia. Rerum aut nesciunt ut magnam non dolores est.\n\nDolor in velit quos ut est. Quo totam facilis sint natus ducimus doloribus laudantium. Deserunt saepe incidunt quam sit. Placeat ratione vitae fugiat enim error quia nihil. Quaerat numquam officia aperiam est facere.\n\nAt deserunt blanditiis et laudantium dolor dolores. Praesentium voluptates consequuntur asperiores illo et ut sit neque. Expedita voluptate ut saepe in pariatur saepe.\n\nVelit unde eum vitae corporis. Nisi aut id est omnis molestiae velit. Et corporis eum est minus. Odio non placeat rem sequi voluptas consequuntur sit. Reprehenderit quis ut aspernatur voluptatum sapiente ab sed aspernatur.\n\nEst ab maiores at qui consequatur commodi. Dicta neque et pariatur eaque optio ea ipsam. Facilis voluptatum quis aperiam consequatur facere.\n\nMinus tempore voluptatem id ad expedita ab. Ut et facilis at voluptas recusandae. Occaecati optio et eaque exercitationem vero. Illo aliquam non eum et dolorem. Magnam aut molestiae qui nihil.\n\nEos ut est eum et animi sapiente. Quam et ut iusto dolorem iusto. Vero enim in voluptas sed est possimus et amet. Sit rerum minima voluptas sed numquam voluptatem alias ut.\n\nSunt saepe fuga porro et voluptatum eos maxime. Excepturi id debitis odit. Ut necessitatibus est enim cumque delectus necessitatibus at.\n\nEnim sit quod beatae eos et dolorum. Non ut voluptates consequatur nobis explicabo quod sed sint. Laudantium dicta et exercitationem nostrum. Et occaecati vero eos eveniet praesentium.\n\nMinus consequuntur molestias animi rem labore asperiores. Ut atque molestiae accusamus esse ipsum. Omnis et suscipit sit quod velit.', 'large', 'blog-page-1.jpg', 1, '2021-03-26 20:55:34', '2021-06-24 13:47:44'),
(10, 'Dolorem molestiae delectus nostrum consectetur.', 'Et ab voluptate ratione. Laboriosam amet unde excepturi. Voluptatum quam praesentium rem adipisci officiis maxime velit.\n\nUt laboriosam repellat consectetur corporis. Incidunt qui beatae voluptatem voluptate voluptas fugiat autem. Rerum beatae repellat quidem quia aut ipsam minus. Earum officiis dolor voluptas quo. Enim modi aut ea qui.\n\nExplicabo ut rerum ipsam ab est quisquam voluptas. Culpa doloremque natus ex eligendi porro aut et.\n\nExcepturi qui voluptas dolorem expedita nulla. Vero soluta accusantium sequi occaecati pariatur non ex. Dolor iure voluptates nemo et maxime aperiam. Rerum a nam delectus modi enim. Dolor id blanditiis dolor repellendus aut at.\n\nAliquam quas exercitationem odit delectus odit sint recusandae itaque. Expedita porro corrupti facere repellat iusto molestiae et. Rerum modi saepe soluta atque cumque aspernatur.\n\nRerum vitae eaque nam voluptas. Harum enim reiciendis optio dolorum. Culpa qui facilis est possimus rem accusamus.\n\nEst et cupiditate unde perferendis. Non ut facilis beatae facere. In adipisci nihil qui cupiditate voluptatem sapiente.\n\nModi sint quod sit placeat recusandae laudantium cumque et. Facere deleniti commodi architecto necessitatibus illo consequatur. Quia deleniti est id sit est expedita. Aliquam occaecati odit et temporibus molestias ipsa fuga.\n\nRecusandae et rerum numquam voluptas voluptates est. Et commodi qui quaerat iure non. Optio est velit labore eaque est recusandae quos. Aut tenetur voluptatem sint vel. Quibusdam excepturi pariatur nemo consequatur.\n\nEst corrupti voluptate corrupti recusandae veritatis in alias. Voluptas iusto quia assumenda consequatur at ipsam alias. Consequatur velit quod aliquid sunt consequatur tempora dolorum. Accusantium ut totam hic. Praesentium ullam dignissimos quae exercitationem nihil.', 'instagram', NULL, 1, '2021-05-04 16:32:22', '2021-06-24 13:47:44'),
(11, 'Non repellat eos tempora et natus aut id.', 'Ut et et voluptatem impedit optio eveniet. Iste eum sit ut minus ea voluptatum. Culpa odit in doloremque veritatis. Eius in aut necessitatibus ut et quis autem.\n\nVelit sit odio optio aliquid quia et itaque et. Sit fugit praesentium est voluptatem non repellat officiis necessitatibus.\n\nExplicabo enim libero illo nulla iusto quae quaerat. Velit ducimus ut ut fugit sunt rerum. Magnam nobis omnis quia porro. Et repudiandae quo veritatis est culpa nam. Labore qui voluptas atque itaque est excepturi.\n\nEst corporis nisi sed. Accusamus voluptas cumque voluptatem cumque omnis in facere. Est accusantium tempore et impedit odio.\n\nQuidem ducimus exercitationem rem. Quas fugit ullam eos qui autem ex similique. Non ut maiores ut dolor maxime velit deleniti reprehenderit. Eveniet at quaerat aut a at eligendi quasi.\n\nNobis veritatis dignissimos dolores earum. Doloremque aut quis nihil numquam. Nobis rerum nihil corrupti saepe minus possimus. Dolor qui quasi temporibus omnis rerum qui fuga.\n\nArchitecto est sequi saepe id. Ipsam eum atque ut molestiae asperiores voluptatem. Numquam possimus voluptates ut sapiente dolorem.\n\nItaque et dolorem rem illum quisquam enim est. Quia velit et voluptatem eaque voluptatibus repellendus impedit. Saepe aut magni voluptate ut. Qui voluptatem eius et illum esse in. Dolores debitis a blanditiis.\n\nNon hic facere odit qui molestiae laboriosam reiciendis. Aut exercitationem quod dolores quia quia rerum vel a. Ut non praesentium asperiores aut alias. Dolor ut exercitationem voluptate unde ut atque. Eum voluptas nobis et.\n\nDolore eius ducimus in tempore omnis eos. Impedit sit nesciunt saepe esse. Labore est eos corrupti repudiandae velit laborum ratione quia. Aut quas similique distinctio quis id pariatur.', 'sms', 'blog-page-5.jpg', 1, '2021-06-17 10:26:10', '2021-06-24 13:47:44'),
(12, 'Eos quisquam ut tempore excepturi magnam.', 'Qui qui cupiditate quia et voluptatem. Exercitationem hic et dolores libero numquam quas modi sint. Molestiae aliquid minima ut saepe voluptatum dolor excepturi.\n\nLaudantium numquam provident incidunt voluptatem doloribus dolor sint. Quaerat amet molestias alias consequuntur sint vitae quas. Voluptatem fugit voluptas porro corporis. Provident rerum tempore aliquam ex veritatis cumque est.\n\nDebitis in vitae voluptas reiciendis ea et. Vel eveniet temporibus et iusto quisquam velit. Dicta dolorum labore et et voluptas. Dolorem expedita necessitatibus et et mollitia odit.\n\nHic harum dolor optio nulla nihil quis. Nisi ea ex quas esse deserunt. Nihil reprehenderit itaque ducimus eaque minima molestiae dolore impedit. Voluptas est nostrum quis numquam consectetur voluptatem.\n\nEt quia ut natus repudiandae vero velit consequuntur. Voluptatem unde dolorem blanditiis iste harum sit voluptas cumque. Blanditiis consectetur facilis enim inventore dicta mollitia rerum. Voluptatibus veritatis id atque voluptas in in et.\n\nVoluptatibus ea voluptatem dolor. Consequatur officia ea assumenda enim. Enim iure id voluptatem omnis.\n\nEt ea quae et tenetur dolore amet vel. Non repellat odio quas rerum et. Et pariatur eum sit praesentium.\n\nVoluptatibus tempora saepe et ea vitae. Numquam eum laudantium quia molestiae officia odio. Et maiores dignissimos a excepturi et praesentium quidem. Laudantium sed tenetur sit eum optio.\n\nEst saepe ex corrupti excepturi beatae eaque tempora. Sit cupiditate ut vel sit ea. Nihil repudiandae possimus non. Nihil velit corporis natus at.\n\nEt qui deserunt dolorem voluptate consequatur quae totam. Vitae maiores consectetur delectus quo reiciendis. Ut a id fuga sint nam quis.', 'large', 'blog-page-3.jpg', 1, '2021-06-08 04:47:22', '2021-06-24 13:47:44'),
(13, 'Et architecto omnis qui et occaecati enim est provident.', 'Aut ex aut qui est omnis aspernatur ut. Impedit cupiditate facilis voluptas voluptates molestiae. Quaerat id cumque aperiam sit fuga. Esse enim at sed iure.\n\nOmnis ex dolores ut perspiciatis. Tenetur est ipsam quam nam. Ut repellat qui laborum. Magni quos sunt amet eveniet.\n\nIpsam aut aut nihil debitis praesentium ullam voluptas. Quae repellat amet est non aut voluptatem. Qui et aut a dolorum laborum tenetur tempora. Id esse atque vel.\n\nVitae maiores molestias fugiat consequatur ut praesentium. Perferendis omnis officia quidem distinctio libero non quia. Quos perspiciatis repellat mollitia ratione autem aliquam aliquid. Enim et debitis a molestias deserunt.\n\nNumquam quod mollitia aliquid suscipit illum delectus quis. Omnis provident minus odit ut. Optio accusamus fugit sint sapiente libero et recusandae dolorum. Magnam magnam quia et.\n\nLaudantium corporis nihil sit qui accusamus commodi. Omnis sed ratione blanditiis eius non et nisi et. Fugit sapiente aut soluta mollitia consequatur eveniet incidunt ipsum. Asperiores et amet qui ut architecto eveniet.\n\nIllum deleniti suscipit maiores voluptate consequuntur non deleniti. Illum nobis perspiciatis sint. Rerum rerum dolorem at. Vero ullam necessitatibus consequatur sed dolor.\n\nMagnam facilis officia dicta ea quia at nisi earum. Unde possimus autem vitae nam veniam ipsam. Voluptatibus aut ipsum ipsam et facere sunt. Tempora exercitationem sed dolorum ut ea aut commodi.\n\nAsperiores assumenda mollitia vel. Amet vel hic quia vel doloremque quisquam. Et omnis vel doloremque quo.\n\nExplicabo provident commodi ex explicabo. Modi ut praesentium omnis quia tempore ut. Ut veniam saepe maxime aliquid est minus. Officiis voluptas repudiandae a asperiores debitis rerum ut.', 'large', 'blog-page-2.jpg', 1, '2021-04-26 17:07:27', '2021-06-24 13:47:44'),
(14, 'Ducimus nam iste sint cupiditate consequatur maiores corporis.', 'In hic at neque et autem sapiente architecto repellendus. Nulla molestiae eum fuga quisquam. Illum assumenda ipsa beatae ratione.\n\nSed voluptatem quidem autem similique provident et assumenda. Cupiditate tenetur fugiat non nihil magni. Accusamus et quod autem dolorem tenetur pariatur. Iure temporibus et nemo laborum voluptatem.\n\nLaboriosam nobis laborum minus vitae ut temporibus quam. Accusantium ullam voluptatem ut tenetur. Voluptatem rerum in officiis.\n\nFacere corrupti voluptas magni neque. Ea dignissimos id sunt minus et ipsum. Atque repellat rerum optio quae ratione.\n\nEos est aut omnis iste. Nobis fugiat qui unde omnis.\n\nPlaceat voluptates quidem eligendi provident nisi et quasi. Dolorem nisi beatae autem repellat ex similique.\n\nOmnis voluptas eaque qui possimus pariatur doloribus. Earum repellendus itaque quidem reiciendis nostrum maxime in in. Distinctio labore omnis quia voluptatem porro. Labore voluptas vitae qui provident nulla.\n\nVelit dolorem commodi distinctio velit voluptate sed. Perferendis quo quis voluptatem doloremque voluptatem fugiat. Blanditiis quas dolore dolor ea excepturi accusamus id dolor.\n\nCorrupti dolor veritatis id omnis est. Nihil qui sed vel laboriosam. Numquam eos architecto reiciendis.\n\nRem quod ea vitae voluptatem aliquid. Fugiat qui ex voluptatem voluptas blanditiis non quibusdam. Odit vitae rerum veritatis architecto reprehenderit tempora provident.', 'sms', 'blog-page-5.jpg', 1, '2021-05-01 00:08:02', '2021-06-24 13:47:44'),
(15, 'Eveniet recusandae et et rem.', 'Qui est tempore consequatur ratione. Velit dolores est saepe voluptatem. Et ipsum sint eligendi commodi architecto ut.\n\nDolore id consequatur rerum ut dolores. Vel et sed ad illo et. Nulla illum quas et nesciunt esse quisquam. Soluta repudiandae aliquid non possimus sed perspiciatis qui.\n\nAut aut dignissimos exercitationem inventore modi fugiat. Et est architecto natus. Dolores voluptas maiores et sed eaque ad est.\n\nHarum deleniti aperiam at totam consequuntur ut est. Quam repudiandae in rerum rerum earum aut voluptatem ipsam. Et vel molestias est ex qui.\n\nNisi nemo qui enim beatae. Nam aut incidunt eos dolore. Consectetur reprehenderit nobis non quo dolorem ut. Qui officiis quo debitis quidem ex culpa mollitia. Magnam illum dolor ab asperiores qui qui expedita.\n\nSed consectetur quaerat corporis aut voluptates ut vero necessitatibus. Aliquam et voluptatem sunt. Fuga quaerat rerum ab facilis. Quo eum voluptates reprehenderit id magnam.\n\nFugit corporis et aut qui. Sapiente ad aut ducimus sit. Et fuga accusamus sed voluptatum rerum eveniet quo. Perspiciatis numquam quia laudantium cum saepe.\n\nFugit id alias sint deserunt labore nemo. Error tempora et neque voluptas et inventore nam ad.\n\nVelit aut sint sint est sequi voluptatibus ratione. Quasi doloremque magnam nostrum amet ad est repudiandae voluptatem. Consequatur molestiae libero quia labore.\n\nQuibusdam voluptatem corrupti illo tenetur deserunt ut neque. Debitis fugit deleniti consequuntur numquam et quisquam quia. Dolorem ut enim magnam consequatur dolores et qui. Tenetur consectetur voluptas hic tempora omnis voluptas.', 'sms', 'blog-page-5.jpg', 1, '2021-05-01 05:13:41', '2021-06-24 13:47:44'),
(16, 'Ad debitis qui debitis.', 'Praesentium rerum deserunt velit. Natus magnam tempore beatae officiis sunt esse. Et omnis voluptatibus rerum quae nesciunt ut.\n\nQuia occaecati animi quo natus totam. Voluptatem consequatur accusantium odit et. Qui in deleniti eos quia eligendi quibusdam eius. Et cupiditate itaque et repudiandae aperiam corporis est qui.\n\nQuasi vel reiciendis sit. Est dolores dolorum id fuga. Quia omnis a nihil ipsum et qui libero. Minima non quas atque sed iste.\n\nDolores id similique ea ut et. Neque vel animi et natus quas. Aut tempore explicabo dicta cumque et accusamus et.\n\nEt explicabo beatae doloribus id vel quidem at. Facilis quis illum voluptas consequatur nobis. Voluptatum velit tenetur et blanditiis. Dolore consequatur ipsum possimus dignissimos.\n\nBeatae facere impedit consequatur eos. Aliquam magni fugiat vel consequatur ut. Quis minus maxime voluptatum nihil perferendis. Voluptatem velit qui in sequi expedita sunt. Amet amet voluptates illo suscipit eveniet debitis blanditiis similique.\n\nDolor officia at dolorum ea. Deserunt eos placeat dolores repudiandae eveniet eius quis. Eligendi possimus consequuntur facere commodi amet.\n\nLabore vel quia repellat tempora architecto quas nemo. Porro velit quis velit quia. Fugiat illum quis rerum quaerat.\n\nVero error rerum cumque amet sunt autem. Amet non enim rerum mollitia eaque sit vero corporis. Dicta at qui fugiat in repellat.\n\nSit veritatis et harum necessitatibus fugit quo delectus nisi. Eos sint id quis assumenda laboriosam quo sit. Quisquam soluta perferendis in modi eius vel asperiores ut. Commodi necessitatibus aut voluptas officiis voluptatibus recusandae.', 'sm', 'blog-page-3.jpg', 1, '2021-04-10 14:13:32', '2021-06-24 13:47:45'),
(17, 'Eligendi dolores occaecati dolor qui et deleniti non laboriosam.', 'Quidem at reiciendis consequatur ad nostrum sed. Voluptas quas architecto mollitia. Quam at suscipit eaque explicabo. Earum tempore est qui rerum ad cum.\n\nProvident velit placeat voluptas occaecati laudantium non mollitia. Ipsam ipsam et quam neque. Temporibus explicabo qui quas explicabo. Magni ut ipsa impedit non fugit.\n\nId quia et eius pariatur temporibus. Aspernatur aut est sint labore rem et modi. Doloremque non soluta nesciunt repellendus fuga doloribus voluptas. Qui quos ut hic dolore rerum. Consequuntur odio similique recusandae et saepe.\n\nMagni occaecati et iusto magnam. Numquam repellat ab et eos. Ullam aut velit necessitatibus molestias aut. Asperiores pariatur sit harum ut quis eum facere.\n\nInventore consectetur exercitationem officiis. Rem optio optio autem error velit sit porro accusantium. Molestiae amet earum porro nihil perferendis dolorem. Vel impedit amet aut.\n\nCorrupti architecto sapiente ut asperiores quae. Minima ex sed eos voluptas et porro autem laboriosam. Aspernatur harum rerum amet quis. Reiciendis sit eaque id sed rerum.\n\nA dicta ut qui quia. Incidunt rerum nesciunt numquam. Fugit dolore et aut. Sint quis delectus quis.\n\nEnim sint similique deserunt harum in mollitia. Odio fuga nam nihil aut hic culpa qui consectetur. Magni ea ratione quas perspiciatis. Quisquam ut unde qui officia molestias.\n\nQuaerat voluptatem distinctio laboriosam sed quia molestiae. Ipsum quidem et voluptatibus ut repellat error. Perspiciatis ducimus nobis recusandae ut excepturi quaerat dignissimos. Facilis suscipit et rerum error dolore.\n\nNam error a dolor autem adipisci inventore exercitationem. Quae facere magni et deserunt illum quia in. Est debitis facilis esse cum eligendi dolore qui. Nobis velit praesentium vero et at.', 'sm', 'blog-page-3.jpg', 1, '2021-06-14 14:41:35', '2021-06-24 13:47:45'),
(18, 'Saepe sunt quasi et dolores veniam eos quos.', 'Ullam vel consequatur est mollitia. Atque et nam minima rerum corporis. Accusantium consequatur recusandae totam sint rerum non quod.\n\nIpsa iure eius dicta. Optio et eos autem ipsam dicta aut nesciunt provident.\n\nQuod ipsam dicta sequi qui eaque porro. Sit totam alias adipisci sed perferendis ab. Quis veritatis voluptas facere omnis magni. Cumque unde soluta eum.\n\nAtque perferendis distinctio temporibus ipsa. Quae cum dolores dolor ea laudantium quos autem. Non ad aut atque autem eius. Adipisci quia rerum quae autem cum.\n\nAdipisci rerum id incidunt eaque consectetur mollitia aliquam. Excepturi veniam sed aliquid dolores ea ullam consequuntur. Praesentium nobis eos ut suscipit minima. Possimus repudiandae error cum.\n\nLaborum unde provident mollitia sequi magni voluptatum ut culpa. Deserunt reiciendis quis velit illo illum.\n\nDolorem voluptates dignissimos ea molestiae libero culpa. Asperiores facilis delectus consequatur. Libero necessitatibus aut at quis deleniti iure voluptas labore. Voluptatem dolor quisquam expedita praesentium aut.\n\nImpedit non expedita eum iusto. Et non similique distinctio eum iusto. Expedita nulla omnis beatae cupiditate incidunt aut et.\n\nDolorem et tempora neque quae harum debitis. Nemo est ipsa tempora et distinctio quia voluptas. Saepe et fugit quasi ipsum non. Aliquam sequi eos hic voluptatem deserunt vel cum.\n\nQuae omnis rerum placeat numquam quos et voluptas veniam. Ea voluptate reprehenderit incidunt sed eaque qui et. Ipsa est ex magnam molestiae in ratione maxime.', 'large', 'blog-page-4.jpg', 1, '2021-04-17 08:59:49', '2021-06-24 13:47:45'),
(19, 'Explicabo saepe iste reprehenderit quia in molestias.', 'Reiciendis in error occaecati. Omnis laudantium vel cumque.\n\nNecessitatibus non minima voluptatum similique dolor. Minus ea laudantium quia itaque minus. Excepturi et ullam ratione ut aspernatur atque id et.\n\nQuia eligendi deserunt molestias quibusdam ut rerum ut quia. Odio unde ipsum quisquam totam accusamus. Provident illum voluptatem assumenda possimus perspiciatis nemo. Quia ab amet hic maiores id blanditiis modi.\n\nEaque consequuntur et nisi et blanditiis exercitationem. Repudiandae repudiandae dignissimos laudantium autem laudantium.\n\nPerspiciatis doloribus eum nostrum occaecati voluptatem. Esse rerum eum non a. Fuga et voluptatem consectetur soluta quasi.\n\nQuod blanditiis enim laborum est exercitationem. Dolor adipisci ut vel expedita et magnam labore voluptas. Quidem tempora et delectus cum explicabo doloremque perspiciatis. Et eum quaerat quia aut qui alias provident. Dolorem voluptatum et optio odit est quas blanditiis.\n\nDolor aliquam et fugiat asperiores. Quis quia laborum nesciunt. Nostrum laborum a autem modi quibusdam earum enim officia.\n\nQuidem officia maiores qui eum exercitationem. Ipsum nisi et esse sapiente. Nulla deleniti sed cumque tenetur error. Asperiores qui officia tempora dicta numquam distinctio sunt.\n\nBlanditiis consequatur corrupti quis sed voluptatem. Odit neque vitae totam officia cumque. Minus repudiandae porro sed molestias. Assumenda nisi voluptatem ut at.\n\nUt in rerum unde dolorum et est. Quas suscipit dicta provident maiores reiciendis voluptatem. Iure sequi amet corporis hic sint commodi autem. Totam sunt exercitationem ut modi. Quia quia eveniet aut perferendis amet.', 'instagram', NULL, 1, '2021-05-17 12:35:52', '2021-06-24 13:47:45'),
(20, 'Dicta enim incidunt explicabo quis iure quaerat.', 'Praesentium sunt sit delectus dolores voluptas. Dolorum accusamus non vel reiciendis. Porro ea autem ipsum incidunt eos. Et eos quidem sit qui.\n\nId est ipsa sunt a quam. Vitae non vel voluptatem totam omnis. Atque deserunt soluta qui nemo.\n\nConsequatur ut quisquam est voluptatibus magnam. Nulla itaque ipsam officiis nisi doloribus. Ex repellat non maiores qui quae aut atque officia. Quia sed animi sapiente libero voluptas recusandae.\n\nAut modi vel distinctio id. Quibusdam vel porro cumque odit impedit earum magni. Ex omnis dolores aspernatur soluta dolor laborum. Voluptatem ipsam qui eum porro quisquam exercitationem quam.\n\nNihil eius et aperiam et nihil. Eos voluptas ad deleniti alias quo.\n\nLaudantium ea omnis soluta aut sapiente sapiente rerum. Ratione neque quaerat dignissimos. Consequuntur voluptate voluptatem nobis. Distinctio possimus recusandae repudiandae.\n\nLaborum non laborum placeat ut. Quaerat tenetur ut dolorum. Magnam similique a unde porro voluptas. Quam repellat quia nisi rem eius.\n\nCumque quaerat dolorum autem ipsum perspiciatis quae non. Non dolorum recusandae aut et incidunt nesciunt ut. Dolorum rerum molestiae necessitatibus et ea aliquam eligendi. Sapiente dolorum quia facere autem provident molestias.\n\nAt autem quam non voluptates est perferendis aut. Sunt eaque pariatur maxime aliquam doloremque nihil rerum. Et eaque repellat molestiae nostrum dicta autem sed aliquid.\n\nDolorem iure consequatur omnis fugit consequatur asperiores esse nobis. Rerum ex facere eveniet magni eum accusamus vero quasi. Odio rerum sint ea minima aliquid. Voluptatum maxime cumque et quia asperiores et est. Consequatur debitis molestiae error ut odio mollitia suscipit.', 'large', 'blog-page-1.jpg', 1, '2021-04-24 15:05:32', '2021-06-24 13:47:45');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2021-06-24 14:44:23', '2021-06-24 14:44:23'),
(2, 1, 3, '2021-06-24 14:44:23', '2021-06-24 14:44:23'),
(3, 2, 5, '2021-06-24 14:44:23', '2021-06-24 14:44:23'),
(4, 2, 3, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(5, 2, 2, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(6, 4, 1, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(7, 4, 2, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(8, 5, 2, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(9, 5, 4, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(10, 7, 3, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(11, 7, 2, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(12, 7, 1, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(13, 10, 4, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(14, 10, 5, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(15, 10, 2, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(16, 11, 5, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(17, 11, 4, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(18, 11, 2, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(19, 12, 1, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(20, 13, 4, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(21, 13, 1, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(22, 13, 2, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(23, 14, 2, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(24, 14, 3, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(25, 15, 2, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(26, 15, 5, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(27, 15, 4, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(28, 16, 2, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(29, 17, 3, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(30, 18, 2, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(31, 18, 5, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(32, 18, 1, '2021-06-24 14:44:24', '2021-06-24 14:44:24'),
(33, 19, 5, '2021-06-24 14:44:24', '2021-06-24 14:44:24');

-- --------------------------------------------------------

--
-- Структура таблицы `pricing_plans`
--

CREATE TABLE `pricing_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pricing_plans`
--

INSERT INTO `pricing_plans` (`id`, `type`, `class`, `price`) VALUES
(1, 1, 'NORMAL', 55.00),
(2, 1, 'PROFESSIONAL', 95.00),
(3, 1, 'ADVANCED', 165.00),
(4, 2, 'NORMAL', 660.00),
(5, 2, 'PROFESSIONAL', 1140.00),
(6, 2, 'ADVANCED', 1980.00);

-- --------------------------------------------------------

--
-- Структура таблицы `pricing_plan_features`
--

CREATE TABLE `pricing_plan_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pricing_plan_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pricing_plan_features`
--

INSERT INTO `pricing_plan_features` (`id`, `feature`, `pricing_plan_id`) VALUES
(1, 'Unlimited access to the gym', 1),
(2, '1 classes per week', 1),
(3, 'FREE drinking package', 1),
(4, '1 Free personal training', 1),
(5, 'Unlimited access to the gym', 2),
(6, '2 classes per week', 2),
(7, 'FREE drinking package', 2),
(8, '2 Free personal training', 2),
(9, 'Unlimited access to the gym', 3),
(10, '6 classes per week', 3),
(11, 'FREE drinking package', 3),
(12, '5 Free personal training', 3),
(13, 'Unlimited access to the gym', 4),
(14, '12 classes per week', 4),
(15, 'FREE drinking package', 4),
(16, '12 Free personal training', 4),
(17, 'Unlimited access to the gym', 5),
(18, '24 classes per week', 5),
(19, 'FREE drinking package', 5),
(20, '24 Free personal training', 5),
(21, 'Unlimited access to the gym', 6),
(22, '72 classes per week', 6),
(23, 'FREE drinking package', 6),
(24, '65 Free personal training', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `programs`
--

CREATE TABLE `programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `programs`
--

INSERT INTO `programs` (`id`, `name`, `description`, `image`, `category_id`) VALUES
(1, 'CROSSFIT LV1', NULL, NULL, 1),
(2, 'CROSSFIT LV2', NULL, NULL, 1),
(3, 'LUNGE BALL BUR', NULL, NULL, 2),
(4, 'PPSR', NULL, NULL, 3),
(5, 'WALLS TO KNEES', NULL, NULL, 4),
(6, 'CANDY', NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-06-25 15:59:07', '2021-06-25 15:59:07'),
(2, 'user', 'Normal User', '2021-06-25 15:59:07', '2021-06-25 15:59:07');

-- --------------------------------------------------------

--
-- Структура таблицы `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `program_id` bigint(20) UNSIGNED NOT NULL,
  `started_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ended_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `schedules`
--

INSERT INTO `schedules` (`id`, `program_id`, `started_at`, `ended_at`, `created_at`, `updated_at`) VALUES
(1, 2, '2021-06-15 07:56:27', '2021-06-15 21:49:43', '2021-06-19 14:42:24', '2021-06-19 14:42:24'),
(2, 3, '2021-06-15 11:30:00', '2021-06-15 23:41:54', '2021-06-19 14:42:24', '2021-06-19 14:42:24'),
(3, 3, '2021-06-19 13:19:46', '2021-06-19 14:22:33', '2021-06-19 14:42:24', '2021-06-19 14:42:24'),
(4, 4, '2021-06-19 11:28:17', '2021-06-19 12:11:45', '2021-06-19 14:42:24', '2021-06-19 14:42:24'),
(5, 6, '2021-06-16 15:53:37', '2021-06-16 21:16:27', '2021-06-19 14:42:24', '2021-06-19 14:42:24'),
(6, 1, '2021-06-19 07:43:41', '2021-06-19 21:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'GYM', '2021-06-24 14:41:50', '2021-06-24 14:41:50'),
(2, 'CROSSFIT', '2021-06-24 14:41:50', '2021-06-24 14:41:50'),
(3, 'WALLS', '2021-06-24 14:41:50', '2021-06-24 14:41:50'),
(4, 'CANDY', '2021-06-24 14:41:51', '2021-06-24 14:41:51'),
(5, 'LUNGE BALL', '2021-06-24 14:41:51', '2021-06-24 14:41:51');

-- --------------------------------------------------------

--
-- Структура таблицы `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `trainers`
--

INSERT INTO `trainers` (`id`, `firstname`, `lastname`, `position`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Becky', 'Taylor', 'Gymer', 'trainer-1.jpg', NULL, NULL),
(2, 'Noah', 'Leonard', 'Trainer', 'trainer-2.jpg', NULL, NULL),
(3, 'Evelyn', 'Fields', 'Gymer', 'trainer-3.jpg', NULL, NULL),
(4, 'Leroy', 'Guzman', 'Manager', 'trainer-4.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Admin', 'admin@laravel.test', 'users/default.png', '2021-06-24 13:31:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M36TqI67qn', NULL, '2021-06-24 13:31:34', '2021-06-24 13:31:34'),
(2, 1, 'admin', 'admin@email.com', 'users/default.png', NULL, '$2y$10$uqAvwdyRRrCKjynpLGVb1uoOY6o/Ym94ikPjrPo5UGti4.E/490I.', 'tAUq7GYHwHb29RKrkkZZyjW8JbjXF7kOawLPo9n884on7mUhQTTLcvqRtUwa', NULL, '2021-06-25 16:03:26', '2021-06-25 16:03:27');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_index` (`post_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_index` (`user_id`);

--
-- Индексы таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_index` (`post_id`),
  ADD KEY `post_tag_tag_id_index` (`tag_id`);

--
-- Индексы таблицы `pricing_plans`
--
ALTER TABLE `pricing_plans`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pricing_plan_features`
--
ALTER TABLE `pricing_plan_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pricing_plans_feachers_pricing_plan_id_index` (`pricing_plan_id`);

--
-- Индексы таблицы `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programs_category_id_index` (`category_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `schedules_started_at_unique` (`started_at`),
  ADD KEY `schedules_program_id_index` (`program_id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `pricing_plans`
--
ALTER TABLE `pricing_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `pricing_plan_features`
--
ALTER TABLE `pricing_plan_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `pricing_plan_features`
--
ALTER TABLE `pricing_plan_features`
  ADD CONSTRAINT `pricing_plans_feachers_pricing_plan_id_foreign` FOREIGN KEY (`pricing_plan_id`) REFERENCES `pricing_plans` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `programs`
--
ALTER TABLE `programs`
  ADD CONSTRAINT `programs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
