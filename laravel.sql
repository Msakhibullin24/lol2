-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 12 2024 г., 07:13
-- Версия сервера: 8.0.26
-- Версия PHP: 8.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `administrators`
--

CREATE TABLE `administrators` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `administrators`
--

INSERT INTO `administrators` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.ru', NULL, '$2y$10$VJLlFV/kfQrTauHTHpld8eTEpxADUhqfqRYi5e7DDZQkqYBjxDwHy', '4qeib9Kl4zT0hzjvgmyebABrqvncjzjrl2qyOU3qfrttpdjjkuJtqvb97QGs', '2023-12-23 00:12:02', '2023-12-23 00:12:02');

-- --------------------------------------------------------

--
-- Структура таблицы `advantages`
--

CREATE TABLE `advantages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptions` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `advantages`
--

INSERT INTO `advantages` (`id`, `title`, `descriptions`, `created_at`, `updated_at`) VALUES
(1, 'Опыт', 'Большинство патентных поверенных и юристов фирмы имеют стаж консультирования клиентов от 5 до 40 лет. Многие специалисты пришли на фирму с более чем полувековой историей из юридических и консалтинговых фирм, промышленных компаний, научно-исследовательских организаций, Патентных ведомств.', NULL, '2024-03-12 09:53:55'),
(2, 'Профессионализм', 'Престижное образование, практические знания и навыки в различных областях науки и техники, права и финансов позволяют патентным поверенным и юристам фирмы предлагать клиентам наиболее эффективные решения по защите и коммерциализации их прав на интеллектуальную собственность в России и в более чем 90 странах мира.', NULL, '2024-03-12 09:54:04'),
(3, 'Оптимизация затрат', 'Мы постоянно заботимся о разумных финансовых расходах клиентов. Выбираем наиболее эффективные и подходящие для каждого клиента варианты регистрации и защиты его прав на интеллектуальную собственность. Предлагаем гибкую ценовую политику.', NULL, '2024-03-12 09:54:14'),
(4, 'Надежность', 'Нам доверяют более 10 000 российских и иностранных клиентов, представляющих крупные, средние и малые промышленные и сервисные компании, инновационные центры и лаборатории, университеты и финансовые организации.\r\nПрофессиональная ответственность патентных поверенных (100+) и юристов (30+), практикующих в 16-ти офисах фирмы, застрахована на десятки миллионов долларов США.', NULL, '2024-03-12 09:54:25'),
(5, 'Проактивность', 'Мы тесно сотрудничаем со специалистами патентных и юридических служб клиентов для лучшего понимания их коммерческих целей, чтобы рекомендовать стратегии по интеллектуальной собственности, которые максимально интегрируются в бизнес-стратегии клиентов.', NULL, '2024-03-12 09:54:34'),
(6, 'Качество услуг', 'На фирме работают одни из лучших специалистов в области интеллектуальной собственности.\r\nПатентные поверенные и юристы фирмы регулярно занимают высокие позиции в национальных и международных профессиональных рейтингах.\r\nС 2020 г. фирма успешно проходит сертификационный аудит на соответствие международному стандарту ISO 9001:2015.', NULL, '2024-03-12 09:54:44');

-- --------------------------------------------------------

--
-- Структура таблицы `bot_callback_query`
--

CREATE TABLE `bot_callback_query` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique identifier for this query',
  `user_id` bigint DEFAULT NULL COMMENT 'Unique user identifier',
  `chat_id` bigint DEFAULT NULL COMMENT 'Unique chat identifier',
  `message_id` bigint UNSIGNED DEFAULT NULL COMMENT 'Unique message identifier',
  `inline_message_id` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Identifier of the message sent via the bot in inline mode, that originated the query',
  `chat_instance` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'Global identifier, uniquely corresponding to the chat to which the message with the callback button was sent',
  `data` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'Data associated with the callback button',
  `game_short_name` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'Short name of a Game to be returned, serves as the unique identifier for the game',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bot_chat`
--

CREATE TABLE `bot_chat` (
  `id` bigint NOT NULL COMMENT 'Unique identifier for this chat',
  `type` enum('private','group','supergroup','channel') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'Type of chat, can be either private, group, supergroup or channel',
  `title` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT '' COMMENT 'Title, for supergroups, channels and group chats',
  `username` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'Username, for private chats, supergroups and channels if available',
  `first_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'First name of the other party in a private chat',
  `last_name` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Last name of the other party in a private chat',
  `is_forum` tinyint(1) DEFAULT '0' COMMENT 'True, if the supergroup chat is a forum (has topics enabled)',
  `all_members_are_administrators` tinyint(1) DEFAULT '0' COMMENT 'True if a all members of this group are admins',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date update',
  `old_id` bigint DEFAULT NULL COMMENT 'Unique chat identifier, this is filled when a group is converted to a supergroup',
  `status_chat` int NOT NULL DEFAULT '0' COMMENT '0 - сообщений пока нет. 1 - последнее сообщение от пользователя. 2 - последнее сообщение от оператора',
  `msg_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'tlg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `bot_chat`
--

INSERT INTO `bot_chat` (`id`, `type`, `title`, `username`, `first_name`, `last_name`, `is_forum`, `all_members_are_administrators`, `created_at`, `updated_at`, `old_id`, `status_chat`, `msg_type`) VALUES
(284577427, 'private', NULL, 'borisbau', 'Борис', NULL, NULL, 0, '2024-01-16 15:24:52', '2024-01-16 15:25:06', NULL, 2, 'tlg'),
(394007279, 'private', NULL, NULL, 'Рустем', NULL, NULL, 0, '2023-12-28 04:34:12', '2023-12-28 04:34:35', NULL, 2, 'tlg'),
(556664831, 'private', '', '', 'Vitaliy', '', 0, 0, NULL, NULL, NULL, 2, 'vk'),
(784071373, 'private', NULL, NULL, 'Шамиль', 'Султанов', NULL, 0, '2023-12-28 04:38:29', '2023-12-28 04:38:29', NULL, 0, 'tlg'),
(786738905, 'private', '', '', 'Анастасия', '', 0, 0, NULL, NULL, NULL, 2, 'vk'),
(822442327, 'private', NULL, 'backendweb', 'Vitas', NULL, NULL, 0, '2024-01-06 17:56:20', '2024-02-11 17:05:38', NULL, 2, 'tlg'),
(5418469385, 'private', NULL, 'phpmaxpro', 'V', NULL, NULL, 0, '2024-01-04 19:56:28', '2024-01-16 21:02:59', NULL, 2, 'tlg'),
(1007761075233, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1030961608402, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1038261585163, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1042546894257, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1062869050213, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1073102061589, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1089334499895, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1093774079894, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1108949475889, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1116784901911, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1120226027069, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1125209789708, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1128529803327, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1131660001369, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1133833746842, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1136007278387, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1137744562326, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1139283702938, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1167136423800, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1175754129986, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1184551718867, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1185330768719, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1205245012205, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1209575639289, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1213725386608, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1218646126146, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1243753138289, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1247673698805, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1256408483612, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1295834263675, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1302625279765, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1306853673606, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1336153015745, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1337943914377, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1346505252999, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1386445464823, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1396755504670, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1398187676521, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1412407948724, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1421284530678, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1431528851624, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1438010309260, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1439143448537, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1497759815022, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1500056532249, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1503355434501, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1510420424154, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1546840922522, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1555586367804, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1557654383944, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1559953089413, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1573985038551, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1574685346406, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1585678658097, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1590499238233, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1594986102354, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1601641591499, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1604849667026, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1606463428568, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1607464904682, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1608816233430, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1609616613695, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1617301601297, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1653521943764, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1658561468554, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1669745470478, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1670535626612, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1675205296994, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1679064107301, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1683398269301, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1700582628762, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1779668028048, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1787978630462, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1810184905321, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1816535650456, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1837309310906, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1847686794460, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 2, 'support'),
(1873077869197, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1873234086298, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1878663155417, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1896153186241, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1903433360457, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1911913684891, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1928566144324, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1934444616514, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1965539080744, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1968392715032, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(1980898377509, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2019830677451, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2020238338308, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2037859073957, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2048761289151, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2060377695805, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2071173731490, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2074581812973, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2076288551453, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2090004516083, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2096414378791, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2099986506224, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2105775950062, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2118469749081, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2132025211399, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2161643786726, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2161715381497, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2177397501936, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2183278641380, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2231416438656, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2248327553205, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2252994938423, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2255592773850, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2275109822250, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2276536302873, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2283364778482, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2297625320748, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2319895092758, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2328280549325, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2330524230249, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2344014454976, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2353807466173, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2372685673406, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2386392877327, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2389435145671, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2408646763486, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2417221970255, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2429458127152, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2439440935265, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2442359642437, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2448453903372, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2463525584065, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2484094564098, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2492485848589, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 2, 'support'),
(2497875976160, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2498016897837, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2504404381626, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2505826527994, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2508585482939, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2522077211607, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2526828406984, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2528066219464, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2553526271920, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2555183866569, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2555912708025, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2558343605653, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2571679600627, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2598553309824, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2599821585861, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2601293351944, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2621404384341, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2634605185564, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2635518330475, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2637316341868, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2642016252911, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2647612858523, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2686135093818, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2696872158549, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2710694213013, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2719492635099, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2727724392513, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2737066208336, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2739091798243, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2758663050455, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2795272091736, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2796725836908, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2828041165560, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2854883333971, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2862162121809, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2867599174473, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2872100542744, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2878625569055, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2898338996440, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2907275562833, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2923768407673, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2931011287055, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2940950497795, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2942505581459, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2948502469300, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2959327715981, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2966717602044, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2970369270575, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2973271097891, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2975513411506, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2977090655979, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2984239742241, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2990939077885, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(2991590468809, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3005798866535, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3013189844721, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3014205179513, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3015304460434, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3025064146577, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3067290660878, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3075503543841, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3083578261390, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3106957479777, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3107759049341, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3114718605942, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3118431599719, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3147934495699, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3148325969209, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3182273294921, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3183754452007, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3186554978796, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3189242190218, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3192657085453, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3200984540529, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3211902254432, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3229223237749, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3249963023659, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3262748002886, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3274844008926, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3275779855608, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3288522073842, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3290444707739, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3305726766195, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3323945114891, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3327532117153, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3334275053245, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3346627143837, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3350050282545, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3354865844642, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3375938592541, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3421726006362, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3438804053915, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3449176709281, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3476474129758, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3480887395932, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3483339832384, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3484615205477, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3488521017524, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3499858484102, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 2, 'support'),
(3522434269124, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3530034570737, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3547968006147, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3561933700113, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3587172523153, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3592320976010, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3595720103666, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3596123613068, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3606806905092, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3621996964597, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3658979022649, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3674240000394, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3677718587462, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3697279833729, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3703189070488, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3706572548693, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3770894916054, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3774265245597, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3786516968711, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3802876513144, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3840155859391, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3841300128099, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3843206548883, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3846110425449, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3850742222510, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3852371027392, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3855880195065, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3861361422330, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3879805304204, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3882301844031, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3883871294978, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3897323708586, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3905187145450, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3918339699489, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3924271848722, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3936512574814, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3961262346837, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 2, 'support'),
(3964648331639, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3980350876287, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3985297504110, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(3990551824380, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4007265906192, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4013288274118, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4014871018120, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4021977724216, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4038399115511, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4042382727627, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4056345667997, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4069785232640, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4074010756774, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4101264287435, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4108197599873, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4109537344542, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4112450242354, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4113460832099, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4127948596884, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4136925589206, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4156205743704, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4162370162589, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4191374727710, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4194036856122, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, 'support'),
(4197388247728, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4207888087533, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4212578721830, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4228232522688, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4251124649175, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4251985501200, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4267859163280, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4269945593376, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4276413875640, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4279636682571, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4287151661369, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4294329637148, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4300246974368, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4313785172719, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4353830492384, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4381544256908, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4392889527110, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4395904000738, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4427297526626, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4428383610591, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4430717492548, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4442619071631, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4462939017821, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4494382273414, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4502544800233, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4514764359611, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4528263924207, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4530714787408, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4547444477670, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4600590553394, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4605824404541, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4607120998027, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4615288819283, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4635159813481, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4635605926261, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4642242124459, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4650367140902, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4653250454095, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4678940682209, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4690924960903, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4692528316576, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4698124959067, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4705361389692, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 2, 'support'),
(4709627138395, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4714775050839, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4723926490814, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4734698400774, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4748198517163, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4775724044253, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4777788978151, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4778898042829, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4783421926356, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4785394441224, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4790220877373, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4827672951701, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4833608362032, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4836197840115, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4851774299765, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4885981063299, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 2, 'support'),
(4894403988633, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4901277986818, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4905753625806, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4905956045016, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4915184703041, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4937337722570, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4938446135698, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4953950993348, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4956608034689, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(4992942210863, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5003841014955, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5007067467075, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5014849873496, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5027034899248, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5040373345039, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5065381747736, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5088622491453, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5149802673002, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5163590577618, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5174320208681, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5179975783641, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5195535972175, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5197653088841, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5201800731406, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5243967808929, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5313202418432, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5332865320978, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5382694422401, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5406114093646, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5407370590674, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5413069022469, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5421981639054, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5474436294702, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5478031222694, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5494367683307, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5499817936260, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5516741933791, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5530377494983, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5536047938877, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5536916730041, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5537978864030, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5541825377546, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5554781228512, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5567005610811, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5572845533540, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5592056533893, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5597484963501, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5600260331420, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5629523151567, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5656151370445, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5661968492923, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5678982196933, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5684909736875, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5694430880067, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5703370454149, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5707473494768, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5707591817834, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5726017450507, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5732404228826, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5736344514643, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5744826542122, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 2, 'support'),
(5751329990993, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5759950865620, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5810421473625, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5828462317700, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5828565300428, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5828968225831, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5861423890778, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5868211828793, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5869797929413, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5872409701249, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5902245760588, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5910148028494, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5941254401394, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5953760553320, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(5971645930253, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6025084080541, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6032586129814, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6033406900622, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6040035918902, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6041877422332, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6056008872928, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6085073526072, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6086145590672, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6107687635503, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 2, 'support'),
(6131439113017, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6132650171877, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6151055004154, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6229376862058, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6235362287284, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6235657694402, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6251803054711, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6252102771015, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6257981948644, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6316192790849, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6342844543405, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6347535763088, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6385380234105, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6441346854727, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6446470133062, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6448197515976, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6456083643055, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6461241486734, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6463075543226, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6464325645664, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6465476563472, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6487517548282, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6490618936220, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6500760024100, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6511263966366, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6516252476605, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6527738664824, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6547870029832, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6551757197829, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6570101732576, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6597368338435, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6613631284138, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6663372691337, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6686512235924, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6704085363885, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6711334254013, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6725689228770, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6741382860339, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6746967639105, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6762617991635, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6813875058625, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6828640847644, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6853840908833, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6877287034697, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6904125906154, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6924342180138, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6944474236864, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6946803347926, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6964246743051, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6971788217054, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6971823233529, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6979338169017, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6984337553419, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6991989567966, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(6992216297889, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7022676319071, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7033294987342, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7055307133525, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7056127131030, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7068007578987, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7080841402540, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7086020828784, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7087485440602, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7104436022705, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7105458288404, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7107036506541, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7112458735575, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7129962688528, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7131330656775, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7139981485558, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7149253910598, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7153177944291, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7171895790384, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7197357567605, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7228157592479, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7254187774485, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7265505236312, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7276029633381, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7279470280124, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7281283860931, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7300428101605, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7333302811558, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7344218939280, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7346027260028, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7351117013274, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7359646994576, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7375816092325, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7389207013038, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7409938803779, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7411606329919, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7421085467490, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7437986107583, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7443332272534, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7452267624062, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7467478993637, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7471979438698, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7519089095335, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7521528162596, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7533216701355, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7535435866551, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7535474016568, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7553945307030, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7554248465494, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7555960322173, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7559980558789, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7561400055968, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7571500586086, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7583581442808, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7602662885997, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7624938708736, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7682154864266, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7686617642849, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7688356123806, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7703331215058, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7707447589812, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7729896009391, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7745283539763, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7752845308610, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7803914278613, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7830466093671, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7848168854500, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7875603619362, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7877774273362, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7883392444118, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7885111821398, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7911363934109, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7950499649471, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7953841323067, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(7977009939294, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8006233209416, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8046191678310, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8047262894147, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8059018378384, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8083708062349, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8087175874447, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8091799470915, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8124083118925, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8141220004023, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8171771976598, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8208117585600, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8209656457754, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8216997891126, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8217733844903, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8246154333390, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8247155391394, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8254905054223, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8280626147157, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8298975561371, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8332129320512, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8338805644882, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8387640144096, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8387668419191, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8416494808646, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8431054970518, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8445091839358, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8445617830252, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8450047433363, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8465022692272, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8465421610467, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8466195349153, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8497041589408, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8515587671390, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8533685152073, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8538870823486, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8558094401592, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8568299937588, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8579203441007, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8581919069789, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8583107310882, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8588004144696, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8615117014500, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8617440989603, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8636531546743, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8637042606204, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8652012076818, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8654318989562, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8664838623554, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support');
INSERT INTO `bot_chat` (`id`, `type`, `title`, `username`, `first_name`, `last_name`, `is_forum`, `all_members_are_administrators`, `created_at`, `updated_at`, `old_id`, `status_chat`, `msg_type`) VALUES
(8706382514682, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8710266943087, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8746271529195, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8771119384140, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8786107775492, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8819848933409, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8835158629891, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8843745481599, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8861459104620, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8866443795691, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8866643697208, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8871922287290, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8871960331493, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8876363022045, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8886236097277, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8894542026311, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8910241923410, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8910323159686, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8922830986111, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8978756208793, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8985997875307, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8992227550917, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8992883957961, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(8994067754974, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9020295160119, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9036084194984, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9051912315442, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9069726569828, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9087898046508, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9091638304526, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9092441670458, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9098518084674, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9117794123699, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9120080467438, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9131837427012, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9133099484328, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9141521594752, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9159499087572, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9215959718620, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9225766718098, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9231010017703, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9237730021019, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9241460366573, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9242637951414, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9245854754653, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9250010144555, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9250557680286, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9253105525200, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9275655520927, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9285945899357, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9292151467052, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9297536515953, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9341554102253, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9344559558110, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9352299720550, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9360107523457, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9369786981282, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9376355008960, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9381164866344, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9389997099773, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9396131915084, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9408505994246, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9412561472373, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9436587329372, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9446982677555, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9456974850873, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9461544141271, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9464198758049, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9528461062483, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9539265730582, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9562538769073, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9564004111481, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9567727190092, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9584158603788, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9597360197931, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9601542777486, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9612545464890, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9618319480297, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9622887622025, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9637597795338, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9642796529711, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9648528549915, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9666578893806, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9686797220086, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9699215956463, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9704737250164, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9712595084846, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9732875417426, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9752398248539, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9753893432875, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9758307338360, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9801917598038, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9807061650316, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9852148072603, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9865565766694, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9890734638587, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9902580743190, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9921494132286, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9978614169837, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support'),
(9982645867583, 'private', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, 'support');

-- --------------------------------------------------------

--
-- Структура таблицы `bot_chat_join_request`
--

CREATE TABLE `bot_chat_join_request` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique identifier for this entry',
  `chat_id` bigint NOT NULL COMMENT 'Chat to which the request was sent',
  `user_id` bigint NOT NULL COMMENT 'User that sent the join request',
  `date` timestamp NOT NULL COMMENT 'Date the request was sent in Unix time',
  `bio` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Optional. Bio of the user',
  `invite_link` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Optional. Chat invite link that was used by the user to send the join request',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bot_chat_member_updated`
--

CREATE TABLE `bot_chat_member_updated` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique identifier for this entry',
  `chat_id` bigint NOT NULL COMMENT 'Chat the user belongs to',
  `user_id` bigint NOT NULL COMMENT 'Performer of the action, which resulted in the change',
  `date` timestamp NOT NULL COMMENT 'Date the change was done in Unix time',
  `old_chat_member` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'Previous information about the chat member',
  `new_chat_member` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'New information about the chat member',
  `invite_link` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Chat invite link, which was used by the user to join the chat; for joining by invite link events only',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bot_chosen_inline_result`
--

CREATE TABLE `bot_chosen_inline_result` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique identifier for this entry',
  `result_id` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'The unique identifier for the result that was chosen',
  `user_id` bigint DEFAULT NULL COMMENT 'The user that chose the result',
  `location` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Sender location, only for bots that require user location',
  `inline_message_id` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Identifier of the sent inline message',
  `query` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'The query that was used to obtain the result',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bot_conversation`
--

CREATE TABLE `bot_conversation` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique identifier for this entry',
  `user_id` bigint DEFAULT NULL COMMENT 'Unique user identifier',
  `chat_id` bigint DEFAULT NULL COMMENT 'Unique user or chat identifier',
  `status` enum('active','cancelled','stopped') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active' COMMENT 'Conversation state',
  `command` varchar(160) COLLATE utf8mb4_unicode_520_ci DEFAULT '' COMMENT 'Default command to execute',
  `notes` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Data stored from command',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date update'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bot_edited_message`
--

CREATE TABLE `bot_edited_message` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique identifier for this entry',
  `chat_id` bigint DEFAULT NULL COMMENT 'Unique chat identifier',
  `message_id` bigint UNSIGNED DEFAULT NULL COMMENT 'Unique message identifier',
  `user_id` bigint DEFAULT NULL COMMENT 'Unique user identifier',
  `edit_date` timestamp NULL DEFAULT NULL COMMENT 'Date the message was edited in timestamp format',
  `text` text COLLATE utf8mb4_unicode_520_ci COMMENT 'For text messages, the actual UTF-8 text of the message max message length 4096 char utf8',
  `entities` text COLLATE utf8mb4_unicode_520_ci COMMENT 'For text messages, special entities like usernames, URLs, bot commands, etc. that appear in the text',
  `caption` text COLLATE utf8mb4_unicode_520_ci COMMENT 'For message with caption, the actual UTF-8 text of the caption'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bot_inline_query`
--

CREATE TABLE `bot_inline_query` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique identifier for this query',
  `user_id` bigint DEFAULT NULL COMMENT 'Unique user identifier',
  `location` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Location of the user',
  `query` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'Text of the query',
  `offset` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Offset of the result',
  `chat_type` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Optional. Type of the chat, from which the inline query was sent.',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bot_message`
--

CREATE TABLE `bot_message` (
  `chat_id` bigint NOT NULL COMMENT 'Unique chat identifier',
  `sender_chat_id` bigint DEFAULT NULL COMMENT 'Sender of the message, sent on behalf of a chat',
  `id` bigint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Unique message identifier',
  `message_thread_id` bigint DEFAULT NULL COMMENT 'Unique identifier of a message thread to which the message belongs; for supergroups only',
  `user_id` bigint DEFAULT NULL COMMENT 'Unique user identifier',
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date the message was sent in timestamp format',
  `forward_from` bigint DEFAULT NULL COMMENT 'Unique user identifier, sender of the original message',
  `forward_from_chat` bigint DEFAULT NULL COMMENT 'Unique chat identifier, chat the original message belongs to',
  `forward_from_message_id` bigint DEFAULT NULL COMMENT 'Unique chat identifier of the original message in the channel',
  `forward_signature` text COLLATE utf8mb4_unicode_520_ci COMMENT 'For messages forwarded from channels, signature of the post author if present',
  `forward_sender_name` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Sender''s name for messages forwarded from users who disallow adding a link to their account in forwarded messages',
  `forward_date` timestamp NULL DEFAULT NULL COMMENT 'date the original message was sent in timestamp format',
  `is_topic_message` tinyint(1) DEFAULT '0' COMMENT 'True, if the message is sent to a forum topic',
  `is_automatic_forward` tinyint(1) DEFAULT '0' COMMENT 'True, if the message is a channel post that was automatically forwarded to the connected discussion group',
  `reply_to_chat` bigint DEFAULT NULL COMMENT 'Unique chat identifier',
  `reply_to_message` bigint UNSIGNED DEFAULT NULL COMMENT 'Message that this message is reply to',
  `via_bot` bigint DEFAULT NULL COMMENT 'Optional. Bot through which the message was sent',
  `edit_date` timestamp NULL DEFAULT NULL COMMENT 'Date the message was last edited in Unix time',
  `has_protected_content` tinyint(1) DEFAULT '0' COMMENT 'True, if the message can''t be forwarded',
  `media_group_id` text COLLATE utf8mb4_unicode_520_ci COMMENT 'The unique identifier of a media message group this message belongs to',
  `author_signature` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Signature of the post author for messages in channels',
  `text` text COLLATE utf8mb4_unicode_520_ci COMMENT 'For text messages, the actual UTF-8 text of the message max message length 4096 char utf8mb4',
  `entities` text COLLATE utf8mb4_unicode_520_ci COMMENT 'For text messages, special entities like usernames, URLs, bot commands, etc. that appear in the text',
  `caption_entities` text COLLATE utf8mb4_unicode_520_ci COMMENT 'For messages with a caption, special entities like usernames, URLs, bot commands, etc. that appear in the caption',
  `audio` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Audio object. Message is an audio file, information about the file',
  `document` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Document object. Message is a general file, information about the file',
  `animation` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Message is an animation, information about the animation',
  `game` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Game object. Message is a game, information about the game',
  `photo` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Array of PhotoSize objects. Message is a photo, available sizes of the photo',
  `sticker` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Sticker object. Message is a sticker, information about the sticker',
  `video` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Video object. Message is a video, information about the video',
  `voice` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Voice Object. Message is a Voice, information about the Voice',
  `video_note` text COLLATE utf8mb4_unicode_520_ci COMMENT 'VoiceNote Object. Message is a Video Note, information about the Video Note',
  `caption` text COLLATE utf8mb4_unicode_520_ci COMMENT 'For message with caption, the actual UTF-8 text of the caption',
  `has_media_spoiler` tinyint(1) DEFAULT '0' COMMENT 'True, if the message media is covered by a spoiler animation',
  `contact` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Contact object. Message is a shared contact, information about the contact',
  `location` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Location object. Message is a shared location, information about the location',
  `venue` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Venue object. Message is a Venue, information about the Venue',
  `poll` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Poll object. Message is a native poll, information about the poll',
  `dice` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Message is a dice with random value from 1 to 6',
  `new_chat_members` text COLLATE utf8mb4_unicode_520_ci COMMENT 'List of unique user identifiers, new member(s) were added to the group, information about them (one of these members may be the bot itself)',
  `left_chat_member` bigint DEFAULT NULL COMMENT 'Unique user identifier, a member was removed from the group, information about them (this member may be the bot itself)',
  `new_chat_title` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'A chat title was changed to this value',
  `new_chat_photo` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Array of PhotoSize objects. A chat photo was change to this value',
  `delete_chat_photo` tinyint(1) DEFAULT '0' COMMENT 'Informs that the chat photo was deleted',
  `group_chat_created` tinyint(1) DEFAULT '0' COMMENT 'Informs that the group has been created',
  `supergroup_chat_created` tinyint(1) DEFAULT '0' COMMENT 'Informs that the supergroup has been created',
  `channel_chat_created` tinyint(1) DEFAULT '0' COMMENT 'Informs that the channel chat has been created',
  `message_auto_delete_timer_changed` text COLLATE utf8mb4_unicode_520_ci COMMENT 'MessageAutoDeleteTimerChanged object. Message is a service message: auto-delete timer settings changed in the chat',
  `migrate_to_chat_id` bigint DEFAULT NULL COMMENT 'Migrate to chat identifier. The group has been migrated to a supergroup with the specified identifier',
  `migrate_from_chat_id` bigint DEFAULT NULL COMMENT 'Migrate from chat identifier. The supergroup has been migrated from a group with the specified identifier',
  `pinned_message` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Message object. Specified message was pinned',
  `invoice` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Message is an invoice for a payment, information about the invoice',
  `successful_payment` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Message is a service message about a successful payment, information about the payment',
  `user_shared` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Optional. Service message: a user was shared with the bot',
  `chat_shared` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Optional. Service message: a chat was shared with the bot',
  `connected_website` text COLLATE utf8mb4_unicode_520_ci COMMENT 'The domain name of the website on which the user has logged in.',
  `write_access_allowed` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Service message: the user allowed the bot added to the attachment menu to write messages',
  `passport_data` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Telegram Passport data',
  `proximity_alert_triggered` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Service message. A user in the chat triggered another user''s proximity alert while sharing Live Location.',
  `forum_topic_created` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Service message: forum topic created',
  `forum_topic_edited` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Service message: forum topic edited',
  `forum_topic_closed` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Service message: forum topic closed',
  `forum_topic_reopened` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Service message: forum topic reopened',
  `general_forum_topic_hidden` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Service message: the General forum topic hidden',
  `general_forum_topic_unhidden` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Service message: the General forum topic unhidden',
  `video_chat_scheduled` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Service message: video chat scheduled',
  `video_chat_started` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Service message: video chat started',
  `video_chat_ended` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Service message: video chat ended',
  `video_chat_participants_invited` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Service message: new participants invited to a video chat',
  `web_app_data` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Service message: data sent by a Web App',
  `reply_markup` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Inline keyboard attached to the message',
  `question` int NOT NULL DEFAULT '0',
  `operator_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `bot_message`
--

INSERT INTO `bot_message` (`chat_id`, `sender_chat_id`, `id`, `message_thread_id`, `user_id`, `date`, `forward_from`, `forward_from_chat`, `forward_from_message_id`, `forward_signature`, `forward_sender_name`, `forward_date`, `is_topic_message`, `is_automatic_forward`, `reply_to_chat`, `reply_to_message`, `via_bot`, `edit_date`, `has_protected_content`, `media_group_id`, `author_signature`, `text`, `entities`, `caption_entities`, `audio`, `document`, `animation`, `game`, `photo`, `sticker`, `video`, `voice`, `video_note`, `caption`, `has_media_spoiler`, `contact`, `location`, `venue`, `poll`, `dice`, `new_chat_members`, `left_chat_member`, `new_chat_title`, `new_chat_photo`, `delete_chat_photo`, `group_chat_created`, `supergroup_chat_created`, `channel_chat_created`, `message_auto_delete_timer_changed`, `migrate_to_chat_id`, `migrate_from_chat_id`, `pinned_message`, `invoice`, `successful_payment`, `user_shared`, `chat_shared`, `connected_website`, `write_access_allowed`, `passport_data`, `proximity_alert_triggered`, `forum_topic_created`, `forum_topic_edited`, `forum_topic_closed`, `forum_topic_reopened`, `general_forum_topic_hidden`, `general_forum_topic_unhidden`, `video_chat_scheduled`, `video_chat_started`, `video_chat_ended`, `video_chat_participants_invited`, `web_app_data`, `reply_markup`, `question`, `operator_id`) VALUES
(284577427, NULL, 244, NULL, 284577427, '2024-01-16 15:24:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-16 15:24:52', 0, NULL, NULL, '/start', '[{\"offset\":0,\"length\":6,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(284577427, NULL, 246, NULL, 284577427, '2024-01-16 15:25:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-16 15:25:06', 0, NULL, NULL, 'Хочу зарегистрировать товарный знвк', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(284577427, NULL, 285, NULL, NULL, '2024-01-18 12:35:12', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Здравствуйте. Всегда рады Вам помочь!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(394007279, NULL, 28, NULL, 394007279, '2023-12-28 04:34:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-12-28 04:34:12', 0, NULL, NULL, '/start', '[{\"offset\":0,\"length\":6,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(394007279, NULL, 30, NULL, 394007279, '2023-12-28 04:34:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-12-28 04:34:36', 0, NULL, NULL, 'Сколько стоит регистрация товарного знака?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(394007279, NULL, 32, NULL, NULL, '2023-12-28 07:44:32', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1000р + торг', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 11),
(556664831, NULL, 266, NULL, NULL, '2024-01-10 12:38:26', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Здравствуйте, подскажите пожалуйста - [бла-бла-бла....]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(556664831, NULL, 267, NULL, NULL, '2024-01-10 12:39:12', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Зарегистрируйтесь и укажите VK ID в своем профиле', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(556664831, NULL, 268, NULL, NULL, '2024-01-10 12:46:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ща', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(556664831, NULL, 269, NULL, NULL, '2024-01-10 13:41:20', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'и ?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(556664831, NULL, 276, NULL, NULL, '2024-01-12 04:19:03', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'fghjfghjfghj fgh fghjfghj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(556664831, NULL, 277, NULL, NULL, '2024-01-12 04:20:16', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Здравствуйте, подскажите - [бла-бла-бла....]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(556664831, NULL, 278, NULL, NULL, '2024-01-12 04:21:39', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'dfgfgdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(556664831, NULL, 279, NULL, NULL, '2024-01-12 09:19:18', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'fghjfghj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(556664831, NULL, 282, NULL, NULL, '2024-01-14 19:48:04', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '62606065656 606 506 65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(556664831, NULL, 283, NULL, NULL, '2024-01-14 19:48:19', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '132313232132161 32 132 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(784071373, NULL, 31, NULL, 784071373, '2023-12-28 04:38:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-12-28 04:38:30', 0, NULL, NULL, '/start', '[{\"offset\":0,\"length\":6,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(786738905, NULL, 217, NULL, NULL, '2024-01-08 22:27:55', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Вопрос оператору', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(786738905, NULL, 218, NULL, NULL, '2024-01-08 22:42:32', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ответ пользователю', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(786738905, NULL, 221, NULL, NULL, '2024-01-08 22:45:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'разъясните пож - ...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(786738905, NULL, 222, NULL, NULL, '2024-01-08 22:48:05', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ответ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(786738905, NULL, 225, NULL, NULL, '2024-01-08 22:54:42', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Вопрос о', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(786738905, NULL, 226, NULL, NULL, '2024-01-08 22:54:57', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ответ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(786738905, NULL, 231, NULL, NULL, '2024-01-08 23:49:34', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Вопрос', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(786738905, NULL, 232, NULL, NULL, '2024-01-08 23:49:57', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ответ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(786738905, NULL, 238, NULL, NULL, '2024-01-09 15:18:24', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'разъясните пож - ...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(786738905, NULL, 239, NULL, NULL, '2024-01-09 15:18:41', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ответ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(786738905, NULL, 273, NULL, NULL, '2024-01-12 03:33:51', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '11111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(786738905, NULL, 274, NULL, NULL, '2024-01-12 03:35:11', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '00000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(786738905, NULL, 275, NULL, NULL, '2024-01-12 03:38:20', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '11111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(786738905, NULL, 286, NULL, NULL, '2024-01-30 01:19:12', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(786738905, NULL, 287, NULL, NULL, '2024-01-30 01:19:38', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '11111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(822442327, NULL, 217, NULL, 822442327, '2024-01-08 22:28:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-08 22:28:29', 0, NULL, NULL, 'Здравствуйте, у меня такой вопрос - ....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(822442327, NULL, 219, NULL, NULL, '2024-01-08 22:43:49', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Здравствуйте, ответ такой - ..', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(822442327, NULL, 251, NULL, 822442327, '2024-02-11 17:05:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-02-11 17:05:38', 0, NULL, NULL, 'asdfgdfgsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(822442327, NULL, 288, NULL, NULL, '2024-02-11 17:05:57', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'gkghjkghjkg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5418469385, NULL, 216, NULL, 5418469385, '2024-01-08 22:27:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-08 22:27:29', 0, NULL, NULL, 'Вопрос', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5418469385, NULL, 220, NULL, NULL, '2024-01-08 22:44:08', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ответ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5418469385, NULL, 222, NULL, 5418469385, '2024-01-08 22:54:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-08 22:54:08', 0, NULL, NULL, 'Вопрос', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5418469385, NULL, 223, NULL, NULL, '2024-01-08 22:53:54', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ответ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5418469385, NULL, 224, NULL, NULL, '2024-01-08 22:54:26', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ответ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5418469385, NULL, 226, NULL, 5418469385, '2024-01-08 23:42:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-08 23:42:07', 0, NULL, NULL, 'Да, минутку', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5418469385, NULL, 227, NULL, NULL, '2024-01-08 23:41:20', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Еще есть вопросы ?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5418469385, NULL, 228, NULL, NULL, '2024-01-08 23:41:58', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '???', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5418469385, NULL, 229, NULL, NULL, '2024-01-08 23:42:29', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ждем', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5418469385, NULL, 230, NULL, NULL, '2024-01-08 23:49:20', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ответ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5418469385, NULL, 231, NULL, 5418469385, '2024-01-08 23:50:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-08 23:50:10', 0, NULL, NULL, 'Вопрос', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5418469385, NULL, 232, NULL, 5418469385, '2024-01-08 23:50:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-08 23:50:30', 0, NULL, NULL, 'Вопрос Вопрос Вопрос Вопрос Вопрос Вопрос Вопрос Вопрос Вопрос Вопрос', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5418469385, NULL, 233, NULL, NULL, '2024-01-08 23:50:48', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ответ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5418469385, NULL, 234, NULL, 5418469385, '2024-01-08 23:51:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-08 23:51:22', 0, NULL, NULL, 'Вопрос Вопрос Вопрос', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5418469385, NULL, 235, NULL, NULL, '2024-01-08 23:51:46', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ответ Ответ Ответ Ответ Ответ Ответ Ответ Ответ Ответ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5418469385, NULL, 236, NULL, 5418469385, '2024-01-09 00:25:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-09 00:25:20', 0, NULL, NULL, '987987987987987', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5418469385, NULL, 237, NULL, NULL, '2024-01-09 00:25:42', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Ответ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5418469385, NULL, 238, NULL, 5418469385, '2024-01-11 19:40:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-11 19:40:08', 0, NULL, NULL, 'Чат работает ?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5418469385, NULL, 240, NULL, 5418469385, '2024-01-12 23:14:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-12 23:14:28', 0, NULL, NULL, 'Чат работает ?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5418469385, NULL, 242, NULL, 5418469385, '2024-01-14 19:47:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-14 19:47:14', 0, NULL, NULL, 'Здравствуйте. Сколько стоит патент ........ .......', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5418469385, NULL, 247, NULL, 5418469385, '2024-01-16 21:02:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-16 21:02:59', 0, NULL, NULL, 'торг присутствует ?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5418469385, NULL, 272, NULL, NULL, '2024-01-11 19:40:52', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Да. Все работает', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5418469385, NULL, 280, NULL, NULL, '2024-01-14 14:11:55', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Да. Да. Все работает.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5418469385, NULL, 281, NULL, NULL, '2024-01-14 19:47:34', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, '1000р', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5418469385, NULL, 284, NULL, NULL, '2024-01-18 12:33:49', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'нет', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(1847686794460, NULL, 251, NULL, NULL, '2024-01-09 20:21:05', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'есть кто ?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(1847686794460, NULL, 252, NULL, NULL, '2024-01-09 20:21:47', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Здравствуйте. Есть, конечно. Чем могу помочь ?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(1847686794460, NULL, 253, NULL, NULL, '2024-01-09 20:23:59', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'помогите чем-нибудь', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(1847686794460, NULL, 254, NULL, NULL, '2024-01-09 20:42:10', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'помог. не за что', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(1847686794460, NULL, 255, NULL, NULL, '2024-01-09 20:42:27', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'спасибо)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(1847686794460, NULL, 256, NULL, NULL, '2024-01-09 20:42:39', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'не за что', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(2492485848589, NULL, 262, NULL, NULL, '2024-01-10 11:02:14', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Тест', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(2492485848589, NULL, 265, NULL, NULL, '2024-01-10 12:36:19', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ТестТест', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(3499858484102, NULL, 240, NULL, NULL, '2024-01-09 19:27:53', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'вопрос ?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(3499858484102, NULL, 241, NULL, NULL, '2024-01-09 19:29:09', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'вопрос ?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(3499858484102, NULL, 242, NULL, NULL, '2024-01-09 19:38:19', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ответ!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(3499858484102, NULL, 243, NULL, NULL, '2024-01-09 20:04:01', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'А еще вопрос ?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(3499858484102, NULL, 244, NULL, NULL, '2024-01-09 20:04:53', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'А еще вопрос ?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(3499858484102, NULL, 245, NULL, NULL, '2024-01-09 20:08:25', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'на все вопросы один ответ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(3499858484102, NULL, 246, NULL, NULL, '2024-01-09 20:09:07', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'А если еще один вопрос ???', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(3499858484102, NULL, 247, NULL, NULL, '2024-01-09 20:10:11', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Маааленький вопросик', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(3499858484102, NULL, 248, NULL, NULL, '2024-01-09 20:14:35', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ну чего еще ?)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(3499858484102, NULL, 249, NULL, NULL, '2024-01-09 20:15:04', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'все. уже ничего', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(3499858484102, NULL, 250, NULL, NULL, '2024-01-09 20:15:15', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ну и все', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(3961262346837, NULL, 270, NULL, NULL, '2024-01-11 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(3961262346837, NULL, 271, NULL, NULL, '2024-01-11 13:04:56', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'ответ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(4194036856122, NULL, 296, NULL, NULL, '2024-03-29 20:06:52', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Добрый вечер. Меня зовут Кирилл, подскажите пожалуйста, как мне сможет помочь ваша площадка , если я музыкант?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(4705361389692, NULL, 289, NULL, NULL, '2024-02-18 17:59:41', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(4705361389692, NULL, 290, NULL, NULL, '2024-02-18 18:00:43', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'sdfgsdfg sdfgsdfgsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(4885981063299, NULL, 295, NULL, NULL, '2024-03-29 15:54:38', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(4885981063299, NULL, 297, NULL, NULL, '2024-04-04 06:21:42', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5744826542122, NULL, 291, NULL, NULL, '2024-02-25 20:53:44', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'апрарвапрвап вапр вап', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5744826542122, NULL, 292, NULL, NULL, '2024-02-25 20:53:53', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'вапрвап вапрвапрвап', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(5744826542122, NULL, 293, NULL, NULL, '2024-02-25 20:54:13', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'и чем по чем ?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5744826542122, NULL, 294, NULL, NULL, '2024-02-25 20:54:24', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'по 100 р', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(6107687635503, NULL, 257, NULL, NULL, '2024-01-10 08:44:20', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Тестовый вопрос оператору', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(6107687635503, NULL, 258, NULL, NULL, '2024-01-10 08:47:37', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'еще один вдогонку', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(6107687635503, NULL, 259, NULL, NULL, '2024-01-10 08:48:00', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Тестовый ответ пользователю', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(6107687635503, NULL, 260, NULL, NULL, '2024-01-10 08:50:52', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'И еще один большой вопрос И еще один большой вопрос И еще один большой вопрос И еще один большой вопрос И еще один большой вопрос И еще один большой вопрос И еще один большой вопрос И еще один большой вопрос И еще один большой вопрос И еще один большой вопрос И еще один большой вопрос И еще один большой вопрос И еще один большой вопрос И еще один большой вопрос И еще один большой вопрос И еще один большой вопрос', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(6107687635503, NULL, 261, NULL, NULL, '2024-01-10 08:52:07', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'И такой же большой ответ пользователю И такой же большой ответ пользователю И такой же большой ответ пользователю И такой же большой ответ пользователю И такой же большой ответ пользователю И такой же большой ответ пользователю', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(6107687635503, NULL, 263, NULL, NULL, '2024-01-10 12:35:44', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(6107687635503, NULL, 264, NULL, NULL, '2024-01-10 12:36:05', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `bot_poll`
--

CREATE TABLE `bot_poll` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique poll identifier',
  `question` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'Poll question',
  `options` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'List of poll options',
  `total_voter_count` int UNSIGNED DEFAULT NULL COMMENT 'Total number of users that voted in the poll',
  `is_closed` tinyint(1) DEFAULT '0' COMMENT 'True, if the poll is closed',
  `is_anonymous` tinyint(1) DEFAULT '1' COMMENT 'True, if the poll is anonymous',
  `type` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Poll type, currently can be “regular” or “quiz”',
  `allows_multiple_answers` tinyint(1) DEFAULT '0' COMMENT 'True, if the poll allows multiple answers',
  `correct_option_id` int UNSIGNED DEFAULT NULL COMMENT '0-based identifier of the correct answer option. Available only for polls in the quiz mode, which are closed, or was sent (not forwarded) by the bot or to the private chat with the bot.',
  `explanation` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Text that is shown when a user chooses an incorrect answer or taps on the lamp icon in a quiz-style poll, 0-200 characters',
  `explanation_entities` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Special entities like usernames, URLs, bot commands, etc. that appear in the explanation',
  `open_period` int UNSIGNED DEFAULT NULL COMMENT 'Amount of time in seconds the poll will be active after creation',
  `close_date` timestamp NULL DEFAULT NULL COMMENT 'Point in time (Unix timestamp) when the poll will be automatically closed',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bot_poll_answer`
--

CREATE TABLE `bot_poll_answer` (
  `poll_id` bigint UNSIGNED NOT NULL COMMENT 'Unique poll identifier',
  `user_id` bigint NOT NULL COMMENT 'The user, who changed the answer to the poll',
  `option_ids` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '0-based identifiers of answer options, chosen by the user. May be empty if the user retracted their vote.',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bot_pre_checkout_query`
--

CREATE TABLE `bot_pre_checkout_query` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique query identifier',
  `user_id` bigint DEFAULT NULL COMMENT 'User who sent the query',
  `currency` char(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Three-letter ISO 4217 currency code',
  `total_amount` bigint DEFAULT NULL COMMENT 'Total price in the smallest units of the currency',
  `invoice_payload` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'Bot specified invoice payload',
  `shipping_option_id` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Identifier of the shipping option chosen by the user',
  `order_info` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Order info provided by the user',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bot_request_limiter`
--

CREATE TABLE `bot_request_limiter` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique identifier for this entry',
  `chat_id` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Unique chat identifier',
  `inline_message_id` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Identifier of the sent inline message',
  `method` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Request method',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bot_shipping_query`
--

CREATE TABLE `bot_shipping_query` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique query identifier',
  `user_id` bigint DEFAULT NULL COMMENT 'User who sent the query',
  `invoice_payload` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'Bot specified invoice payload',
  `shipping_address` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'User specified shipping address',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bot_telegram_update`
--

CREATE TABLE `bot_telegram_update` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Update''s unique identifier',
  `chat_id` bigint DEFAULT NULL COMMENT 'Unique chat identifier',
  `message_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New incoming message of any kind - text, photo, sticker, etc.',
  `edited_message_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New version of a message that is known to the bot and was edited',
  `channel_post_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New incoming channel post of any kind - text, photo, sticker, etc.',
  `edited_channel_post_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New version of a channel post that is known to the bot and was edited',
  `inline_query_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New incoming inline query',
  `chosen_inline_result_id` bigint UNSIGNED DEFAULT NULL COMMENT 'The result of an inline query that was chosen by a user and sent to their chat partner',
  `callback_query_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New incoming callback query',
  `shipping_query_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New incoming shipping query. Only for invoices with flexible price',
  `pre_checkout_query_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New incoming pre-checkout query. Contains full information about checkout',
  `poll_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New poll state. Bots receive only updates about polls, which are sent or stopped by the bot',
  `poll_answer_poll_id` bigint UNSIGNED DEFAULT NULL COMMENT 'A user changed their answer in a non-anonymous poll. Bots receive new votes only in polls that were sent by the bot itself.',
  `my_chat_member_updated_id` bigint UNSIGNED DEFAULT NULL COMMENT 'The bot''s chat member status was updated in a chat. For private chats, this update is received only when the bot is blocked or unblocked by the user.',
  `chat_member_updated_id` bigint UNSIGNED DEFAULT NULL COMMENT 'A chat member''s status was updated in a chat. The bot must be an administrator in the chat and must explicitly specify “chat_member” in the list of allowed_updates to receive these updates.',
  `chat_join_request_id` bigint UNSIGNED DEFAULT NULL COMMENT 'A request to join the chat has been sent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `bot_telegram_update`
--

INSERT INTO `bot_telegram_update` (`id`, `chat_id`, `message_id`, `edited_message_id`, `channel_post_id`, `edited_channel_post_id`, `inline_query_id`, `chosen_inline_result_id`, `callback_query_id`, `shipping_query_id`, `pre_checkout_query_id`, `poll_id`, `poll_answer_poll_id`, `my_chat_member_updated_id`, `chat_member_updated_id`, `chat_join_request_id`) VALUES
(17253339, 5418469385, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253340, 5418469385, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253341, 5418469385, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253342, 5418469385, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253343, 5418469385, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253344, 5418469385, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253345, 822442327, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253346, 822442327, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253347, 822442327, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253348, 822442327, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253349, 822442327, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253350, 822442327, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253351, 5418469385, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253352, 394007279, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253353, 394007279, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253354, 784071373, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253355, 5418469385, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253356, 5418469385, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253357, 5418469385, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253358, 5418469385, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253359, 5418469385, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253360, 5418469385, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253361, 5418469385, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253362, 5418469385, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253363, 5418469385, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253364, 5418469385, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253365, 5418469385, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253366, 5418469385, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253367, 5418469385, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253368, 5418469385, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253369, 5418469385, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253370, 5418469385, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253371, 5418469385, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253372, 5418469385, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253373, 5418469385, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253374, 5418469385, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253375, 5418469385, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253376, 5418469385, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253377, 5418469385, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253378, 5418469385, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253379, 5418469385, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253380, 5418469385, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253381, 5418469385, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253382, 5418469385, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253383, 5418469385, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253384, 5418469385, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253385, 5418469385, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253386, 5418469385, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253387, 5418469385, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253388, 5418469385, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253389, 5418469385, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253390, 5418469385, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253391, 5418469385, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253392, 5418469385, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253393, 5418469385, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253394, 5418469385, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253395, 5418469385, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253396, 5418469385, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253397, 5418469385, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253398, 5418469385, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253399, 5418469385, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253400, 5418469385, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253401, 5418469385, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253402, 5418469385, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253403, 5418469385, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253404, 5418469385, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253405, 5418469385, 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253406, 5418469385, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253407, 5418469385, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253408, 5418469385, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253409, 5418469385, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253410, 5418469385, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253411, 5418469385, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253412, 5418469385, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253413, 5418469385, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253414, 5418469385, 138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253415, 5418469385, 139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253416, 5418469385, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253417, 5418469385, 141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253418, 5418469385, 142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253419, 5418469385, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253420, 5418469385, 145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253421, 5418469385, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253422, 5418469385, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253423, 5418469385, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253424, 5418469385, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253425, 5418469385, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253426, 5418469385, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253427, 5418469385, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253428, 5418469385, 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253429, 5418469385, 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253430, 5418469385, 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253431, 5418469385, 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253432, 5418469385, 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253433, 5418469385, 166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253434, 5418469385, 168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253435, 5418469385, 169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253436, 5418469385, 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253437, 5418469385, 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253438, 5418469385, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253439, 5418469385, 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253440, 5418469385, 176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253441, 5418469385, 177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253442, 822442327, 178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253443, 822442327, 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253444, 5418469385, 183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253445, 5418469385, 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253446, 822442327, 186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253447, 822442327, 187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253448, 822442327, 189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253449, 5418469385, 190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253450, 5418469385, 193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253451, 5418469385, 195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253452, 822442327, 197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253453, 822442327, 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253454, 822442327, 202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253455, 822442327, 204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253456, 822442327, 206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253457, 822442327, 208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253458, 822442327, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253459, 822442327, 212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253460, 822442327, 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253461, 5418469385, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253462, 5418469385, 216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253463, 822442327, 217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253464, 5418469385, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253465, 5418469385, 222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253466, 5418469385, 226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253467, 5418469385, 228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253468, 5418469385, 229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253469, 5418469385, 231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253470, 5418469385, 232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253471, 5418469385, 234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253472, 5418469385, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253473, 5418469385, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253474, 5418469385, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253475, 5418469385, 242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253476, 284577427, 244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253477, 284577427, 246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253478, 5418469385, 247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17253479, 822442327, 251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `bot_user`
--

CREATE TABLE `bot_user` (
  `id` bigint NOT NULL COMMENT 'Unique identifier for this user or bot',
  `is_bot` tinyint(1) DEFAULT '0' COMMENT 'True, if this user is a bot',
  `first_name` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'User''s or bot''s first name',
  `last_name` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'User''s or bot''s last name',
  `username` char(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'User''s or bot''s username',
  `language_code` char(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'IETF language tag of the user''s language',
  `is_premium` tinyint(1) DEFAULT '0' COMMENT 'True, if this user is a Telegram Premium user',
  `added_to_attachment_menu` tinyint(1) DEFAULT '0' COMMENT 'True, if this user added the bot to the attachment menu',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date update'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `bot_user`
--

INSERT INTO `bot_user` (`id`, `is_bot`, `first_name`, `last_name`, `username`, `language_code`, `is_premium`, `added_to_attachment_menu`, `created_at`, `updated_at`) VALUES
(284577427, 0, 'Борис', NULL, 'borisbau', 'ru', 1, NULL, '2024-01-16 15:24:52', '2024-01-16 15:25:06'),
(394007279, 0, 'Рустем', NULL, NULL, 'ru', NULL, NULL, '2023-12-28 04:34:12', '2023-12-28 04:34:35'),
(784071373, 0, 'Шамиль', 'Султанов', NULL, 'en', NULL, NULL, '2023-12-28 04:38:29', '2023-12-28 04:38:29'),
(822442327, 0, 'Vitas', NULL, 'backendweb', 'ru', NULL, NULL, '2023-12-28 00:36:47', '2024-02-11 17:05:38'),
(5418469385, 0, 'V', NULL, 'phpmaxpro', 'ru', NULL, NULL, '2023-12-27 23:29:44', '2024-01-16 21:02:59');

-- --------------------------------------------------------

--
-- Структура таблицы `bot_user_chat`
--

CREATE TABLE `bot_user_chat` (
  `user_id` bigint NOT NULL COMMENT 'Unique user identifier',
  `chat_id` bigint NOT NULL COMMENT 'Unique user or chat identifier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `bot_user_chat`
--

INSERT INTO `bot_user_chat` (`user_id`, `chat_id`) VALUES
(284577427, 284577427),
(394007279, 394007279),
(784071373, 784071373),
(822442327, 822442327),
(5418469385, 5418469385);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `files`
--

CREATE TABLE `files` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `log_activities`
--

CREATE TABLE `log_activities` (
  `id` int UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `log_activities`
--

INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Установлен аварийный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-11 23:50:48', '2024-01-11 23:50:48'),
(3, 'Установлен штатный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-11 23:51:01', '2024-01-11 23:51:01'),
(4, 'Запись \"Новая запись в блоге\" добавлена в блог', 'https://theoda.ru/administrator/blog_store', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-11 23:59:22', '2024-01-11 23:59:22'),
(5, 'Статус пользователя ID 12\" изменен на 0', 'https://theoda.ru/administrator/user_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-12 00:06:59', '2024-01-12 00:06:59'),
(6, 'Активен', 'https://theoda.ru/administrator/user_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-12 00:08:13', '2024-01-12 00:08:13'),
(7, 'Статус пользователя ID 12 изменен на Активен', 'https://theoda.ru/administrator/user_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-12 00:09:05', '2024-01-12 00:09:05'),
(8, 'Статус пользователя ID12 изменен на Неактивен', 'https://theoda.ru/administrator/user_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-12 00:09:28', '2024-01-12 00:09:28'),
(9, 'Платежный статус заявки №18\" изменен на ', 'https://theoda.ru/administrator/order_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-12 00:10:05', '2024-01-12 00:10:05'),
(10, 'Статус заявки №18\" изменен на \"Новая\"', 'https://theoda.ru/administrator/order_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-12 00:13:47', '2024-01-12 00:13:47'),
(11, 'Статус заявки №18\" изменен на \"В работе\"', 'https://theoda.ru/administrator/order_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-12 00:14:01', '2024-01-12 00:14:01'),
(12, 'Статус заявки №18 изменен на \"Завершена\"', 'https://theoda.ru/administrator/order_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-12 00:15:35', '2024-01-12 00:15:35'),
(13, 'Платежный статус заявки №18\" изменен на Не оплачена', 'https://theoda.ru/administrator/order_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-12 00:15:42', '2024-01-12 00:15:42'),
(14, 'Платежный статус заявки №18\" изменен на Не оплачена', 'https://theoda.ru/administrator/order_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-12 00:16:11', '2024-01-12 00:16:11'),
(15, 'Платежный статус заявки №18\" изменен на Оплачена', 'https://theoda.ru/administrator/order_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-12 00:16:58', '2024-01-12 00:16:58'),
(16, 'Авторизация', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-12 00:20:57', '2024-01-12 00:20:57'),
(17, 'Создана заявка на регистрацию произведения', 'https://theoda.ru/orders', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-12 00:26:49', '2024-01-12 00:26:49'),
(18, 'Заявка №29 изменена', 'https://theoda.ru/orders/update', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-12 00:36:35', '2024-01-12 00:36:35'),
(19, 'Отправлено сообщение пользователю ВКонтакте. ID : 786738905', 'https://theoda.ru/administrator/sendmessage', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-12 00:38:20', '2024-01-12 00:38:20'),
(20, 'Запись в блоге \"Новая запись в блоге\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-12 00:38:48', '2024-01-12 00:38:48'),
(21, 'Отправлено сообщение пользователю ВКонтакте. ID : 556664831', 'https://theoda.ru/administrator/sendmessage', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-12 06:19:18', '2024-01-12 06:19:18'),
(22, 'Запись в блоге \"Новая запись в блоге\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-12 08:16:49', '2024-01-12 08:16:49'),
(23, 'Установлен аварийный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-12 08:17:06', '2024-01-12 08:17:06'),
(24, 'Установлен штатный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-12 08:17:09', '2024-01-12 08:17:09'),
(25, 'Отправлено сообщение пользователю в телеграм. ID : 5418469385', 'https://theoda.ru/administrator/sendmessage', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-14 11:11:55', '2024-01-14 11:11:55'),
(26, 'Запись в блоге \"Что такое патент?\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-14 15:11:36', '2024-01-14 15:11:36'),
(27, 'Запись в блоге \"Что такое патент?\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-14 15:12:48', '2024-01-14 15:12:48'),
(28, 'Запись в блоге \"Что такое патент?\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-14 15:13:45', '2024-01-14 15:13:45'),
(29, 'Отправлено сообщение пользователю в телеграм. ID : 5418469385', 'https://theoda.ru/administrator/sendmessage', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-14 16:47:34', '2024-01-14 16:47:34'),
(30, 'Отправлено сообщение пользователю ВКонтакте. ID : 556664831', 'https://theoda.ru/administrator/sendmessage', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-14 16:48:19', '2024-01-14 16:48:19'),
(31, 'Установлен аварийный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-15 10:17:40', '2024-01-15 10:17:40'),
(32, 'Установлен штатный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-15 11:03:11', '2024-01-15 11:03:11'),
(33, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-15 11:35:16', '2024-01-15 11:35:16'),
(34, 'Заявка №29 изменена', 'https://theoda.ru/orders/update', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-15 11:36:10', '2024-01-15 11:36:10'),
(35, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-15 20:31:36', '2024-01-15 20:31:36'),
(36, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-16 06:33:14', '2024-01-16 06:33:14'),
(37, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '185.253.40.120', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-17 05:47:59', '2024-01-17 05:47:59'),
(38, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '185.253.40.140', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', 11, '2024-01-17 19:34:33', '2024-01-17 19:34:33'),
(39, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '194.187.249.170', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', 11, '2024-01-17 23:26:23', '2024-01-17 23:26:23'),
(40, 'Отправлено сообщение пользователю в телеграм. ID : 5418469385', 'https://theoda.ru/administrator/sendmessage', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-18 09:33:49', '2024-01-18 09:33:49'),
(41, 'Отправлено сообщение пользователю в телеграм. ID : 284577427', 'https://theoda.ru/administrator/sendmessage', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-18 09:35:12', '2024-01-18 09:35:12'),
(42, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '194.187.249.170', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-18 18:46:46', '2024-01-18 18:46:46'),
(43, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '194.187.249.170', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-18 22:55:33', '2024-01-18 22:55:33'),
(44, 'Создана заявка на регистрацию ПО', 'https://theoda.ru/orders', 'POST', '194.187.249.170', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-19 01:03:38', '2024-01-19 01:03:38'),
(45, 'Установлен аварийный режим работы системы', 'https://theoda.ru/chd', 'POST', '194.187.249.170', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-19 01:34:34', '2024-01-19 01:34:34'),
(46, 'Установлен штатный режим работы системы', 'https://theoda.ru/chd', 'POST', '194.187.249.170', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-19 07:54:46', '2024-01-19 07:54:46'),
(47, 'Установлен аварийный режим работы системы', 'https://theoda.ru/chd', 'POST', '194.187.249.170', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-19 22:49:10', '2024-01-19 22:49:10'),
(48, 'Установлен штатный режим работы системы', 'https://theoda.ru/chd', 'POST', '194.187.249.170', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-19 22:49:13', '2024-01-19 22:49:13'),
(49, 'Установлен аварийный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-20 13:04:51', '2024-01-20 13:04:51'),
(50, 'Установлен штатный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-22 17:42:46', '2024-01-22 17:42:46'),
(51, 'Установлен аварийный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-22 17:42:47', '2024-01-22 17:42:47'),
(52, 'Установлен штатный режим работы системы', 'https://theoda.ru/chd', 'POST', '185.253.40.11', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', 1, '2024-01-28 09:02:19', '2024-01-28 09:02:19'),
(53, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '185.253.40.11', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', 11, '2024-01-28 09:20:23', '2024-01-28 09:20:23'),
(54, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '45.153.231.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-28 13:26:43', '2024-01-28 13:26:43'),
(55, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '45.153.231.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-29 01:08:20', '2024-01-29 01:08:20'),
(56, 'Установлен аварийный режим работы системы', 'https://theoda.ru/chd', 'POST', '185.253.41.172', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', 1, '2024-01-29 03:21:08', '2024-01-29 03:21:08'),
(57, 'Установлен штатный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.50.134', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', 1, '2024-01-29 12:36:37', '2024-01-29 12:36:37'),
(58, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Mobile Safari/537.36', 11, '2024-01-29 14:02:10', '2024-01-29 14:02:10'),
(59, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '146.70.159.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-29 21:11:58', '2024-01-29 21:11:58'),
(60, 'Отправлено сообщение пользователю ВКонтакте. ID : 786738905', 'https://theoda.ru/administrator/sendmessage', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 1, '2024-01-29 22:19:38', '2024-01-29 22:19:38'),
(61, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '146.70.159.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 11, '2024-01-31 12:35:35', '2024-01-31 12:35:35'),
(62, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '79.110.53.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-07 14:01:17', '2024-02-07 14:01:17'),
(63, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-08 01:26:05', '2024-02-08 01:26:05'),
(64, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-08 01:28:35', '2024-02-08 01:28:35'),
(65, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-08 01:30:13', '2024-02-08 01:30:13'),
(66, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-08 01:30:37', '2024-02-08 01:30:37'),
(67, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-08 04:56:12', '2024-02-08 04:56:12'),
(68, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-10 04:20:50', '2024-02-10 04:20:50'),
(69, 'Отправлено сообщение пользователю в телеграм. ID : 822442327', 'https://theoda.ru/administrator/sendmessage', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-11 14:05:57', '2024-02-11 14:05:57'),
(70, 'Создана заявка на регистрацию произведения', 'https://theoda.ru/orders', 'POST', '178.176.83.98', 'Mozilla/5.0 (Linux; arm_64; Android 13; FNE-NX9) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.85 YaBrowser/24.1.2.85.00 SA/3 Mobile Safari/537.36', 17, '2024-02-11 18:16:24', '2024-02-11 18:16:24'),
(71, 'Заявка №33 изменена', 'https://theoda.ru/orders/update', 'POST', '178.176.83.98', 'Mozilla/5.0 (Linux; arm_64; Android 13; FNE-NX9) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.85 YaBrowser/24.1.2.85.00 SA/3 Mobile Safari/537.36', 17, '2024-02-11 18:18:03', '2024-02-11 18:18:03'),
(72, 'Заявка №33 изменена', 'https://theoda.ru/orders/update', 'POST', '178.176.83.98', 'Mozilla/5.0 (Linux; arm_64; Android 13; FNE-NX9) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.85 YaBrowser/24.1.2.85.00 SA/3 Mobile Safari/537.36', 17, '2024-02-11 18:23:05', '2024-02-11 18:23:05'),
(73, 'Заявка №33 изменена', 'https://theoda.ru/orders/update', 'POST', '178.176.83.98', 'Mozilla/5.0 (Linux; arm_64; Android 13; FNE-NX9) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.85 YaBrowser/24.1.2.85.00 SA/3 Mobile Safari/537.36', 17, '2024-02-11 18:23:19', '2024-02-11 18:23:19'),
(74, 'Заявка №33 изменена', 'https://theoda.ru/orders/update', 'POST', '178.176.83.98', 'Mozilla/5.0 (Linux; arm_64; Android 13; FNE-NX9) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.85 YaBrowser/24.1.2.85.00 SA/3 Mobile Safari/537.36', 17, '2024-02-11 18:29:16', '2024-02-11 18:29:16'),
(75, 'Заявка №33 изменена', 'https://theoda.ru/orders/update', 'POST', '178.176.83.98', 'Mozilla/5.0 (Linux; arm_64; Android 13; FNE-NX9) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.85 YaBrowser/24.1.2.85.00 SA/3 Mobile Safari/537.36', 17, '2024-02-11 18:29:25', '2024-02-11 18:29:25'),
(76, 'Заявка №33 изменена', 'https://theoda.ru/orders/update', 'POST', '178.176.83.98', 'Mozilla/5.0 (Linux; arm_64; Android 13; FNE-NX9) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.85 YaBrowser/24.1.2.85.00 SA/3 Mobile Safari/537.36', 17, '2024-02-11 18:29:35', '2024-02-11 18:29:35'),
(77, 'Заявка №33 изменена', 'https://theoda.ru/orders/update', 'POST', '178.176.83.98', 'Mozilla/5.0 (Linux; arm_64; Android 13; FNE-NX9) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.85 YaBrowser/24.1.2.85.00 SA/3 Mobile Safari/537.36', 17, '2024-02-11 18:29:53', '2024-02-11 18:29:53'),
(78, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-11 22:54:48', '2024-02-11 22:54:48'),
(79, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-11 22:55:01', '2024-02-11 22:55:01'),
(80, 'Заявка №29 изменена', 'https://theoda.ru/orders/update', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-11 23:46:18', '2024-02-11 23:46:18'),
(81, 'Статус заявки №28 изменен на \"Завершена\"', 'https://theoda.ru/administrator/order_save', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-11 23:57:10', '2024-02-11 23:57:10'),
(82, 'Статус заявки №32 изменен на \"Завершена\"', 'https://theoda.ru/administrator/order_save', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-11 23:57:38', '2024-02-11 23:57:38'),
(83, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '85.249.29.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 16, '2024-02-12 00:36:21', '2024-02-12 00:36:21'),
(84, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '83.151.2.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 9, '2024-02-12 00:41:45', '2024-02-12 00:41:45'),
(85, 'Создана заявка на регистрацию произведения', 'https://theoda.ru/orders', 'POST', '85.249.29.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 16, '2024-02-12 01:05:05', '2024-02-12 01:05:05'),
(86, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-12 01:08:31', '2024-02-12 01:08:31'),
(87, 'К заявке №34\" подгружен результат ', 'https://theoda.ru/administrator/order_save', 'POST', '85.249.26.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 1, '2024-02-12 03:27:11', '2024-02-12 03:27:11'),
(88, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-12 03:28:55', '2024-02-12 03:28:55'),
(89, 'Статус заявки №34 изменен на \"Завершена\"', 'https://theoda.ru/administrator/order_save', 'POST', '85.140.7.95', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 1, '2024-02-12 03:47:30', '2024-02-12 03:47:30'),
(90, 'Платежный статус заявки №34\" изменен на \"Оплачена\"', 'https://theoda.ru/administrator/order_save', 'POST', '85.140.7.95', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 1, '2024-02-12 03:47:36', '2024-02-12 03:47:36'),
(91, 'Создана заявка на регистрацию товарного знака', 'https://theoda.ru/orders', 'POST', '85.249.26.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 16, '2024-02-12 03:58:59', '2024-02-12 03:58:59'),
(92, 'К заявке №35\" подгружен результат ', 'https://theoda.ru/administrator/order_save', 'POST', '85.249.26.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 1, '2024-02-12 04:03:50', '2024-02-12 04:03:50'),
(93, 'Статус заявки №35 изменен на \"Завершена\"', 'https://theoda.ru/administrator/order_save', 'POST', '85.249.26.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 1, '2024-02-12 04:04:04', '2024-02-12 04:04:04'),
(94, 'Платежный статус заявки №35\" изменен на \"Оплачена\"', 'https://theoda.ru/administrator/order_save', 'POST', '85.249.26.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 1, '2024-02-12 04:04:07', '2024-02-12 04:04:07'),
(95, 'Установлен аварийный режим работы системы', 'https://theoda.ru/chd', 'POST', '85.249.26.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 16, '2024-02-12 04:14:25', '2024-02-12 04:14:25'),
(96, 'Установлен штатный режим работы системы', 'https://theoda.ru/chd', 'POST', '85.249.26.146', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', 16, '2024-02-12 04:14:28', '2024-02-12 04:14:28'),
(97, 'Статус заявки №28 изменен на \"В работе\"', 'https://theoda.ru/administrator/order_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-12 04:34:56', '2024-02-12 04:34:56'),
(98, 'Статус заявки №32 изменен на \"В работе\"', 'https://theoda.ru/administrator/order_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-12 04:35:06', '2024-02-12 04:35:06'),
(99, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-12 04:53:46', '2024-02-12 04:53:46'),
(100, 'Создана заявка на регистрацию произведения', 'https://theoda.ru/orders', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-12 12:02:27', '2024-02-12 12:02:27'),
(101, 'Статус заявки №36 изменен на \"Завершена\"', 'https://theoda.ru/administrator/order_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-12 12:02:45', '2024-02-12 12:02:45'),
(102, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-12 16:08:31', '2024-02-12 16:08:31'),
(103, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '83.151.2.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 9, '2024-02-13 10:59:20', '2024-02-13 10:59:20'),
(104, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '83.151.2.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 16, '2024-02-15 04:58:50', '2024-02-15 04:58:50'),
(105, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '83.151.2.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 18, '2024-02-15 05:40:41', '2024-02-15 05:40:41'),
(106, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '85.140.7.154', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Mobile/15E148 Safari/604.1', 18, '2024-02-15 05:41:45', '2024-02-15 05:41:45'),
(107, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '83.151.2.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 18, '2024-02-15 05:42:15', '2024-02-15 05:42:15'),
(108, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '178.204.186.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 16, '2024-02-17 18:57:14', '2024-02-17 18:57:14'),
(109, 'Статус пользователя ID19 изменен на \"Неактивен\"', 'https://theoda.ru/administrator/user_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-18 14:58:09', '2024-02-18 14:58:09'),
(110, 'Статус пользователя ID20 изменен на \"Неактивен\"', 'https://theoda.ru/administrator/user_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-18 14:58:17', '2024-02-18 14:58:17'),
(111, 'Статус пользователя ID21 изменен на \"Неактивен\"', 'https://theoda.ru/administrator/user_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-18 14:58:21', '2024-02-18 14:58:21'),
(112, 'Статус пользователя ID22 изменен на \"Неактивен\"', 'https://theoda.ru/administrator/user_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-18 14:58:50', '2024-02-18 14:58:50'),
(113, 'Статус пользователя ID23 изменен на \"Неактивен\"', 'https://theoda.ru/administrator/user_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-18 14:59:04', '2024-02-18 14:59:04'),
(114, 'Отправлено сообщение пользователю в чат. ID : 4705361389692', 'https://theoda.ru/administrator/sendmessage', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-18 15:00:43', '2024-02-18 15:00:43'),
(115, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-18 15:01:01', '2024-02-18 15:01:01'),
(116, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 5, '2024-02-19 00:53:02', '2024-02-19 00:53:02'),
(117, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 7, '2024-02-19 00:53:25', '2024-02-19 00:53:25'),
(118, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-19 00:53:44', '2024-02-19 00:53:44'),
(119, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 7, '2024-02-19 00:56:08', '2024-02-19 00:56:08'),
(120, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 11, '2024-02-19 01:11:24', '2024-02-19 01:11:24'),
(121, 'Запись в блоге \"Новая запись в блоге\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-19 05:57:44', '2024-02-19 05:57:44'),
(122, 'Запись в блоге \"Политика конфиденциальности\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-19 05:58:14', '2024-02-19 05:58:14'),
(123, 'Запись в блоге \"Политика конфиденциальности\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-19 05:58:45', '2024-02-19 05:58:45'),
(124, 'Запись в блоге \"Политика конфиденциальности\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-19 05:59:05', '2024-02-19 05:59:05'),
(125, 'Запись в блоге \"Политика конфиденциальности\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-19 06:00:12', '2024-02-19 06:00:12'),
(126, 'Запись в блоге \"Политика конфиденциальности\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-19 06:01:19', '2024-02-19 06:01:19'),
(127, 'Запись в блоге \"Политика конфиденциальности\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-19 06:05:31', '2024-02-19 06:05:31'),
(128, 'Запись в блоге \"Политика конфиденциальности\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-19 06:05:56', '2024-02-19 06:05:56'),
(129, 'Запись в блоге \"Политика конфиденциальности\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-19 06:06:29', '2024-02-19 06:06:29'),
(130, 'Запись \"Правовая информация\" добавлена в блог', 'https://theoda.ru/administrator/blog_store', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 1, '2024-02-19 08:10:28', '2024-02-19 08:10:28'),
(131, 'Запись \"Пользовательское соглашение\" добавлена в блог', 'https://theoda.ru/administrator/blog_store', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-19 11:02:47', '2024-02-19 11:02:47'),
(132, 'Установлен аварийный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-19 12:15:30', '2024-02-19 12:15:30'),
(133, 'Установлен штатный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-19 12:17:29', '2024-02-19 12:17:29'),
(134, 'Установлен аварийный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-19 12:17:31', '2024-02-19 12:17:31'),
(135, 'Установлен штатный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-19 12:17:33', '2024-02-19 12:17:33'),
(136, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-02-19 12:23:59', '2024-02-19 12:23:59'),
(137, 'Запись \"Введение в авторское право\" добавлена в блог', 'https://theoda.ru/administrator/blog_store', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-19 12:44:58', '2024-02-19 12:44:58'),
(138, 'Запись в блоге \"Введение в авторское право\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-19 12:45:18', '2024-02-19 12:45:18'),
(139, 'Запись в блоге \"Введение в авторское право\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-19 12:46:01', '2024-02-19 12:46:01'),
(140, 'Запись в блоге \"Введение в авторское право\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-19 12:48:10', '2024-02-19 12:48:10'),
(141, 'Запись в блоге \"Введение в авторское право\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-19 12:57:25', '2024-02-19 12:57:25'),
(142, 'Запись в блоге \"Введение в авторское право\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-19 12:57:58', '2024-02-19 12:57:58'),
(143, 'Запись в блоге \"Введение в авторское право\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-19 12:58:51', '2024-02-19 12:58:51'),
(144, 'Запись в блоге \"Введение в авторское право\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-19 13:00:12', '2024-02-19 13:00:12'),
(145, 'Запись в блоге \"Введение в авторское право\" сохранена', 'https://theoda.ru/administrator/blog_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-19 13:02:07', '2024-02-19 13:02:07'),
(146, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-02-19 19:24:41', '2024-02-19 19:24:41'),
(147, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-02-19 20:00:26', '2024-02-19 20:00:26'),
(148, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 16, '2024-02-19 20:29:14', '2024-02-19 20:29:14'),
(149, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 7, '2024-02-19 20:34:14', '2024-02-19 20:34:14'),
(150, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 7, '2024-02-19 20:42:21', '2024-02-19 20:42:21'),
(151, 'Запись \"Что такое Theoda\" добавлена в блог', 'https://theoda.ru/administrator/blog_store', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-20 07:03:24', '2024-02-20 07:03:24'),
(152, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', 11, '2024-02-20 10:12:38', '2024-02-20 10:12:38'),
(153, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '83.151.2.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 16, '2024-02-20 11:19:26', '2024-02-20 11:19:26'),
(154, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '83.151.2.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 16, '2024-02-20 12:12:47', '2024-02-20 12:12:47'),
(155, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-02-21 11:18:07', '2024-02-21 11:18:07'),
(156, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '85.249.25.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 16, '2024-02-22 07:19:10', '2024-02-22 07:19:10'),
(157, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '94.180.165.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 16, '2024-02-23 04:28:41', '2024-02-23 04:28:41'),
(158, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '94.180.165.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 16, '2024-02-23 06:21:42', '2024-02-23 06:21:42'),
(159, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-02-23 18:21:00', '2024-02-23 18:21:00'),
(160, 'Статус пользователя ID24 изменен на \"Неактивен\"', 'https://theoda.ru/administrator/user_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-25 17:49:59', '2024-02-25 17:49:59'),
(161, 'Статус пользователя ID25 изменен на \"Неактивен\"', 'https://theoda.ru/administrator/user_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-25 17:50:04', '2024-02-25 17:50:04'),
(162, 'Статус пользователя ID26 изменен на \"Неактивен\"', 'https://theoda.ru/administrator/user_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-25 17:50:10', '2024-02-25 17:50:10'),
(163, 'Статус пользователя ID27 изменен на \"Неактивен\"', 'https://theoda.ru/administrator/user_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-25 17:50:26', '2024-02-25 17:50:26'),
(164, 'Отправлено сообщение пользователю в чат. ID : 5744826542122', 'https://theoda.ru/administrator/sendmessage', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-25 17:53:53', '2024-02-25 17:53:53'),
(165, 'Отправлено сообщение пользователю в чат. ID : 5744826542122', 'https://theoda.ru/administrator/sendmessage', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-25 17:54:24', '2024-02-25 17:54:24'),
(166, 'Услуга \"Регистрация изобретения / полезной модели\" сохранена', 'https://theoda.ru/administrator/right_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-25 20:11:13', '2024-02-25 20:11:13'),
(167, 'Создана заявка на регистрацию промышленного образца', 'https://theoda.ru/orders', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-02-25 20:18:46', '2024-02-25 20:18:46'),
(168, 'Создана заявка на регистрацию товарного знака', 'https://theoda.ru/orders', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-02-25 20:36:48', '2024-02-25 20:36:48'),
(169, 'Создана заявка на регистрацию товарного знака', 'https://theoda.ru/orders', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-02-26 06:48:40', '2024-02-26 06:48:40'),
(170, 'Создана заявка на регистрацию товарного знака', 'https://theoda.ru/orders', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-02-26 08:13:48', '2024-02-26 08:13:48'),
(171, 'Статус заявки №40 изменен на \"В работе\"', 'https://theoda.ru/administrator/order_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-26 08:42:17', '2024-02-26 08:42:17'),
(172, 'К заявке №40\" подгружен результат ', 'https://theoda.ru/administrator/order_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-26 11:20:14', '2024-02-26 11:20:14'),
(173, 'К заявке №40\" подгружен результат ', 'https://theoda.ru/administrator/order_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-26 11:21:39', '2024-02-26 11:21:39'),
(174, 'Заявка №40 изменена', 'https://theoda.ru/orders/update', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-02-26 11:45:44', '2024-02-26 11:45:44'),
(175, 'Заявка №40 изменена', 'https://theoda.ru/orders/update', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-02-26 11:46:03', '2024-02-26 11:46:03'),
(176, 'Заявка №40 изменена', 'https://theoda.ru/orders/update', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-02-26 11:47:38', '2024-02-26 11:47:38'),
(177, 'Заявка №40 изменена', 'https://theoda.ru/orders/update', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-02-26 11:47:59', '2024-02-26 11:47:59'),
(178, 'Заявка №40 изменена', 'https://theoda.ru/orders/update', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-02-26 11:50:28', '2024-02-26 11:50:28'),
(179, 'Заявка №40 изменена', 'https://theoda.ru/orders/update', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-02-26 11:51:04', '2024-02-26 11:51:04');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `created_at`, `updated_at`) VALUES
(180, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '85.249.24.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 16, '2024-02-27 09:48:07', '2024-02-27 09:48:07'),
(181, 'Услуга \"Регистрация товарного знака\" сохранена', 'https://theoda.ru/administrator/right_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-02-27 09:51:29', '2024-02-27 09:51:29'),
(182, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '94.180.165.39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 16, '2024-02-28 05:56:50', '2024-02-28 05:56:50'),
(183, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '83.151.2.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 16, '2024-02-29 04:48:28', '2024-02-29 04:48:28'),
(184, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Linux; Android 12; M2004J19C Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/121.0.6167.180 Mobile Safari/537.36', 7, '2024-03-04 08:50:23', '2024-03-04 08:50:23'),
(185, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Linux; Android 12; M2004J19C Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/121.0.6167.180 Mobile Safari/537.36', 7, '2024-03-05 05:00:07', '2024-03-05 05:00:07'),
(186, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '83.151.2.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 16, '2024-03-07 05:29:20', '2024-03-07 05:29:20'),
(187, 'Установлен аварийный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-07 10:33:27', '2024-03-07 10:33:27'),
(188, 'Установлен штатный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-07 10:33:37', '2024-03-07 10:33:37'),
(189, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '79.110.53.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 11, '2024-03-07 10:38:49', '2024-03-07 10:38:49'),
(190, 'Статус заявки №29 изменен на \"В работе\"', 'https://theoda.ru/administrator/order_save', 'POST', '79.110.53.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-07 10:39:15', '2024-03-07 10:39:15'),
(191, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-10 11:30:03', '2024-03-10 11:30:03'),
(192, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-11 08:32:15', '2024-03-11 08:32:15'),
(193, 'Услуга \"Регистрация авторского права на произведение\" сохранена', 'https://theoda.ru/administrator/right_save', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-11 09:27:56', '2024-03-11 09:27:56'),
(194, 'Услуга \"Регистрация программы для ЭВМ\" сохранена', 'https://theoda.ru/administrator/right_save', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-11 09:28:05', '2024-03-11 09:28:05'),
(195, 'Услуга \"Регистрация промышленного образца\" сохранена', 'https://theoda.ru/administrator/right_save', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-11 09:28:09', '2024-03-11 09:28:09'),
(196, 'Услуга \"Регистрация изобретения / полезной модели\" сохранена', 'https://theoda.ru/administrator/right_save', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-11 09:28:13', '2024-03-11 09:28:13'),
(197, 'Услуга \"Регистрация товарного знака\" сохранена', 'https://theoda.ru/administrator/right_save', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-11 09:28:18', '2024-03-11 09:28:18'),
(198, 'Преимущество \"Опыт3\" сохранено', 'https://theoda.ru/administrator/advantage_save', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-12 09:52:51', '2024-03-12 09:52:51'),
(199, 'Преимущество \"Опыт3\" сохранено', 'https://theoda.ru/administrator/advantage_save', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-12 09:53:08', '2024-03-12 09:53:08'),
(200, 'Преимущество \"Опыт\" сохранено', 'https://theoda.ru/administrator/advantage_save', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-12 09:53:21', '2024-03-12 09:53:21'),
(201, 'Преимущество \"Опыт\" сохранено', 'https://theoda.ru/administrator/advantage_save', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-12 09:53:55', '2024-03-12 09:53:55'),
(202, 'Преимущество \"Профессионализм\" сохранено', 'https://theoda.ru/administrator/advantage_save', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-12 09:54:04', '2024-03-12 09:54:04'),
(203, 'Преимущество \"Оптимизация затрат\" сохранено', 'https://theoda.ru/administrator/advantage_save', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-12 09:54:14', '2024-03-12 09:54:14'),
(204, 'Преимущество \"Надежность\" сохранено', 'https://theoda.ru/administrator/advantage_save', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-12 09:54:25', '2024-03-12 09:54:25'),
(205, 'Преимущество \"Проактивность\" сохранено', 'https://theoda.ru/administrator/advantage_save', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-12 09:54:34', '2024-03-12 09:54:34'),
(206, 'Преимущество \"Качество услуг\" сохранено', 'https://theoda.ru/administrator/advantage_save', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-12 09:54:44', '2024-03-12 09:54:44'),
(207, 'Текстовый блок \"Текстовый блок\" сохранен', 'https://theoda.ru/administrator/textblock_save', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-12 10:22:19', '2024-03-12 10:22:19'),
(208, 'Установлен аварийный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-12 11:06:54', '2024-03-12 11:06:54'),
(209, 'Установлен штатный режим работы системы', 'https://theoda.ru/chd', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-12 11:06:58', '2024-03-12 11:06:58'),
(210, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-13 20:28:33', '2024-03-13 20:28:33'),
(211, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.149.217', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 11, '2024-03-15 12:08:42', '2024-03-15 12:08:42'),
(212, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '178.207.199.93', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 16, '2024-03-16 18:36:57', '2024-03-16 18:36:57'),
(213, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '91.221.6.210', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 11, '2024-03-18 00:49:48', '2024-03-18 00:49:48'),
(214, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '91.221.6.210', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-18 01:31:54', '2024-03-18 01:31:54'),
(215, 'Услуга \"Регистрация товарного знака\" сохранена', 'https://theoda.ru/administrator/right_save', 'POST', '91.221.6.210', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-18 01:32:53', '2024-03-18 01:32:53'),
(216, 'Установлен аварийный режим работы системы', 'https://theoda.ru/chd', 'POST', '91.221.6.210', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-18 01:45:07', '2024-03-18 01:45:07'),
(217, 'Установлен штатный режим работы системы', 'https://theoda.ru/chd', 'POST', '91.221.6.210', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-18 01:45:17', '2024-03-18 01:45:17'),
(218, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '91.221.6.210', 'Mozilla/5.0 (Linux; Android 12; M2004J19C Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/122.0.6261.106 Mobile Safari/537.36', 11, '2024-03-18 03:10:32', '2024-03-18 03:10:32'),
(219, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '91.221.6.210', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', 11, '2024-03-18 03:11:37', '2024-03-18 03:11:37'),
(220, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '91.221.6.210', 'Mozilla/5.0 (Linux; Android 12; M2004J19C Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/122.0.6261.106 Mobile Safari/537.36', 11, '2024-03-18 03:16:12', '2024-03-18 03:16:12'),
(221, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '91.221.6.210', 'Mozilla/5.0 (Linux; Android 12; M2004J19C Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/122.0.6261.106 Mobile Safari/537.36', 11, '2024-03-18 03:38:14', '2024-03-18 03:38:14'),
(222, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '91.221.6.210', 'Mozilla/5.0 (Linux; Android 12; M2004J19C Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/122.0.6261.106 Mobile Safari/537.36', 11, '2024-03-18 03:51:11', '2024-03-18 03:51:11'),
(223, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '94.180.140.97', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 16, '2024-03-18 09:21:53', '2024-03-18 09:21:53'),
(224, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '94.180.140.97', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 16, '2024-03-19 04:07:19', '2024-03-19 04:07:19'),
(225, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '178.204.226.59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 16, '2024-03-19 17:48:10', '2024-03-19 17:48:10'),
(226, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-19 22:38:50', '2024-03-19 22:38:50'),
(227, 'Услуга \"Регистрация изобретения\" сохранена', 'https://theoda.ru/administrator/right_save', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-20 12:25:26', '2024-03-20 12:25:26'),
(228, 'Добавлена услуга \"Регистрация полезной модели\"', 'https://theoda.ru/administrator/right_store', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 1, '2024-03-20 12:26:07', '2024-03-20 12:26:07'),
(229, 'Создана заявка на регистрацию произведения', 'https://theoda.ru/orders', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-21 03:17:22', '2024-03-21 03:17:22'),
(230, 'Создана заявка на регистрацию произведения', 'https://theoda.ru/orders', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-21 03:23:23', '2024-03-21 03:23:23'),
(231, 'Создана заявка на регистрацию произведения', 'https://theoda.ru/orders', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-21 03:27:29', '2024-03-21 03:27:29'),
(232, 'Создана заявка на регистрацию произведения', 'https://theoda.ru/orders', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-21 03:30:27', '2024-03-21 03:30:27'),
(233, 'Создана заявка на регистрацию произведения', 'https://theoda.ru/orders', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-21 03:31:24', '2024-03-21 03:31:24'),
(234, 'Создана заявка на регистрацию произведения', 'https://theoda.ru/orders', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-21 03:32:58', '2024-03-21 03:32:58'),
(235, 'Заявка №46 изменена', 'https://theoda.ru/orders/update', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-21 03:37:30', '2024-03-21 03:37:30'),
(236, 'Заявка №46 изменена', 'https://theoda.ru/orders/update', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-21 03:39:34', '2024-03-21 03:39:34'),
(237, 'Заявка №46 изменена', 'https://theoda.ru/orders/update', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-21 03:40:37', '2024-03-21 03:40:37'),
(238, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '94.180.140.97', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 16, '2024-03-21 14:01:32', '2024-03-21 14:01:32'),
(239, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '83.151.2.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 16, '2024-03-22 04:16:37', '2024-03-22 04:16:37'),
(240, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-27 00:36:43', '2024-03-27 00:36:43'),
(241, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Linux; Android 12; M2004J19C Build/SP1A.210812.016; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/122.0.6261.120 Mobile Safari/537.36', 11, '2024-03-28 14:45:56', '2024-03-28 14:45:56'),
(242, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '91.221.6.155', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-03-30 15:28:46', '2024-03-30 15:28:46'),
(243, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-04-03 17:06:55', '2024-04-03 17:06:55'),
(244, 'Отправлено сообщение пользователю в чат. ID : 4885981063299', 'https://theoda.ru/administrator/sendmessage', 'POST', '109.254.50.134', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Mobile Safari/537.36', 1, '2024-04-04 03:21:42', '2024-04-04 03:21:42'),
(245, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 YaBrowser/24.1.0.0 Safari/537.36', 11, '2024-04-17 16:52:07', '2024-04-17 16:52:07'),
(246, 'Авторизация пользователя', 'https://theoda.ru/login', 'POST', '109.254.50.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 YaBrowser/24.4.0.0 Safari/537.36', 11, '2024-05-09 10:03:33', '2024-05-09 10:03:33');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2023_12_19_132329_create_orders_table', 2),
(6, '2023_12_19_134312_create_orders_table', 3),
(7, '2023_12_19_135525_create_orders_table', 4),
(8, '2023_12_19_144537_create_orders_table', 5),
(27, '2014_10_12_000000_create_users_table', 6),
(28, '2014_10_12_100000_create_password_resets_table', 6),
(29, '2019_08_19_000000_create_failed_jobs_table', 6),
(30, '2019_12_14_000001_create_personal_access_tokens_table', 6),
(31, '2023_12_19_144837_create_orders_table', 6),
(32, '2023_12_22_000000_create_administrators_table', 6),
(33, '2023_12_22_000000_create_operators_table', 6),
(34, '2023_12_22_233621_create_rights_table', 6),
(35, '2023_12_23_014008_migration_name', 6),
(36, '2023_12_23_020724_create_profiles_table', 6),
(38, '2021_06_14_171118_create_telegram_bot_structure', 7),
(39, '2022_02_18_175100_update_to_0.75.0', 7),
(40, '2022_04_24_175700_update_to_0.77.0', 7),
(41, '2022_10_04_221900_update_to_0.78.0', 7),
(42, '2022_11_11_130500_update_to_0.80.0', 7),
(43, '2023_05-07_101600_update_to_0.81.0', 7),
(44, '2023_12_29_125425_create_posts_table', 8),
(45, '2023_12_26_063237_create_logs_table', 9),
(46, '2024_01_11_174011_create_settings_table', 10),
(47, '2024_01_12_022151_create_log_activity_table', 11),
(48, '2024_01_15_110328_create_payments_table', 12),
(49, '2024_03_12_095036_create_advantages_table', 13),
(50, '2024_03_12_130615_create_textblocks_table', 14),
(51, '2014_10_12_100000_create_password_reset_tokens_table', 15);

-- --------------------------------------------------------

--
-- Структура таблицы `operators`
--

CREATE TABLE `operators` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `profile_id` int NOT NULL,
  `type_order` int UNSIGNED NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `pay_status` int NOT NULL DEFAULT '0',
  `type_z` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grazhd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vidp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ogrnip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snils` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ul_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inn2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ogrn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_ruk_org` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fio_ruk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descr` text COLLATE utf8mb4_unicode_ci,
  `date_s` date DEFAULT NULL,
  `date_p` date DEFAULT NULL,
  `mesto_p` text COLLATE utf8mb4_unicode_ci,
  `soavt` text COLLATE utf8mb4_unicode_ci,
  `passp` text COLLATE utf8mb4_unicode_ci,
  `uraddr` text COLLATE utf8mb4_unicode_ci,
  `uraddr2` text COLLATE utf8mb4_unicode_ci,
  `kor_addr` text COLLATE utf8mb4_unicode_ci,
  `kor_addr2` text COLLATE utf8mb4_unicode_ci,
  `per_tov` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slov_oboz` text COLLATE utf8mb4_unicode_ci,
  `izo_oboz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_prom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descr_po` text COLLATE utf8mb4_unicode_ci,
  `addr_prozh` text COLLATE utf8mb4_unicode_ci,
  `addr_prozh2` text COLLATE utf8mb4_unicode_ci,
  `gos_mun_contract` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_contract` date DEFAULT NULL,
  `num_contract` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fio_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_prom` text COLLATE utf8mb4_unicode_ci,
  `izo_izd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `izo_chert` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dolzh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_reestr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_copyright_holders_u` int DEFAULT NULL,
  `count_copyright_holders_f` int DEFAULT NULL,
  `all_f_authors` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `osnovanie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `osnovanie_inoe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_ur_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fam2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otch2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inn3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_evm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_sozd` text COLLATE utf8mb4_unicode_ci,
  `is_world` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iw2_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iw_year` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `naznach` text COLLATE utf8mb4_unicode_ci,
  `lp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_authors` int DEFAULT NULL,
  `date_r_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snils2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passp2` text COLLATE utf8mb4_unicode_ci,
  `kotv` text COLLATE utf8mb4_unicode_ci,
  `name_izopm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `izopm_1` text COLLATE utf8mb4_unicode_ci,
  `izopm_2` text COLLATE utf8mb4_unicode_ci,
  `izopm_3` text COLLATE utf8mb4_unicode_ci,
  `izopm_4` text COLLATE utf8mb4_unicode_ci,
  `izopm_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `izopm_6` text COLLATE utf8mb4_unicode_ci,
  `doverka` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_book` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `profile_id`, `type_order`, `status`, `pay_status`, `type_z`, `fam`, `name`, `otch`, `grazhd`, `inn`, `vidp`, `ogrnip`, `snils`, `phone`, `email`, `ul_name`, `inn2`, `ogrn`, `phone2`, `email2`, `name_ruk_org`, `fio_ruk`, `descr`, `date_s`, `date_p`, `mesto_p`, `soavt`, `passp`, `uraddr`, `uraddr2`, `kor_addr`, `kor_addr2`, `per_tov`, `slov_oboz`, `izo_oboz`, `name_prom`, `descr_po`, `addr_prozh`, `addr_prozh2`, `gos_mun_contract`, `date_contract`, `num_contract`, `fio_author`, `desc_prom`, `izo_izd`, `izo_chert`, `dolzh`, `personal_data`, `num_reestr`, `count_copyright_holders_u`, `count_copyright_holders_f`, `all_f_authors`, `osnovanie`, `osnovanie_inoe`, `opf`, `p_ur_name`, `fam2`, `name2`, `otch2`, `inn3`, `name_evm`, `year_sozd`, `is_world`, `iw2_country`, `iw_year`, `naznach`, `lp`, `size_c`, `count_authors`, `date_r_author`, `snils2`, `passp2`, `kotv`, `name_izopm`, `izopm_1`, `izopm_2`, `izopm_3`, `izopm_4`, `izopm_5`, `izopm_6`, `doverka`, `result`, `created_at`, `updated_at`, `file_book`) VALUES
(29, 11, 28, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'пародия на лунную сонату.', '2024-01-04', '2024-01-04', 'соц. сеть Контакте', 'Бетховен', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file-17053293702773.jpg', NULL, '2024-01-04 16:08:15', '2024-03-07 10:39:15', NULL),
(30, 11, 28, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Описание произведения', '2024-01-06', '2024-01-06', 'Место публикации', 'Соавторы', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-06 17:51:52', '2024-01-06 17:51:52', NULL),
(31, 11, 28, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Описание произведения', '2024-01-12', '2024-01-12', 'Место публикации', 'Соавторы', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-12 00:26:49', '2024-01-12 00:26:49', NULL),
(32, 11, 28, 1, 1, 0, NULL, NULL, NULL, NULL, 'РФ', '321321321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p1', NULL, NULL, 'Иванов Иван Иванович', NULL, NULL, NULL, NULL, 'pd1', NULL, 1, 1, 'on', 'o1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'База данных \"Глобальный розыск\"', '2020', 'iw1', NULL, NULL, 'поиск/розыск', 'C++', '1024', 1, '2024-01-19', '31321321', 'Данные паспорта', 'Краткое описание творческого вклад', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-19 01:03:38', '2024-02-12 04:35:06', NULL),
(34, 16, 30, 0, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Люди любят лес', '2024-02-12', '2024-02-12', 'Казань', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file-17077192311006.pdf', '2024-02-12 01:05:05', '2024-02-12 03:47:36', NULL),
(35, 16, 31, 3, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '31', 'ого', 'file-17077211391949.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file-1707721430172.pdf', '2024-02-12 03:58:59', '2024-02-12 04:04:07', NULL),
(36, 11, 28, 0, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Описание произведения', '2024-02-12', '2024-02-12', 'Место публикации', 'Соавторы', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-12 12:02:27', '2024-02-12 12:02:45', NULL),
(39, 11, 32, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Перечень товаров и/или услуг', 'Словесное обозначение', 'file-17089409203097.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-26 06:48:40', '2024-02-26 06:48:40', NULL),
(40, 11, 28, 4, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'file-17089588797984.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Название изобретения/полезной модели', 'Область техники', 'Укажите известные аналоги', 'Укажите решаемую техническую проблему', 'Сущность созданного технического решения', 'file-17089590282177.jpg', 'Принцип работы', 'file-17089590648997.jpg', 'file-17089572996306.jpg', '2024-02-26 08:13:48', '2024-02-26 11:51:04', NULL),
(46, 11, 28, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ghghghkghjkgh', '2024-03-21', '2024-03-21', 'ghjkghjkgh', 'jkghjkghj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-21 03:32:58', '2024-03-21 03:40:44', '');

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
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `order_id` int NOT NULL,
  `status` int NOT NULL,
  `amount` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `order_id`, `status`, `amount`, `created_at`, `updated_at`) VALUES
(1, 5, 28, 0, 100, '2024-01-15 14:04:27', '2024-01-15 14:04:27'),
(2, 11, 29, 1, 100, '2024-01-15 14:04:27', '2024-01-18 13:24:56'),
(3, 11, 30, 1, 100, '2024-01-15 14:07:39', '2024-01-18 13:22:32'),
(4, 11, 31, 1, 100, '2024-01-15 14:07:39', '2024-01-18 13:26:26');

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `name`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Интеллектуальная собственность в сфере маркетинговых и социальных технологий', NULL, '<p><b>Интеллектуальная собственность и обучение</b></p><p>Сфера обучения существовала с незапамятных времен. На глиняных шумерских табличках, египетских папирусах и новгородских берестяных грамотах мы находим образцы\r\nвычислений и геометрических выкладок. Одной из первых русских печатных книг была «Арифметика» Мегницкого, а важнейшим лозунгом Советской России стал известный призыв «Учиться, учиться и учиться!».</p><p class=\"MsoNormal\" style=\"\">Современные технологии обучения отличаются от прошлых, в основном, широким использованием\r\nлегкодоступной и многообразной информации, а также наглядным видеосопровождением\r\nобучающих текстов.</p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Если\r\nеще совсем недавно для получения нужных сведений приходилось долго копаться в\r\nсправочниках и поисковых каталогах библиотек, а для представления схем или\r\nрисунков в классе использовать мел и доску, то сейчас к нашим услугам самые\r\nразнообразные электронные энциклопедии и поисковые системы, воспринимающие\r\nголосовые вопросы. При этом, крупнейшие обучающие центры широко используют\r\nинтеллектуальную собственность для защиты своих методов обучения.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Какие\r\nже виды интеллектуальной собственности можно использовать в технологиях\r\nобучения? Ведь и электронные экраны, и поисковые системы давно известны и\r\nизобретались они вовсе не для целей обучения!<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Одной\r\nиз форм интеллектуальной собственности в сфере обучения являются базы данных.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Базой\r\nданных называется подобранный по определенному признаку информационный\r\nматериал, сгруппированный таким образом, чтобы его можно было найти и\r\nобработать на компьютере.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Соответствующая\r\nэтим требованиям информационная подборка является объектом интеллектуальной\r\nсобственности и охраняется по факту своего создания. При этом на нее можно\r\nполучить свидетельство, хотя это и не обязательно.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Другой\r\nформой интеллектуальной собственности в сфере образования является литературное\r\nили научное произведение: научный труд, методическое пособие, учебник.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Обучающая\r\nорганизация, институт или школа, обладающая уникальными базами данных,\r\nсодержащими обучающие программы, а также авторскими правами на\r\nспециализированные учебники и пособия, конечно же, обладает конкурентными преимуществами\r\nперед организациями, не имеющими подобной интеллектуальной собственности.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Достаточно\r\nотметить такие центры обучения, как Кембриджский и Оксфордский университеты в\r\nАнглии, МГУ, ИТМО и Высшую школу экономики в России, обладающие знаменитыми\r\nавторскими курсами и уникальными базами данных, чтобы убедиться в важности\r\nинтеллектуальной собственности в сфере обучения.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><br></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" align=\"center\" style=\"text-align: left; \"><span style=\"line-height: 107%;\"><b>Интеллектуальная\r\nсобственность в рекламе</b></span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: left; \"><span style=\"line-height: 107%;\"><b><o:p></o:p></b></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Каких\r\nтолько патентов не существует в сфере рекламы! Запатентовано размещение рекламы\r\nна игрушках, сувенирах, подарках, салфетках, одноразовой посуде, кассовых\r\nлентах, на дорожных указателях и табличках с названиями улиц, то есть во всех\r\nмыслимых и немыслимых местах. Попадаются и недобросовестные патенты, полученные\r\nс явными нарушениями патентного законодательства.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Например,\r\nсуществует несколько десятков патентов на способы проведения лотереи или способ\r\nигры, несмотря на то, что в основном своде законов по интеллектуальной\r\nсобственности – Гражданском кодексе прописано, что «не являются изобретениями, в\r\nчастности, правила и методы игр».<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">В\r\nкачестве примера спорного патента в сфере рекламы можно привести печально\r\nизвестный патент на «Средство для рекламы», патентообладателю которого удалось\r\nприобрести исключительное право на размещение рекламы в лифтах.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><br></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Формула\r\nэтого изобретения выглядит приблизительно так:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">«Средство\r\nдля рекламы, представляющее собой щит для размещения рекламной информации,\r\nотличающееся тем, что оно расположено внутри кабины лифта с возможностью\r\nознакомления с рекламной информацией пассажиром во время движения кабины лифта\r\nи с возможностью замены на щите информационных сообщений посредством их\r\nобновления».</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><br></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Обладая\r\nтаким блокирующим патентом, его обладатель, компания Rayman Enterprises, за\r\nфиксированную плату по лицензионным договорам разрешала использовать свое\r\n«новшество» другим рекламным агентствам, занимающимся размещением рекламы в\r\nлифтах. В базе данных Роспатента зарегистрировано около 100 таких договоров.\r\nСумма платежей в пользу компании составляла около 1 млн. руб. в месяц.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Этот\r\nпример представляет собой случай, когда произошло необоснованное расширение\r\nправ патентообладателя широко распространенной и простой технологии.<br><br></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">К\r\nсчастью в этом случае справедливость восторжествовала и коса нашла на камень! В\r\n2010 году компания - патентообладатель предъявила свои претензии и требования\r\nвыплат к компании Advance Group – крупнейшему рекламному оператору гостиниц и\r\nотелей.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Advance\r\nGroup подала в палату по патентным спорам Роспатента возражение против выдачи\r\nпатента РФ на это изобретение. Спор был выигран, а патент аннулирован, т.е.\r\nпрекратил свое действие. С этого момента любые рекламные агентства смогли\r\nбесплатно размещать рекламу в любых лифтах, конечно, с позволения охранника или\r\nконсьержа.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Можно\r\nпривести и обратный пример – брендмобили. Это - небольшие автомобили,\r\nвыполняющие функцию носителей рекламы. В Петербурге они появились в 2004году, а\r\nуже в 2006 году их бизнес развился настолько, что пять компаний с автопарком\r\n50-60 машин в совокупности зарабатывали около 3 млн.$ ~ 92 ~ в год. По оценке рекламодателей\r\n– продуктовых магазинов и салонов связи, одна подобная машина служила хорошей\r\nальтернативой 30–50 статичным щитам наружной рекламы. Брендмобили не стали\r\nпатентовать, да и вряд ли бы это удалось. Бренд - компании и так захватили и\r\nподелили между собой рынок.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Однако,\r\nих радость была недолгой. Брендмобили были запрещенные новым законом \"О\r\nрекламе\", запретившим передвижные рекламные щиты, создающие помехи\r\nдвижению городского транспорта. Но владельцы брендмобилей быстро\r\nсориентировались в новой обстановке и превратили их из мобильных конструкций в\r\nстационарные, припаркованные на улицах города. Кстати, при умелом составлении\r\nзаявки несложно получить патенты на различные варианты средств передвижной\r\nрекламы. Например, на крепление рекламного щита к багажнику автомобиля. Формула\r\nизобретения может выглядеть так:</span></p><p class=\"MsoNormal\" style=\"\">«Автомобильный\r\nбагажник, устанавливаемый на крыше автомобиля, отличающийся тем, что он\r\nпредставляет собой прямоугольную панель, с возможностью ее поворота в\r\nвертикальное положение.<br></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">(Тот\r\nфакт, что на панели размещена реклама можно не указывать в формуле, достаточно\r\nупомянуть об этом в описании).<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">На\r\nэто же изобретение можно составить и совсем другую формулу – на применение:\r\n«Применение багажника автомобиля, установленного на его крыше и снабженного элементами\r\nкрепления багажа, для крепления рекламного носителя».<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Другой\r\nпример – рекламные щиты большого размера для размещения наружной рекламы,\r\nустанавливаемые вдоль трасс и улиц – билборды.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Идея\r\nиспользования для рекламы больших, заметных издалека щитов, родилась\r\nдавным-давно, в Древнем Египте, где таким образом хозяева беглых рабов обещали\r\nнаграду за их поимку. После изобретения цветной печати появились красочные\r\nплакаты, которые в основном, рекламировали театральные или цирковые\r\nпредставления.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Как\r\nуже говорилось ранее, запатентовать то, что давно хорошо известно, нельзя. Тем\r\nне менее, можно найти множество патентов на рекламные щиты,\r\nрекламно-информационные конструкции и т.п. В чем же дело? Опять\r\nнедобросовестное патентование? Вовсе нет! В данном случае изобретатели\r\nпатентовали не саму идею рекламных щитов, а их новые конструкции, способы\r\nизготовления, крепления и размещения. Некоторые из них весьма остроумны и могут\r\nбыть востребованы, например – сдвоенный билборд с поворотным механизмом,\r\nнапример, для установки на перекрестках и развилках дорог.</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Билборды,\r\nрекламные щиты в лифтах, афиши, брендмобили – вся эта наружная реклама стала\r\nнастолько привычной, что она мало кого способна удивить.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Поэтому\r\nпостоянно изобретаются новые способы рекламы, которые могут вызывать интерес у\r\nлюдей и привлекать их внимание.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Однако,\r\nдалеко не все социальные и маркетинговые технологии и методы удается защитить\r\nпатентом.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Тем\r\nне менее, для многих случаев, из этого положения есть выход – нужно хранить\r\nсвои изобретения в секрете. Конечно, Вы вправе спросить, причем здесь\r\nинтеллектуальная собственность? А при том, что многие секреты производства и\r\nмаркетинговых технологий также являются объектами интеллектуальной собственности.\r\nОни так и называются «секреты производства» или «ноу-хау».<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Согласно\r\nГражданскому кодексу РФ в качестве ноу-хау могут охраняться только вполне\r\nопределенные объекты:<o:p></o:p></span></p>\r\n\r\n<ol><li><span style=\"line-height: 107%;\">незапатентованные изобретения и полезные модели</span></li><li>способы осуществления хозяйственной деятельности</li></ol>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Если\r\nв первом случае мы вправе сами выбирать, патентовать свое изобретение или\r\nхранить его в секрете, то во втором случае выбора нет – только охрана в режиме\r\nноу-хау.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Формулировка\r\n«способы осуществления хозяйственной деятельности» дает возможность для защиты,\r\nнапример, таких маркетинговых технологий, как:<o:p></o:p></span></p>\r\n\r\n<ul><li><span style=\"line-height: 107%;\">способ привлечения клиентов,</span></li><li><span style=\"line-height: 107%;\">методика определения лояльности к компании тех или иных групп населения,</span></li><li><span style=\"line-height: 107%;\">методика прогноза покупательского спроса для конкретного вида продукции,</span></li><li><span style=\"line-height: 107%;\">способ поиска рыночной ниши для продажи конкретного продукта.<o:p></o:p></span></li></ul>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">При\r\nохране своей технологии в режиме ноу-хау, как и в авторском праве, не нужно\r\nполучать никаких охранных документов. Нужно только тщательно хранить в тайне\r\nсвой секрет. Так, например, секрет состава напитка «кока-кола» хранится в\r\nсекрете уже более ста лет и успешно работает!<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Право\r\nна использование технологии, охраняемой в режиме ноу-хау, можно передать\r\nзаинтересованным лицам по лицензионному договору также, как и в случае с\r\nдругими объектами интеллектуальной собственности.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">При\r\nэтом следует понимать, что далеко не все продукты и технологии можно сохранить\r\nв секрете.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Вернемся к примеру с\r\nбрендмобилями. Рекламный стенд на колесах – весьма удачная, а главное,\r\nприбыльная идея. Однако, как только в городе появились первые брендмобили, все\r\nжелающие могли перенять эту идею и составить конкуренцию первооткрывателям, что\r\nи было сделано. Техническое, организационное или маркетинговое решение, которое\r\nлежит на поверхности и понятно всем и каждому, сохранить в секрете невозможно.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><br></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" align=\"center\" style=\"text-align: left; \"><span style=\"line-height: 107%;\"><b>Интеллектуальная\r\nсобственность в сфере туризма</b></span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: left; \"><span style=\"font-size: 1rem;\">Важность\r\nсовременных социальных компьютерных технологий и гибкого, избирательного\r\nподхода к клиентам можно ярко продемонстрировать на примере знаменитого на весь\r\nмир старейшего туристического агенства «Томас Кук».</span><br></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Совсем\r\nнедавно, в конце 2019 года, эта фирма обанкротилась, накопив 2 млн. фунтов\r\nстерлингов долга, и полностью прекратила свою деятельность. Фирма,\r\nпридерживающаяся традиционного способа ведения бизнеса в течении ста пятидесяти\r\nлет, не смогла выдержать конкуренции со стороны онлайн - турагенств и\r\nавиакомпаний - лоукостеров.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Компания\r\n«Томас Кук» оказывала элитные туристические услуги комплексно, полным пакетом.\r\nДля нашего времени это стало неактуальным. Путешествовать начали не только богатеи,\r\nно и все, кому не лень. Для многих гораздо удобнее, дешевле и интереснее стало\r\nсамим выбирать себе жилье на сайте и заказывать его, например, через booking.\r\nПолный пакет туристических услуг стал уходить в прошлое.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Говоря\r\nо туристических услугах, нельзя не упомянуть о различных видах экзотического\r\nтуризма. К ним можно отнести, например:</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p>\r\n\r\n<ul><li style=\"\"><span style=\"line-height: 107%;\">пикник с шашлыком на Северном полюсе за 2 млн. руб.</span></li><li style=\"\"><span style=\"line-height: 107%;\">полет в космос за несколько млн. $,</span></li><li style=\"\"><span style=\"line-height: 107%;\">спуск под воду,</span></li><li style=\"\"><span style=\"line-height: 107%;\">ночевку в капсуле на отвесной скале,</span></li><li style=\"\"><span style=\"line-height: 107%;\">выживание или сафари в джунглях,</span></li><li style=\"\"><span style=\"line-height: 107%;\">купание с акулами и все, что может прейти в голову экзальтированным туристам.</span></li></ul>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Туроператоры\r\nпо всему миру стараются изо всех сил чтобы придумать что-нибудь новое, то, чего\r\nеще не предложили другие.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Не\r\nвсегда туроператоры, придумавшие новый вид экстремального туризма, могут\r\nполучить на него право монопольного использования. Никто не запатентует,\r\nнапример, поездку на ледоколе на северный полюс. Зато во многих других случаях\r\nпатентование вполне возможно.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Например,\r\nможно запатентовать отель-капсулу, установленную на отвесной скале. Упрощенная\r\nформула изобретения при этом будет выглядеть примерно следующим образом:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">«Помещение\r\nдля проживания людей со входом и окнами, установленное на основании,\r\nотличающееся тем, что основанием служит отвесная скальная порода».</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><br></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">В\r\nподобной ситуации можно также использовать формулу на способ:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">«Способ\r\nорганизации отдыха туристов, при котором группу туристов вначале доставляют к\r\nотелю, расположенному на отвесной скальной стене, ~ 96 ~ отличающийся тем, что\r\nтуристов поднимают с помощью альпинистского снаряжения к месту расположения\r\nотеля, затем оставляют их в отеле на время отдыха, а после этого опускают вниз\r\nс помощью наклонно натянутого троса».<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Напомним,\r\nчто если удается запатентовать новый способ туризма, то остальные туроператоры\r\nуже не смогут им воспользоваться и конкурентов в этой стране не будет.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><br></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" align=\"center\" style=\"text-align: left; \"><span style=\"line-height: 107%;\"><b>Интеллектуальная\r\nсобственность в индустрии моды</b></span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: left; \"><span style=\"line-height: 107%;\"><b><o:p></o:p></b></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Говоря\r\nо инновациях и изобретениях в сфере маркетинговых и социальных технологий,\r\nобязательно следует упомянуть об индустрии моды и развлечений.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">В\r\nмоде тоже широко распространены различные нововведения с целью любым способом\r\nпривлечь внимание покупателя. Покупатели же, в свою очередь, любят покупать\r\nнеобычные, неординарные товары либо для себя, чтобы выделиться, либо для\r\nподарков, чтобы удивить.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">А\r\nкак обстоят дела с патентной защитой в этой области?<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">В\r\nотличие от различных технологий маркетинга и обслуживания, одежду, обувь и\r\nразличные аксессуары довольно легко защитить с помощью патента на промышленный\r\nобразец.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Патент\r\nна промышленный образец обеспечивает ему такую же надежную защиту, как и патент\r\nна изобретение. Получить такой патент несложно, если внешний вид изделия\r\nявляется новым и оригинальным. Вместо формулы изобретения для описания\r\nпромышленного образца используется изображение его внешнего вида - рисунок или\r\nфотография. Чем оригинальнее внешний вид продукции, тем вероятнее, что патент\r\nна соответствующий промышленный образец будет выдан. Важным требованием к\r\nпромышленному образцу служит его воплощение в конкретном объекте. То есть, на\r\nпроцесс маникюра или на способ укладки волос патент на промышленный образец не\r\nвыдадут, однако, его могут выдать на оригинальные накладные ногти или заколки.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><br></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" align=\"center\" style=\"text-align: left; \"><span style=\"line-height: 107%;\"><b>Интеллектуальная\r\nсобственность в других областях сферы обслуживания</b></span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: left; \"><span style=\"line-height: 107%;\"><b><o:p></o:p></b></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Помимо\r\nперечисленных, существует еще много других важных сфер обслуживания:\r\nшоу-бизнес, гигиена тела, интернет - заказы с доставкой, сотовая связь,\r\nэлектронные платежи и прочее. Здесь мы не в состоянии подробно рассмотреть их\r\nособенности, хотя каждая из этих сфер занимает существенное место в\r\nудовлетворении определенных потребностей человека.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Например,\r\nсотовая связь, которая возникла всего лишь несколько десятилетий назад взамен\r\nпроводных телефонов, существенно изменила быт и общение ее пользователей.\r\nПостепенно сотовые телефоны переросли в смартфоны и для многих из нас стали\r\nнезаменимыми спутниками, чуть ли не друзьями.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Интеллектуальная\r\nсобственность в этой области удостоверяется десятками тысяч патентов на\r\nизобретения, полезные модели и промышленные образцы, а также свидетельствами на\r\nвсемирно известные товарные знаки. Так, например, в смартфонах фирм Apple и\r\nSamsung содержится порядка двухсот различных объектов интеллектуальной\r\nсобственности.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">То\r\nже самое можно сказать об электронных платежных системах и их аксессуарах.\r\nНаличные деньги или платежные чеки, которые еще совсем недавно были\r\nединственными средствами платежей, сегодня в большинстве стран уходят в прошлое\r\nи вскоре могут вообще исчезнуть из обращения. Монеты и ассигнации,\r\nсопровождающие человечество еще с античных времен, теперь становятся всего лишь\r\nдостоянием нумизматов.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Интеллектуальная\r\nсобственность в области электронных платежей также обеспечена многочисленными\r\nпатентами.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Упомянем\r\nеще одну бурно развивающуюся сферу обслуживания - интернет - услуги по выбору и\r\nзаказу самых разнообразных товаров.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">В\r\nпоследнее время по интернету можно заказать еду домой, забронировать отель в\r\nлюбой точке земного шара, заплатить за квартиру или детский садик, купить билет\r\nв театр, да и вообще, купить все, что только душа ни пожелает и что продается в\r\nинтернете. А что не продается – заказать!<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Многие\r\nиз этих новых технологий на первый взгляд, совсем не новы. Взять хотя бы\r\nзаказанную по интернету доставку еды вело – курьерами.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Но\r\nбольшинство современных компьютерных технологий в сфере обслуживания основано\r\nна новых подходах к работе с клиентами, которые либо запатентованы, либо\r\nохраняются как секреты производства.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><br></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><b>Бренды\r\nи товарные знаки</b></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><b><o:p></o:p></b></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Использование\r\nтак называемых брендов – широко известных названий фирм и их продуктов, а также\r\nизображений и слоганов, нельзя отнести непосредственно к сфере обслуживания,\r\nоднако, именно в ней они особенно популярны и приносят весомый доход.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Торговля\r\nбрендами является, пожалуй, наиболее характерным примером современных\r\nмаркетинговых технологий.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Превращение\r\nбренда в интеллектуальную собственность происходит путем получения охранного\r\nдокумента – свидетельства на товарный знак, характеризующий этот бренд.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Сам\r\nпо себе товарный знак не является ни новым техническим решением, ни инновацией.\r\nОднако, его использование для маркировки товаров может принести производителю\r\nсущественную прибыль. На оригинальный товарный знак выдается свидетельство,\r\nкоторое может действовать сколь угодно долго (в отличие от патентов). Никто\r\nдругой, кроме владельца товарного знака не вправе его использовать.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Владелец\r\nтоварного знака может размещать его на своем товаре или на упаковке, вывеске, в\r\nрекламных материалах и на рекламных носителях. Благодаря товарному знаку,\r\nпокупатель легко может отличить один товар от другого, привычный продукт от\r\nнового, любимый от нелюбимого.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Кроме\r\nэтого, товарный знак можно «сдать в аренду» и получать за это ежемесячные\r\nвыплаты. Многие крупные производители, такие, как Макдональдс или владельцы\r\nбрендов Пятерочка, Карусель и Перекресток, расширяют свои торговые сети не\r\nпутем создания филиалов и дочерних фирм, а путем привлечения независимых мелких\r\nпредпринимателей. Эти предприниматели фактически арендуют право использовать\r\nтоварный знак известного производителя и работают под его брендом. Вместе с\r\nтоварным знаком обычно передаются во временное пользование и другие объекты\r\nинтеллектуальной собственности: промышленные образцы, ноу-хау и др. Ну а\r\nпользователь выплачивает владельцу товарного знака ежемесячно компенсацию и\r\nвознаграждение.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\">Известный товарный знак, даже при передаче его во временное пользование, может стоить\r\nочень дорого. Так, например, компенсация за открытие магазина «Перекресток»\r\nсоставляет около 40 млн. руб., из которых значительную часть составляет\r\nстоимость товарного знака.</p>\r\n\r\n<p class=\"MsoNormal\">Вместе с товарным знаком нередко передаются и другие объекты интеллектуальной\r\nсобственности.</p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Например,\r\nМакдональдс передает по договору права на использование нескольких товарных\r\nзнаков, в том числе – объемных товарных знаков (стаканчики и гамбургер),\r\nпромышленный образец (костюм клоуна), коммерческое обозначение (вывеску) и различные\r\nноу-хау, и запатентованные технологии привлечения клиентов, например, такие,\r\nкак периодическая раздача подарков-сюрпризов.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Подведем\r\nитоги по данному параграфу. В сфере маркетинга, рекламы, общественного питания,\r\nрозничной торговли, туризма, обслуживания, моды, развлечений и тому подобного\r\nактивно используются самые разные объекты интеллектуальной собственности. Чаще\r\nвсего получение охранных документов - патентов и свидетельств - служит для защиты\r\nновых технологий и изделий от конкурентов. В некоторых случаях, например, при\r\nиспользовании товарных знаков, их можно выгодно продавать или сдавать в аренду\r\nза вознаграждение сразу нескольким пользователям.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><br></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><br></span></p><p></p>', 1, '2023-12-30 07:09:44', '2024-01-11 21:28:53');
INSERT INTO `posts` (`id`, `name`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Что такое патент?', NULL, '<b>Патент </b>представляет собой право, предоставляемое государством изобретателю, позволяющее последнему\r\nисключить других лиц из коммерческого использования изобретения на ограниченный\r\nсрок в обмен на раскрытие изобретения, с тем чтобы другие лица могли извлечь из\r\nнего пользу. Таким образом, раскрытие информации об изобретении является важным\r\nэлементом, который необходимо учитывать в ходе любой процедуры выдачи патента.\r\n\r\nЛица, ответственные за разработку политики, все в большей степени осознают важность патентов и\r\nнеобходимость разработки самостоятельной патентной политики. В 1990-х годах\r\nрастущее число политических руководителей новых экономически развитых стран\r\nосознали роль системы интеллектуальной собственности (включая патентную\r\nсистему) в качестве важного элемента институциональной инфраструктуры для\r\nпоощрения частных капиталовложений в научные исследования и\r\nопытно-конструкторские разработки, в частности, в промышленной и научной\r\nобластях.<p></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">&nbsp;</span>Залогом успешной\r\nпредпринимательской деятельности в большинстве случаев являются новаторство и\r\nкреативный подход. Однако сами по себе идеи не имеют большой ценности. Они\r\nдолжны развиваться, превращаться в инновационную продукцию или услуги и успешно\r\nкоммерциализироваться, с тем чтобы обеспечить предприятиям, в особенности малым\r\nи средним предприятиям (МСП), возможность извлекать выгоду из инноваций и\r\nтворческой деятельности. Патенты могут играть центральную роль в превращении\r\nноваторских идей и изобретений в конкурентоспособные товары, существенно\r\nувеличивающие объем прибыли. Предприятия могут также получать роялти,\r\nпредоставляя такие запатентованные изобретения на основе лицензии другим\r\nпредприятиям, которые располагают потенциалом для коммерциализации.</p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Это может обеспечить им\r\nприток доходов от изобретения или изобретений сотрудников предприятий без\r\nнеобходимости вкладывать средства в их коммерциализацию.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Преимущества\r\nпатентования изобретений можно кратко изложить следующим образом:</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p><ul><li style=\"\"><span style=\"line-height: 107%;\">исключительные\r\nправа – патенты обеспечивают исключительные права, позволяющие правообладателю\r\nиспользовать и эксплуатировать изобретение в течение двадцати лет начиная с\r\nдаты подачи патентной заявки;</span></li><li style=\"\"><span style=\"line-height: 107%;\">прочная позиция\r\nна рынке – благодаря этим исключительным правам вы можете воспрепятствовать\r\nтретьим лицам использовать запатентованное изобретение в коммерческом плане,\r\nпреодолевая, таким образом, конкуренцию, и утвердиться на рынке в качестве\r\nосновного действующего лица;</span></li><li style=\"\"><span style=\"line-height: 107%;\">более высокая\r\nрентабельность капиталовложений – затратив значительные средства и время на\r\nразработку инновационных товаров, правообладатель мог бы, благодаря этим\r\nисключительным правам, коммерциализировать изобретение и обеспечить себе, таким\r\nобразом, получение большей отдачи от своих капиталовложений;</span></li><li style=\"\"><span style=\"line-height: 107%;\">возможность\r\nпредоставить лицензию или продать изобретение: если вы решите не\r\nэксплуатировать патент самостоятельно, вы можете продать его или предоставить\r\nлицензию на его коммерциализацию другому предприятию, что станет источником\r\nдохода для правообладателя (т.е. для вас);</span></li><li style=\"\"><span style=\"line-height: 107%;\">усиление\r\nпозиции на переговорах – если ваше предприятие находится в процессе\r\nприобретения прав на использование патентов другого предприятия посредством\r\nлицензионного соглашения, ваш патентный портфель укрепит ваши позиции на\r\nпереговорах. Другими словами, ваши патенты могут представить значительный\r\nинтерес для предприятия, с которым вы ведете переговоры, и вы сможете заключить\r\nсоглашение о взаимном предоставлении лицензий, в соответствии с которым ваше\r\nпредприятие могло бы обменяться патентными правами с другим предприятием;</span></li><li style=\"\"><span style=\"line-height: 107%;\">позитивный\r\nимидж вашего предприятия – в глазах торговых партнеров, инвесторов, акционеров\r\nи клиентов патентный портфель может рассматриваться в качестве доказательства\r\nвысокого уровня экспертизы, специализации и технологического потенциала вашей\r\nкомпании. Это, возможно, окажется полезным в плане получения средств, поиска\r\nторговых партнеров и повышения авторитета вашей компании на рынке;</span></li><li style=\"\"><span style=\"line-height: 107%;\">если вы сами не\r\nзапатентуете ваши изобретения, это может сделать кто-то другой – в большинстве\r\nстран (за исключением Соединенных Штатов Америки), первое лицо или предприятие,\r\nподающее патентную заявку на какое-либо изобретение, будет иметь право на этот\r\nпатент. По сути дела это может означать, что, если вы не запатентуете ваши\r\nизобретения или если правообладатель не запатентует изобретения своих сотрудников,\r\nто какое-либо другое лицо, создавшее идентичное или эквивалентное изобретение\r\nпозднее, сможет это сделать и на законном основании вытеснить ваше предприятие\r\nс рынка, ограничить его деятельность рамками преждепользования там, где\r\nпатентное законодательство предусматривает такое исключение, или потребовать у\r\nправообладателя уплаты лицензионной пошлины за использование этого изобретения;</span></li><li style=\"\"><span style=\"line-height: 107%;\">если вы сами не\r\nпатентуете ваше изобретение, им воспользуются ваши конкуренты – если\r\nсоответствующий продукт будет иметь успех, то многие другие конкурирующие\r\nкомпании могут поддаться искушению производить аналогичный продукт, бесплатно\r\nиспользуя ваше изобретение. Более крупные предприятия могут извлечь выгоду из\r\nэкономии, обусловленной ростом масштабов производства с целью изготовления\r\nтовара при меньших затратах и составить вам конкуренцию за счет более низких\r\nрыночных цен. Это может существенным образом сократить долю вашего предприятия\r\nна рынке применительно к этому продукту. Даже малые конкурирующие предприятия\r\nсмогут изготовлять тот же продукт и продавать его по более низкой цене,\r\nпоскольку им не нужно будет возмещать расходы на научные исследования и\r\nопытно-конструкторские разработки, которые понес правообладатель.</span></li></ul><p><span style=\"line-height: 107%;\"><br></span></p><p class=\"MsoNormal\" style=\"\"><b><span style=\"line-height: 107%;\">&nbsp;</span><span style=\"line-height: 107%;\">Патентные заявки</span></b></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">На протяжении столетий\r\nво многих странах патентные права были обусловлены позитивным решением\r\nгосударства о выдаче патента. Для вынесения этого решения страны проводят\r\nэкспертизу и устанавливают действительность и легитимность притязаний на\r\nпатентную охрану.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><u>Краткое обсуждение\r\nпатентоспособного объекта<o:p></o:p></u></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Во-первых, для того\r\nчтобы воспользоваться патентной охраной, изобретение должно вписываться в рамки\r\n«патентоспособного» объекта.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Во-вторых, не каждый\r\nновый продукт или результат исследований может автоматически квалифицироваться\r\nв качестве «изобретения».<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Важно отметить, что,\r\nкак и в большинстве областей права, «объект» применительно к патентоспособности\r\nописывается путем определения областей, которые могут быть исключены из\r\nпатентоспособности. Может оказаться сложным в каждый данный момент определить\r\nприроду изобретений с точки зрения «того, что никогда не делалось раньше». Так,\r\nнапример, недавние достижения в области техники открыли дверь для многих новых\r\nвидов изобретений, о которых никто не подозревал много лет назад, в период,\r\nкогда общество создавало патентное право. Именно поэтому понятие\r\n«патентоспособного объекта» имеет широкую сферу охвата, которая не\r\nраспространяется на:<o:p></o:p></span></p><ul><li style=\"\"><span style=\"line-height: 107%;\">открытия субстанций\r\nили веществ, уже существующих в природе;<o:p></o:p></span></li><li style=\"\"><span style=\"line-height: 107%;\">научные теории и\r\nматематические методы;<o:p></o:p></span></li><li style=\"\"><span style=\"line-height: 107%;\">сорта растений,\r\nпороды животных, кроме микроорганизмов и биологических, по существу, способов\r\nвыращивания растений или животных, кроме небиологических и микробиологических\r\nспособов;<o:p></o:p></span></li><li style=\"\"><span style=\"line-height: 107%;\">схемы, правила или\r\nметоды организации производства, выполнение чисто умственных расчетов или игр;<o:p></o:p></span></li><li style=\"\"><span style=\"line-height: 107%;\">методы лечения людей\r\nили животных, а также способы диагностики, практикуемые в отношении людей или\r\nживотных (кроме продуктов, используемых в этих методах).</span></li></ul><p><span style=\"line-height: 107%;\"><br></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><b>Патентоспособность</b><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">В отношении\r\nпатентоспособности изобретений во всех областях техники патентное\r\nзаконодательство большинства стран устанавливает три основных критерия для\r\nопределения того, заслуживает ли заявленное изобретение получения патента.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Обычно законодательство\r\nбольшинства стран предписывает, чтобы изобретение представляло собой\r\n«патентоспособный объект» и чтобы оно:<o:p></o:p></span></p><ul><li style=\"\"><span style=\"line-height: 107%;\">обладало новизной;<o:p></o:p></span></li><li style=\"\"><span style=\"line-height: 107%;\">содержало\r\nизобретательский уровень (было «неочевидным»);<o:p></o:p></span></li><li style=\"\"><span style=\"line-height: 107%;\">являлось промышленно применимым\r\n(характеризовалось «полезностью» или было «полезным»).<o:p></o:p></span></li></ul><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Кроме того, большинство\r\nстран требуют, чтобы раскрытие изобретения в патентной заявке удовлетворяло\r\nопределенным стандартам.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Ниже приводится краткое\r\nописание требований к техническому раскрытию информации.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p><br></o:p></span></p><p class=\"MsoNormal\" style=\"\"><b style=\"font-size: 1rem;\">Техническое раскрытие\r\nизобретения</b><br></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Раскрытие изобретения\r\nдля широкой общественности информации является одним из важнейших аспектов\r\nпатентоспособности. Вкратце, государства предоставляют изобретателю право на\r\nпатент лишь в том случае, если изобретение в достаточной степени раскрыто в\r\nзаявке, в которой содержатся притязания на выдачу патента обычно на 20 лет. В\r\nобмен на предоставление таких ограниченных во времени прав патентная заявка\r\nдолжна раскрывать изобретение достаточно ясно, чтобы позволить любому\r\nспециалисту в данной области техники осуществить это изобретение. Патентная\r\nохрана предоставляется изобретателям с целью стимулировать научные\r\nисследования, разработки и инновации в промышленности. Как правило, это\r\nозначает, что другие исследователи могут использовать данное изобретение в\r\nсвоей работе и что это изобретение может служить дидактическим целям, даже в\r\nпериод действия права на патент. Такое техническое раскрытие, которое\r\nпредставляет собой описание практической реализации новой технологии, должно\r\nнаправляться соответствующим патентным ведомствам в качестве элемента патентной\r\nзаявки. Такое техническое раскрытие, как правило, становится общедоступным\r\nчерез восемнадцать месяцев после подачи заявки. Информация о процедурах подачи\r\nпатентной заявки и о поданных патентных заявках все чаще публикуется в открытых\r\nэлектронных базах данных, и доступ к значительному количеству таких данных\r\nотныне можно получить непосредственно через Интернет.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p><br></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p><br></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><b>Различные элементы\r\nпатентной заявки<o:p></o:p></b></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Как правило, патентная\r\nзаявка включает заявление, описание изобретения, один или несколько пунктов\r\nформулы изобретения, реферат и один или несколько чертежей, если это\r\nтребуется для понимания изобретения. Она также должна содержать биографические\r\nданные изобретателя/изобретателей, а также правовые основания притязаний\r\nзаявителя патентной заявки. Основными элементами патентной заявки являются:<o:p></o:p></span></p><ul><li style=\"\"><span style=\"line-height: 107%;\">заявление,\r\nсодержащее обоснование патентных притязаний, а также некоторые подробности,\r\nтакие, как название изобретения, имя и адрес заявителя, координаты\r\nпредставителя, если таковой имеется, и другие подробности;<o:p></o:p></span></li><li style=\"\"><span style=\"line-height: 107%;\">описание\r\nизобретения, которое подробно раскрывает сущность изобретения по установленной\r\nформе и в определенном порядке;<o:p></o:p></span></li><li style=\"\"><span style=\"line-height: 107%;\">формулу\r\nизобретения, определяющую объект, в отношении которого испрашивается охрана, и\r\nобъем прав по патенту. Материал, раскрываемый в описании, но не содержащийся в\r\nформуле, становится общественным достоянием. Как правило, каждый пункт формулы\r\nдолжен быть ясным и точным, подкреплен описанием и составлен установленным\r\nобразом;<o:p></o:p></span></li><li style=\"\"><span style=\"line-height: 107%;\">реферат,\r\nкоторый служит исключительно для целей технической информации; в частности, он\r\nотнюдь не может приниматься во внимание при толковании формулы.</span></li></ul><p><span style=\"line-height: 107%;\"><br></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><b>Процедура подачи\r\nпатентной заявки<o:p></o:p></b></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Первым шагом, который\r\nнеобходимо сделать с целью получения патента, является подача патентной заявки\r\nв патентное ведомство. Нужно хорошо знать технические аспекты и\r\nзаконодательство, для того чтобы правильно составить патентную заявку и\r\nпредставить ее в компетентное ведомство. Следовательно, несмотря на то, что в\r\nотдельных случаях можно подать патентную заявку без помощи патентного\r\nповеренного, настоятельно рекомендуется проконсультироваться с профессионалом\r\nне только по вопросам составления заявки, но также и для ее представления в\r\nпатентное ведомство (если вы желаете получить более подробную информацию о\r\nсоставлении патента, для вам может оказаться полезным посещение сайта Академии\r\nВОИС с целью прохождения курса по составлению патентных заявок). Некоторые\r\nстраны требуют от нерезидентов быть представленными патентным поверенным,\r\nуполномоченным выступать в патентном ведомстве.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Крайне важно не\r\nраскрывать изобретение широкой общественности до подачи патентной заявки,\r\nпоскольку, во многих странах, подобное раскрытие может опорочить новизну\r\nизобретения.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">После получения заявки\r\nпатентное ведомство, как правило, предпринимает ряд шагов до выдачи патента. Проводятся\r\nтри основных мероприятия, а именно:<o:p></o:p></span></p><ul><li style=\"\"><span style=\"line-height: 107%;\">формальная\r\nэкспертиза;<o:p></o:p></span></li><li style=\"\"><span style=\"line-height: 107%;\">экспертиза по\r\nсуществу;<o:p></o:p></span></li><li style=\"\"><span style=\"line-height: 107%;\">выдача и\r\nопубликование патента.</span></li></ul><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">В каждой из этих\r\nобластей деятельности обычная процедура включает диалог, проводимый главным\r\nобразом в письменной форме, между экспертом патентного ведомства и заявителем.\r\nПатентный поверенный выступает в качестве посредника в том смысле, что он\r\nполучает сообщения от патентного ведомства, консультирует заявителя\r\nотносительно надлежащих действий, принимает к сведению инструкции заявителя и\r\nсоответствующим образом отвечает на сообщения патентного ведомства.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Формальная экспертиза:</span><span style=\"line-height: 107%;\">\r\nтакая экспертиза состоит в проверке того, содержит ли заявка всю необходимую\r\nинформацию, требуемую по форме, и были ли представлены другие необходимые документы.\r\nФормальности включают уплату соответствующей пошлины и представление\r\nдокументации в обоснование заявки. Заявителю предоставляется возможность\r\nисправить ошибки, отмеченные в ходе формальной экспертизы. Если эти ошибки не\r\nисправляются в установленные сроки, патентное ведомство отклоняет заявку.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Экспертиза по существу:</span><span style=\"line-height: 107%;\">\r\nцель такой экспертизы состоит в том, чтобы до выдачи патента установить,\r\nудовлетворяет ли заявка условиям патентоспособности с точки зрения новизны,\r\nизобретательского уровня и возможности промышленного применения. Заявителю\r\nпредоставляется возможность отвести все возражения, высказанные в ходе\r\nэкспертизы по существу. Не все патентные ведомства проводят экспертизу по\r\nсуществу. В некоторых странах они выдают патенты на основе формальной экспертизы\r\nи соответствия ряду требований, например, чтобы заявленное изобретение не\r\nисключалось из категории патентоспособных объектов. В рамках такой системы в\r\nслучае возникновения спора только суды устанавливают подлинную действительность\r\nпатента и определяют его соответствие критериям патентоспособности.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">В зависимости от\r\nпроцедур экспертизы, предусмотренных в соответствующем законодательстве\r\nпроводится поиск с целью определить известный уровень техники в конкретной\r\nобласти, к которой относится изобретение. Понятие «известный уровень техники» в\r\nпатентном праве охватывает опубликованные документы и общеизвестные знания в\r\nтой области технологии, к которой относится изобретение, до даты приоритета\r\nпатентной заявки. Это осуществляется либо отдельно от экспертизы по существу,\r\nлибо до или во время проведения такой экспертизы. Проводя поиск, патентное\r\nведомство обращается к имеющейся у него коллекции патентных материалов с целью\r\nустановить наличие документов, описывающих решение, идентичное тому, которое\r\nописано в заявке или аналогичное ему. Поиск проводится по коллекции патентных\r\nдокументов, которая, как правило, организована по категориям под\r\nсоответствующими кодами для целей поиска по конкретным областям техники,\r\nподобно тому, как это предусмотрено в Международной патентной классификации\r\n(МПК). (см. ниже, схему 1, публикация и код классификации). При помощи этих\r\nкодов эксперт может осуществить поиск открытых документов в соответствующих\r\nбазах данных. Эти документы могут дополняться статьями из технических журналов\r\nи другими документами, которые не являются патентными документами. Эту\r\nвсеобъемлющую коллекцию документов обычно называют «поисковым фондом». Сам\r\nпоиск охватывает в первую очередь соответствующую техническую область, а затем\r\nможет распространяться на аналогичные области, однако в каждом конкретном\r\nслучае вопрос о необходимости такого расширения поиска решается самим\r\nэкспертом.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><b>Цель МПК состоит в том,\r\nчтобы представить единообразную классификацию техники для облегчения поиска\r\nпатентных документов с использованием системы классификации МПК. Как уже\r\nуказывалось выше, ключевым этапом процедуры выдачи патента является поиск\r\nизвестного уровня техники по опубликованным документам для установления того,\r\nудовлетворяет ли конкретное изобретение правовым критериям патентоспособности,\r\nтаким, как новизна и изобретательский уровень. МПК обеспечивает единообразную\r\nсистему классификации техники для осуществления эффективного поиска известного\r\nуровня техники по опубликованным документам. Без МПК поиск известного уровня\r\nтехники был бы затруднен, а результаты поиска не были бы надежными.</b></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Выдача патента на\r\nосновании патентной заявки:</span><span style=\"line-height: 107%;\"> Когда по окончании экспертизы\r\nделается положительное для заявителя заключение и при условии отсутствия\r\nкаких-либо возражений или отклонения выдвинутых возражений, патентное ведомство\r\nвыдает патент по соответствующей заявке. Полные данные о патенте вносятся в\r\nреестр патентов, а заявителю выдается свидетельство о выдаче патента. Затем\r\nпатентное ведомство публикует патент для целей государственной инспекции. Для\r\nобеспечения оперативного распространения технической информации, содержащейся в\r\nпатентных заявках, в некоторых странах патентные заявки публикуются в течение\r\n18 месяцев после даты подачи заявки (или «даты приоритета»).</span></p><p class=\"MsoNormal\" style=\"\"><br></p>', 1, '2024-01-10 20:14:06', '2024-01-14 15:13:45');
INSERT INTO `posts` (`id`, `name`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
INSERT INTO `posts` (`id`, `name`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Что такое интеллектуальная собственность (ИС)?', NULL, '<p class=\"MsoBodyText\" style=\"margin: 4.6pt 6.45pt 0.0001pt 0cm;\">История человечества представляет собой историю\r\nприменения воображения, новаторства и\r\nтворчества к существующей базе знаний с целью решения проблем или выражения мыслей. Начиная с ранней письменности в Месопотамии, китайских\r\nиероглифов, сирийской астролябии,\r\nдревних наблюдений в Индии, печатного станка Гутенберга, двигателя внутреннего сгорания, пенициллина,\r\nрастительных лекарств и медикаментов в Южной Африке, транзисторов, полупроводниковой нанотехнологии, лекарств на\r\nоснове рекомбинантной ДНК и других\r\nбесчисленных открытий и инноваций, именно воображение авторов всего мира позволило\r\nчеловечеству достичь\r\nсегодняшнего уровня технического прогресса.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"text-align: justify; text-indent: 1cm;\">Охрана интеллектуальной собственности\r\nобеспечивается не только на национальном, но</span><span style=\"text-align: justify; text-indent: 1cm;\">\r\n</span><span style=\"text-align: justify; text-indent: 1cm;\">также на международном уровне.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 11.7pt;\">&nbsp;<span style=\"text-indent: 1cm;\">Всемирная организация интеллектуальной\r\nсобственности</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">(ВОИС) выполняет\r\nадминистративные функции более 20 договоров по различным аспектам</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">интеллектуальной</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">собственности.</span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.1pt;\">&nbsp;<span style=\"text-indent: 1cm;\">Какие виды интеллектуальных творений являются предметом\r\nИС?</span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"text-indent: 1cm;\">Обычно</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">ИС</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">понимается</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">как</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">включающая</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">права</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">в</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">связи</span><span style=\"text-indent: 1cm;\">\r\n</span><span style=\"text-indent: 1cm;\">со</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">следующими</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">объектами:</span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.45pt;\">&nbsp;<span style=\"text-indent: 1cm;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><span style=\"text-indent: 1cm;\">Литературные, научные\r\nи художественные произведения</span></p><p class=\"MsoListParagraph\" style=\"margin: 0.1pt 23.65pt 0.0001pt 0cm;\"><!--[if !supportLists]-->·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->Исполнения\r\nартистов-исполнителей, фонограммы и эфирное вещание<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 51pt 0.0001pt 0cm;\"><!--[if !supportLists]-->·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->Изобретения во\r\nвсех областях человеческой деятельности<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm; line-height: 12.55pt;\"><!--[if !supportLists]-->·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->Научные открытия<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 0.05pt 0cm 0.0001pt; line-height: 12.6pt;\"><!--[if !supportLists]-->·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->Промышленные образцы<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm; line-height: 12.6pt;\"><!--[if !supportLists]-->·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->Товарные знаки и коммерческие обозначения, и указания<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 0.1pt 0cm 0.0001pt; line-height: 12.6pt;\"><!--[if !supportLists]-->·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->Охрана от недобросовестной конкуренции<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 35.95pt 0.0001pt 0cm;\"><!--[if !supportLists]-->·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->Все другие права,\r\nявляющиеся результатом интеллектуальной деятельности в промышленной, научной, литературной и художественных областях</p><p class=\"MsoListParagraph\" style=\"margin: 0cm 35.95pt 0.0001pt 0cm;\"><br><span style=\"text-indent: 1cm;\">АВТОРСКОЕ</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">ПРАВО</span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.35pt;\">&nbsp;<span style=\"text-indent: 1cm;\">Что такое авторское право?</span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"text-indent: 1cm;\">Авторское право имеет целью предоставление охраны\r\nавторам (писателям, художникам,</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">композиторам\r\nмузыкальных произведений и пр.) на их творения.</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">Такие творения обычно</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">называются</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">«произведениями».</span></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"text-indent: 1cm;\">Что входит в понятие авторского права?</span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"text-align: justify; text-indent: 1cm;\">Произведения, относящиеся к области авторского права,\r\nвключают литературные</span><span style=\"text-align: justify; text-indent: 1cm;\"> </span><span style=\"text-align: justify; text-indent: 1cm;\">произведения,\r\nтакие как романы, стихи и пьесы; справочные произведения, такие как</span><span style=\"text-align: justify; text-indent: 1cm;\"> </span><span style=\"text-align: justify; text-indent: 1cm;\">энциклопедии и словари; базы данных,\r\nгазетные статьи; фильмы и телевизионные программы;</span><span style=\"text-align: justify; text-indent: 1cm;\"> </span><span style=\"text-align: justify; text-indent: 1cm;\">музыкальные композиции; хореографические произведения;\r\nхудожественные произведения,</span><span style=\"text-align: justify; text-indent: 1cm;\"> </span><span style=\"text-align: justify; text-indent: 1cm;\">такие\r\nкак рисунки, картины, фотографии и скульптуры; архитектурные сооружения; и\r\nрекламу,</span><span style=\"text-align: justify; text-indent: 1cm;\"> </span><span style=\"text-align: justify; text-indent: 1cm;\">карты и технические чертежи,\r\nно не ограничены ими.</span><span style=\"text-align: justify; text-indent: 1cm;\"> </span><span style=\"text-align: justify; text-indent: 1cm;\">Авторское право\r\nтакже охраняет</span><span style=\"text-align: justify; text-indent: 1cm;\"> </span><span style=\"text-align: justify; text-indent: 1cm;\">компьютерные</span><span style=\"text-align: justify; text-indent: 1cm;\"> </span><span style=\"text-align: justify; text-indent: 1cm;\">программы.</span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"text-indent: 1cm;\">Однако, авторское право не\r\nраспространяется на идеи, а только на выражения мысли.</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">Например, идея отображения солнечного заката не охраняется\r\nавторским правом, поэтому</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">любое лицо\r\nможет сделать такую фотографию.</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">Но\r\nопределенная картина солнечного заката,</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">запечатленная\r\nфотографом, может охраняться авторским правом.</span><span style=\"text-indent: 1cm;\">\r\n</span><span style=\"text-indent: 1cm;\">В этом случае, если какое-</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">либо\r\nдругое лицо делает экземпляры такой фотографии и начинает продавать их без</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">разрешения</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">фотографа,</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">то</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">это</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">лицо</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">будет</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">нарушать</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">права,</span><span style=\"text-indent: 1cm;\">\r\n</span><span style=\"text-indent: 1cm;\">принадлежащие</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">фотографу.</span></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"text-indent: 1cm;\">Необходимо ли соблюдать определенные формальности в целях получения охраны?</span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"text-align: justify; text-indent: 1cm;\">Охрану в области авторского права получают\r\nавтоматически, не прибегая к регистрации</span><span style=\"text-align: justify; text-indent: 1cm;\"> </span><span style=\"text-align: justify; text-indent: 1cm;\">или\r\nвыполнению каких-либо других формальностей.</span><span style=\"text-align: justify; text-indent: 1cm;\"> </span><span style=\"text-align: justify; text-indent: 1cm;\">Произведение\r\nпользуется охраной в</span><span style=\"text-align: justify; text-indent: 1cm;\"> </span><span style=\"text-align: justify; text-indent: 1cm;\">области</span><span style=\"text-align: justify; text-indent: 1cm;\"> </span><span style=\"text-align: justify; text-indent: 1cm;\">авторского права</span><span style=\"text-align: justify; text-indent: 1cm;\"> </span><span style=\"text-align: justify; text-indent: 1cm;\">сразу</span><span style=\"text-align: justify; text-indent: 1cm;\"> </span><span style=\"text-align: justify; text-indent: 1cm;\">после его\r\nсоздания.</span></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"text-indent: 1cm;\">Однако, многие страны предусматривают\r\nнациональную систему добровольной</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">регистрации\r\nи депонирования произведений.</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">Эти\r\nсистемы, например, облегчают вопросы,</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">связанные\r\nсо спорами в отношении права собственности или права авторства, финансовые</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">сделки,</span><span style=\"text-indent: 1cm;\">\r\n</span><span style=\"text-indent: 1cm;\">продажу, уступку и</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">передачу</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">прав.</span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"text-indent: 1cm;\">Какие виды прав предусматривает авторское право?</span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"text-indent: 1cm;\">В</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">рамках</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">авторского</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">права</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">существует</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">два</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">вида</span><span style=\"text-indent: 1cm;\"> </span><span style=\"text-indent: 1cm;\">прав:</span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\"><span style=\"text-indent: 1cm;\">Имущественные права</span><span style=\"text-indent: 1cm;\">, которые позволяют владельцу извлекать финансовую выгоду\r\nза счет использования произведения; и</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;</span><span style=\"font-size: 1rem;\">Личные неимущественные права, которые подчеркивают существование персональной связи между автором\r\nи его произведением.</span></p><p class=\"MsoListParagraph\" style=\"margin: 0.05pt 47.05pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 3.1pt;\">&nbsp;<span style=\"font-size: 1rem;\">Какие имущественные права включает авторское право?</span></p><p class=\"MsoBodyText\" style=\"margin-top: 3.1pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Авторы произведений могут использовать\r\nсвое произведение по собственному\r\nусмотрению. Они также могут разрешать\r\nили запрещать следующие действия\r\nв отношении произведения:</span></p><p class=\"MsoBodyText\" style=\"margin-top: 4.6pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.45pt;\">&nbsp;<span style=\"font-size: 1rem;\">–</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">воспроизведение в различных формах, например, в печатном издании или путем записи произведения на кассетах,\r\nкомпакт-дисках или видео дисках, или путем его\r\nхранения в компьютерной памяти;</span></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 11.3pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">–</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">распространение,\r\nнапример, путем публичной продажи экземпляров\r\nпроизведения;</span></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 73.75pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">–</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">публичное исполнение, например, путем исполнения музыкального произведения на концерте\r\nили пьесы на сцене;</span></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 10.15pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">–</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">передачу в эфир и сообщение для всеобщего сведения, по радио или телевидению, кабелю или через спутник;</span></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 67.2pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"font-size: 1rem;\">–</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">перевод на другие языки;</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">–</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">переработку,\r\nнапример, путем переделки романа или пьесы в сценарий для фильма;</span></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 44.45pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.15pt;\">&nbsp;<span style=\"font-size: 1rem;\">Последнее развитие событий на\r\nмеждународной сцене также позволяет охранять\r\nпроизведения в контексте Интернета. Договор\r\nВОИС по авторскому праву (ДАП), заключенный\r\nв 1996 г, имеет целью решить проблемы, возникающие в связи с современной цифровой технологией, обеспечивая таким\r\nобразом владельцам авторского права адекватную и эффективную охрану при распространении принадлежащих им\r\nпроизведений через новые технологические и коммуникационные системы, в частности, через Интернет.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 8.2pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"font-size: 1rem;\">Какие права относятся к личным неимущественным правам?</span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Применительно к личным\r\nнеимущественным правам, автор может требовать:</span></p><p class=\"MsoBodyText\" style=\"margin-top: 4.55pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.45pt;\">&nbsp;<span style=\"font-size: 1rem;\">–</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">признания права авторства на свое произведение.\r\nЭто основное право автора — указывать\r\nего или ее имя в качестве автора, в особенности при использовании произведения.</span></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 11.1pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">–</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">право на целостность произведения, т.е. право возражать против изменений произведения или его использования в\r\nконтексте, который может нанести вред репутации или достоинству автора.</span></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 29.5pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Как используются имущественные права?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Многие творческие произведения, охраняемые авторским\r\nправом, требуют финансовых инвестиций\r\nи профессиональных навыков для производства, дальнейшего распространения и поступления в массовую дистрибьюторскую\r\nсеть. Такие виды деятельности, как\r\nпубликация книг, производство\r\nзвукозаписей или фильмов обычно осуществляют специализированные организации или компании, а не\r\nнепосредственно авторы. Обычно авторы\r\nили создатели таких произведений\r\nпередают свои права этим компаниям путем соглашений взамен на выплату компенсации. Эта компенсация может быть осуществлена в различных формах, в частности в виде\r\nразового вознаграждения или роялти на основе процента от прибыли, поступающей\r\nот продажи конкретного произведения.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 6.05pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">Многие авторы не обладают способностью\r\nили средствами для самостоятельного управления\r\nсвоими правами. Они часто прибегают к\r\nуслугам организаций или обществ по коллективному\r\nуправлению правами, которые предоставляют своим членам преимущества административного и юридического опыта и\r\nэффективности организации при сборе, управлении\r\nи распределении роялти. Эти роялти\r\nони получают за счет крупномасштабного национального\r\nили международного использования произведений своих членов, например, организациями эфирного вещания, дискотеками, ресторанами, библиотеками и школами.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 9.05pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Какова продолжительность авторско-правовой охраны?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"font-size: 1rem;\">Авторское право имеет ограниченный срок\r\nдействия: обычно он составляет срок\r\nжизни автора плюс пятьдесят лет\r\nпосле его смерти. Это правило,\r\nкоторое использует большинство стран,\r\nустановлено в Бернской конвенции по охране литературных и художественных произведений. По истечении этого срока произведение переходит в область\r\n«общественного достояния». С этого момента любое лицо может свободно\r\nиспользовать произведение без получения специального разрешения от владельца права.</span></p><p class=\"MsoBodyText\" style=\"margin-top: 4.6pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">Однако, Бернская конвенция позволяет\r\nпредусматривать более продолжительный срок охраны. Для того чтобы узнать, какой срок охраны\r\nприменяется к произведению в конкретной стране,\r\nрекомендуется ознакомиться с национальным законодательством этой страны в\r\nобласти авторского права.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 6.05pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.1pt;\">&nbsp;<span style=\"font-size: 1rem;\">В какой\r\nстепени вы можете использовать чье-либо\r\nпроизведение без разрешения автора?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">В авторском праве существуют ограничения и исключения,\r\nкоторые учитывают социальные, образовательные и другие соображения государственной политики.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.55pt 52.6pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin: 4.55pt 52.6pt 0.0001pt 0cm;\">Международные договоры, а также национальные законы\r\nпозволяют свободно использовать ограниченные\r\nчасти произведений для определенных целей, в частности для передачи новостей, использования цитат, отвечающего\r\nкритериям добросовестной практики, или иллюстрации для целей обучения.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.45pt;\">&nbsp;<span style=\"font-size: 1rem;\">Такие случаи свободного использования\r\nварьируются в зависимости от страны, поэтому\r\nрекомендуется обращаться к национальному законодательству данной страны\r\nв целях установления возможности использовать такое\r\nпреимущество.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 12.5pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Почему необходимо охранять\r\nавторское право?</span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Авторское право содействует творчеству человека,\r\nпредоставляя автору стимул в виде признания\r\nи справедливого материального вознаграждения.\r\nВ соответствии с этой системой прав авторам гарантируется, что их\r\nпроизведения могут распространяться, не опасаясь неразрешенного копирования или пиратства. Это в свою очередь расширяет доступ к произведениям и позволяет повысить удовольствие от культуры,\r\nзнаний и развлечений во всем мире.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 9.05pt 0.0001pt 0cm;\"><o:p></o:p></p><h2 style=\"margin-left: 0cm;\">&nbsp;СМЕЖНЫЕ ПРАВА</h2><h2 style=\"margin-left: 0cm;\"><o:p></o:p></h2><p class=\"MsoBodyText\" style=\"margin-top: 0.3pt;\">&nbsp;<span style=\"font-size: 1rem;\">Что такое смежные права?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Смежные права предоставляют охрану следующим лицам\r\nили организациям:</span></p><p class=\"MsoBodyText\" style=\"margin-top: 4.6pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">–</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">исполнителям (актерам,\r\nмузыкантам, певцам, танцорам или исполнителям в общем плане) на их исполнения;</span></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 38.35pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 35.95pt 0.0001pt 0cm; line-height: 100%;\"><!--[if !supportLists]-->–<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]--><span style=\"line-height: 100%;\">производителям звукозаписей </span><span style=\"line-height: 100%;\">(например, записей на кассетах или\r\nкомпакт- дисках) на их записи; и<o:p></o:p></span></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm; line-height: 12.4pt;\"><!--[if !supportLists]-->–<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->организациям эфирного вещания\r\nна их радио и телевизионные программы.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"font-size: 1rem;\">Иногда эти права также называют смежными правами.</span></p><p class=\"MsoNormal\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Существует ли различие между\r\nсмежными правами и авторским правом?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Авторское право и смежные права охраняют различные\r\nкатегории людей. Авторские права охраняют авторов произведений. Например, в случае песни, авторское право\r\nохраняет композитора музыки\r\nи автора слов.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.55pt 6.05pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">В том же примере смежные права\r\nприменяются к:</span></p><p class=\"MsoBodyText\" style=\"line-height: 12.6pt;\"><o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm; line-height: 12.6pt;\"><!--[if !supportLists]-->–<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->музыкантам и певцу, которые\r\nисполняют песню,<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 0.05pt 16.85pt 0.0001pt 0cm;\"><!--[if !supportLists]-->–<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->производителю\r\nзвукозаписи (которая также называется фонограммой), в которую включена\r\nпесня, и<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 12.05pt 0.0001pt 0cm; line-height: 100%;\"><!--[if !supportLists]-->–<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]--><span style=\"line-height: 100%;\">организации,\r\nкоторая осуществляет эфирное вещание программы, содержащей эту песню.<o:p></o:p></span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.3pt;\">&nbsp;<span style=\"font-size: 1rem;\">Какие права\r\nпредоставляются бенефициарам смежных\r\nправ?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Применительно к объему прав, предоставляемых\r\nисполнителям, производителям звукозаписей\r\nили организациям эфирного вещания, национальное законодательство различных стран варьируется.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.55pt 8.2pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">В общем плане исполнители пользуются\r\nимущественными правами в целях предотвращения записи, вещания и сообщения для всеобщего сведения своих исполнений перед публикой. Национальное законодательство, а также Договор ВОИС по\r\nисполнениям и фонограммам (ДИФ) также\r\nпредоставляют им права на воспроизведение, распространение и прокат своих исполнений, записанных на\r\nфонограмму, а также личные неимущественные права в целях предотвращения необоснованного неупоминания их имени\r\nили возражения против изменения их\r\nисполнений, включенных в звукозапись, если такие изменения могут нанести вред их\r\nрепутации.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 6.25pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Производители звукозаписей (которые также\r\nназывают фонограммами) главным образом пользуются\r\nправом разрешать или запрещать воспроизведение и распространение своих звукозаписей другими лицами.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 7.55pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin: 3.1pt 16.95pt 0.0001pt 0cm;\">Кроме того, Договор ВОИС по исполнениям и фонограммам\r\n(ДИФ) предписывает, что права\r\nпроизводителей фонограмм, а также исполнителей произведений, содержащихся в\r\nних, адекватно и эффективно\r\nохраняются при распространении таких звукозаписей через новые технические и коммуникационные системы и, в частности, через Интернет.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Организациям эфирного вещания\r\nпредоставлены права разрешать или запрещать\r\nретрансляцию, запись или воспроизведение своих передач.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 47.15pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"font-size: 1rem;\">Смежные права ограничены такими же исключениями, что и\r\nавторское право, которые позволяют\r\nлюбому лицу свободно использовать исполнения, звукозаписи или передачи для некоторых\r\nконкретных целей, в частности для цитирования или передачи новостей.</span></p><p class=\"MsoBodyText\" style=\"margin: 0.05pt 19.85pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Почему необходимо охранять смежные права?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Права исполнителей охраняются в силу их творческого\r\nвклада. Производители звукозаписей имеют право на охрану,\r\nпоскольку они вносят творческий вклад, а также\r\nтехнические и финансовые ресурсы для доведения записи до сведения\r\nпублики. Аналогичным образом организации эфирного вещания\r\nзаконно заинтересованы в охране от пиратских\r\nдействий в отношении своих технических и организационных\r\nнавыков.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.55pt 9.05pt 0.0001pt 0cm;\"><o:p></o:p></p><h2 style=\"margin-left: 0cm;\">&nbsp;ТОВАРНЫЕ ЗНАКИ</h2><h2 style=\"margin-left: 0cm;\"><o:p></o:p></h2><p class=\"MsoBodyText\" style=\"margin-top: 0.3pt;\">&nbsp;<span style=\"font-size: 1rem;\">Что такое товарный знак?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Товарный знак — это обозначение, которое используется для идентификации определенных\r\nтоваров и услуг как изготовленных или предоставляемых конкретным лицом или предприятием. Таким образом, он помогает отличать эти товары и услуги от\r\nсходных товаров и услуг,\r\nпроизводимых и предоставляемых другими\r\nлицами.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 16.2pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">Например, «DELL» является товарным знаком, который\r\nидентифицирует товары (компьютеры и\r\nкомпьютерное оборудование). «CITY\r\nBANK» является товарным знаком, который относится\r\nк услугам (банковские и финансовые услуги).</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Какие виды обозначений могут использоваться в качестве товарных\r\nзнаков?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Товарные знаки могут состоять из слова (например,\r\n«Kodak») или комбинации слов («Coca-Cola»),\r\nбукв и сокращений (например, «EMI», «MGM», «AOL», «BMW», «IBM»), числительных (например, «7/11») и названий\r\n(например, «Ford» или «Dior») или сокращенных\r\nназваний (например, «YSL» для «Yves St-Laurent»). Они могут состоять из рисунков (подобно логотипу нефтяной компании «Shell» или рисунка, изображающего\r\nпингвина, на книгах, выпускаемых\r\nиздательством «Penguin») или трехмерных обозначений, в частности форма и упаковка товаров (например, форма бутылки\r\n«Coca-Cola» или упаковка шоколада «Tobleron»).\r\nОни также могут состоять из комбинации цветов или одного цвета\r\n(например, оранжевый цвет используется\r\nдля телефонной компании «ORANGE»). Товарными\r\nзнаками могут являться даже невидимые знаки, в частности музыка или запах.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.55pt 11.05pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"font-size: 1rem;\">Во всех случаях товарный знак должен\r\nобладать отличительной функцией: он должен\r\nотличать товары и услуги, для которых он используется. Название предлагаемых товаров и услуг, которое носит чисто описательный\r\nхарактер, не может являться действительным товарным\r\nзнаком. Например, «Apple» может\r\nслужить товарным знаком для компьютеров, но не\r\nдля самих яблок. Однако, определенный\r\nтоварный знак не может быть отличительным с самого\r\nначала, но в ходе продолжительного и широкого использования он может приобрести отличительный характер или «второе значение».</span></p><p class=\"MsoBodyText\" style=\"margin-right: 11.7pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Какие существуют виды товарных знаков?</span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Помимо товарных знаков, идентифицирующих коммерческое\r\nпроисхождение товаров или услуг, существуют некоторые другие категории знаков.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 23.5pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">Коллективные\r\nзнаки — это знаки, используемые для отличения\r\nтоваров или услуг, производимых или\r\nпредоставляемых членами ассоциации. Коллективные\r\nзнаки — это знаки, используемые для идентификации услуг,\r\nпредоставляемых членами организации (например,</span></p><p class=\"MsoBodyText\" style=\"margin-right: 6.05pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"line-height: 12.6pt;\"><span lang=\"EN-US\" style=\"\">«UAW» </span>для<span lang=\"EN-US\" style=\"\"> «United Auto Workers»).<o:p></o:p></span></p><p class=\"MsoBodyText\" style=\"\"><span lang=\"EN-US\" style=\"\">&nbsp;</span><span style=\"font-size: 1rem;\">Сертификационные\r\nзнаки — это знаки, используемые для\r\nидентификации товаров или услуг,\r\nкоторые отвечают определенным стандартам и получили соответствующую сертификацию (например, символ «Woolmark»\r\nпоказывает, что продукция изготовлена из 100%\r\nшерсти и соответствует стандартам, установленным компанией «Woolmark». Он зарегистрирован\r\nв 140 странах и используется по лицензии изготовителями в 67 странах, которые\r\nспособны соблюдать эти стандарты качества).</span></p><p class=\"MsoBodyText\" style=\"margin-right: 10.2pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 3.1pt;\">&nbsp;<span style=\"font-size: 1rem;\">Какие функции выполняет\r\nтоварный знак?</span></p><p class=\"MsoBodyText\" style=\"margin-top: 3.1pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Товарные знаки могут выполнять\r\nразличные функции. В частности:</span></p><p class=\"MsoBodyText\" style=\"margin-top: 4.6pt; line-height: 12.6pt;\"><o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm; line-height: 12.6pt;\"><!--[if !supportLists]-->–<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->помогают потребителю идентифицировать или отличать\r\nпродукты или услуги;<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm; line-height: 12.6pt;\"><!--[if !supportLists]-->–<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->позволяют компаниям отличать свои продукты\r\nот продуктов других компаний;<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 0.05pt 18.75pt 0.0001pt 0cm;\"><!--[if !supportLists]-->–<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->являются инструментом\r\nмаркетинга и основой для создания имиджа и репутации бренда;<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 15.7pt 0.0001pt 0cm;\"><!--[if !supportLists]-->–<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->могут передаваться по\r\nлицензии и обеспечивать прямой источник доходов за счет выплаты роялти;<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm; line-height: 12.55pt;\"><!--[if !supportLists]-->–<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->являются одним\r\nиз важнейших компонентов деловых активов;<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 0.1pt 44.25pt 0.0001pt 0cm;\"><!--[if !supportLists]-->–<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->стимулируют инвестиции\r\nкомпаний в поддержание или совершенствование\r\nкачественной продукции; и<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm;\"><!--[if !supportLists]-->–<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->могут быть полезными в целях привлечения финансирования.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Как охраняется товарный знак?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Наиболее распространенным и эффективным способом\r\nохраны товарного знака является его регистрация. Товарные знаки являются территориальными правам. Это означает, что они должны быть отдельно зарегистрированы в\r\nкаждой стране, где испрашивается охрана. Следует отметить, что если определенный товарный\r\nзнак не охраняется в конкретной стране, он может быть свободно использован третьими лицами. Кроме того, охрана товарного знака в общем всегда ограничена определенными товарами\r\nили услугами (если только соответствующий товарный\r\nзнак не является хорошо известным или общеизвестным товарными знаком). Это означает,\r\nчто один и тот же товарный знак может быть использован различными компаниями в той степени, насколько он используется для\r\nнепохожих товаров или услуг. Почти во\r\nвсех странах мира в соответствующем\r\nведомстве по товарным знакам ведется реестр товарных знаков.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 6.45pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">Однако, регистрация не является единственным\r\nспособом охраны товарного знака: в некоторых\r\nстранах также охраняются незарегистрированные товарные знаки, но такая охрана менее\r\nнадежна.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 15.75pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Какую охрану\r\nпредоставляет товарный знак?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 4.6pt;\">Владельцу товарного знака\r\nпредоставляются исключительные права на:<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm;\"><!--[if !supportLists]-->–<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->использование товарного знака для идентификации своих\r\nтоваров или услуг;<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 13.1pt 0.0001pt 0cm;\"><!--[if !supportLists]-->–<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->предотвращение других лиц от использования и маркетинга тождественного или сходного товарного\r\nзнака для тождественных или сходных товаров\r\nили услуг;<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 8.4pt 0.0001pt 0cm;\"><!--[if !supportLists]-->–<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->разрешение другим лицам использовать товарный знак (например, на условиях соглашения о франшизе\r\nили лицензионного соглашения) за определенную плату.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">&nbsp;</span><span style=\"font-size: 1rem;\">&nbsp;</span><span style=\"font-size: 1rem;\">Каков порядок\r\nрегистрации товарных знаков?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">В начале в соответствующее национальное или\r\nрегиональное ведомство подается заявка на\r\nрегистрацию товарного знака. Заявка\r\nдолжна содержать четкое воспроизведение знака,\r\nрегистрация которого испрашивается, включая четкое воспроизведение\r\nцвета, формы или трехмерных\r\nэлементов. В заявке также необходимо\r\nуказать перечень товаров или услуг, для которых испрашивается охрана знака.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.55pt 12.65pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin: 3.7pt 18.35pt 0.0001pt 0cm;\">Для получения охраны в качестве товарного или иного\r\nзнака само обозначение должно удовлетворять определенным условиям:<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">-</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">оно должно обладать различительной функцией, с тем чтобы\r\nпотребители могли узнавать его как\r\nприсущее определенной продукции и одновременно не спутать его с другими товарными знаками, идентифицирующими другие\r\nпродукты;</span></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 13.2pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">-</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">оно не должно нести\r\nложной или вводящей в заблуждение\r\nинформации, то есть оно не должно\r\nвводить в заблуждение потребителей в отношении\r\nхарактера или качества\r\nпродукта;</span></p><p class=\"MsoListParagraph\" style=\"margin: 0.05pt 7.65pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"font-size: 1rem;\">-</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">оно не должно противоречить общественному порядку или морали;</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">-</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">оно не должно быть тождественным или сходным до\r\nстепени смешения с уже существующим\r\nтоварным знаком. Это устанавливается путем поиска и\r\nэкспертизы, проводимых национальным\r\nведомством, либо путем рассмотрения возражения третьих лиц, претендующих на такие же или\r\nаналогичные права.</span></p><p class=\"MsoListParagraph\" style=\"margin: 0.05pt 24.1pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">Каков срок охраны зарегистрированного товарного\r\nзнака?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Срок охраны варьируется (обычно он составляет 10 лет), но срок действия товарного знака может продляться неограниченное число раз при условии уплаты\r\nсоответствующих пошлин.</span></p><p class=\"MsoNormal\" style=\"margin: 4.55pt 21.4pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">На какой территории действует охрана товарных знаков?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Почти все страны мира проводят регистрацию и\r\nпредоставляют охрану на товарные знаки. В каждом национальном или региональном\r\nведомстве имеется реестр товарных знаков, в\r\nкотором содержится исчерпывающая информация о заявках на все регистрации и\r\nпродления, что облегчает проведение\r\nэкспертизы и поиска, а также действия третьих лиц в плане возможных возражений. Однако, действие такой регистрации\r\nограничивается территорией страны, в\r\nкоторой она осуществлена (а в случае региональной регистрации – территориями соответствующих стран).</span></p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 10.9pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"font-size: 1rem;\">Для того, чтобы избежать необходимость\r\nрегистрации в каждом национальном или региональном\r\nведомстве, ВОИС выполняет административные функции системы международной регистрации знаков. Эта система регулируется двумя договорами: Мадридским соглашением о международной\r\nрегистрации знаков и Мадридским протоколом. Лицо,\r\nимеющее связь (т.е. гражданство, место постоянного проживания или\r\nдействительное и нефиктивное\r\nкоммерческое предприятие) с одной из стран-участниц одного или обоих упомянутых договоров, на основании подачи\r\nзаявки либо регистрации в национальном ведомстве\r\nэтой страны может получить международную регистрацию, признаваемую действительной в некоторых или во всех других странах Мадридского союза.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 14.1pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Что такое общеизвестные знаки и как они охраняются?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Хорошо известные знаки – это знаки, которые считаются\r\nхорошо известными определенному\r\nсектору общества в стране, где испрашивается охрана. Хорошо известные знаки пользуются более сильной охраной, чем знаки вообще: они могут охраняться даже в том\r\nслучае, если они не зарегистрированы на данной\r\nтерритории, и</span></p><p class=\"MsoBodyText\" style=\"margin: 4.55pt 14.35pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">-</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">они могут охраняться от\r\nсходных до степени смешения знаков, которые используются на несходных товарах и услугах, в то время как знаки, как\r\nправило охраняются от сходных до\r\nсмешения знаков, если они используются для тождественных или сходных продуктов.</span></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 13.65pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">Например, давайте рассмотрим товарный\r\nзнак «Mercedes Benz». Обычно\r\nкомпания, которая обладает этим\r\nтоварным знаком, будет защищена от его неразрешенного использования третьими сторонами в отношении продуктов, для\r\nкоторых зарегистрирован этот знак. В той степени, в которой знак «Mercedes\r\nBenz» является общеизвестным знаком, охрана будет\r\nтакже предоставляться на несходные товары. Поэтому,\r\nесли другая компания решит использовать\r\nэтот товарный знак в отношении таких товаров, как скажем, мужское белье, наличие\r\nохраны не позволит им сделать это.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 7.8pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Что такое название домена\r\nи какова его связь с товарными знаками?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"font-size: 1rem;\">Название домена – это адреса в Интернете, которые\r\nобычно используются для поиска веб-сайтов. Например,\r\nназвание домена «</span><span lang=\"EN-US\" style=\"font-size: 1rem;\">patent</span><span style=\"font-size: 1rem;\">-</span><span lang=\"EN-US\" style=\"font-size: 1rem;\">islamov</span><span style=\"font-size: 1rem;\">.</span><span lang=\"EN-US\" style=\"font-size: 1rem;\">ru</span><span style=\"font-size: 1rem;\">» используется для поиска веб-сайта\r\nВОИС по адресу: </span><a href=\"http://www.wipo.int/\" style=\"background-color: rgb(255, 255, 255); font-size: 1rem;\">www. <span lang=\"EN-US\">patent</span>-<span lang=\"EN-US\">islamov</span>.<span lang=\"EN-US\">ru</span></a><span style=\"font-size: 1rem;\">. Иногда название доменов\r\nмогут быть составлены из товарного знака. В\r\nтаком случае возможна ситуация, когда лицо, зарегистрировавшее название домена,\r\nсделало это недобросовестно,\r\nпоскольку оно не является владельцем товарного знака, под которым зарегистрировано название домена. Такой\r\nвид деятельности обычно\r\nназывают «киберсквоттингом».</span></p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 19.65pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Важно помнить, что национальное\r\nзаконодательство или суды многих стран рассматривают\r\nв качестве нарушения прав на товарный знак регистрацию товарного знака, принадлежащего другой компании или другому\r\nлицу, в качестве названия домена. Если\r\nэто имеет место, то лицо, избравшее\r\nпринадлежащий другому лицу товарный знак в качестве названия домена, может быть обязано не только передать права на\r\nэто название домена или вообще\r\nаннулировать его, но и выплатить возмещение убытков за причиненный ущерб или большой\r\nштраф.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 9.05pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">Интересно отметить что, если товарный\r\nзнак вашей компании используется в качестве названия\r\nдомена другим лицом или компанией, вы можете предпринять меры для прекращения незаконного использования прав,\r\nпринадлежащих вашей компании. В таком\r\nслучае одним из вариантов может быть\r\nиспользование существующей в рамках ВОИС процедуры в режиме он- лайн по урегулированию споров в области\r\nназваний доменов по адресу: arbiter.wipo.int/domains. Этот веб-сайт ВОИС включает\r\nтекст типовой жалобы,\r\nа также правовой указатель многих тысяч споров в области\r\nназваний доменов, которые\r\nуже успешно урегулированы ВОИС.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 6.15pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Почему необходима охрана товарных знаков?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"font-size: 1rem;\">Существует две основные причины для охраны товарных\r\nзнаков, будь то путем регистрации или\r\nиным путем. Во-первых, охрана\r\nзащищает деловых людей от недобросовестной\r\nпрактики конкурентов, которая имеет целью ввести потребителей в заблуждение, заставляя их поверить, что\r\nони приобретают товары и услуги законного владельца\r\nтоварного знака, в то время как фактически они приобретают имитацию, которая к тому же может быть худшего качества. Законный владелец товарного знака может\r\nпострадать от потери потенциальных\r\nпокупателей и, кроме того, может быть нанесен ущерб его собственной репутации.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 9.05pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin: 3.7pt 15.25pt 0.0001pt 0cm;\">Вторая причина вытекает из первой – защищать\r\nпотребителей от недобросовестной или вводящий в заблуждение деловой\r\nпрактики.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">Помимо этих двух аргументов все большее\r\nзначение приобретает еще один аргумент. Он заключается в том, что часто товарный\r\nзнак является единственным материальным активом, который воплощает в себе инвестиции в создание бренда. В случае, например, продажи делового предприятия или слияния компаний\r\nвопрос оценки бренда приобретает особую важность. Ценность компании может в значительной\r\nмере зависеть от ценности принадлежащих ей товарных\r\nзнаков.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 7.4pt;\"><o:p></o:p></p><h2 style=\"margin-left: 0cm;\">&nbsp; ГЕОГРАФИЧЕСКИЕ УКАЗАНИЯ</h2><h2 style=\"margin-left: 0cm;\"><o:p></o:p></h2><p class=\"MsoBodyText\" style=\"margin-top: 0.3pt;\">&nbsp;<span style=\"font-size: 1rem;\">Что такое\r\nгеографическое указание?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Географическое указание – это обозначение,\r\nиспользуемое на товарах, которое имеет особое\r\nгеографическое происхождение и обладает свойствами или репутацией, присущими этому месту происхождения.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 27.45pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.45pt;\">&nbsp;<span style=\"font-size: 1rem;\">Географические указания могут\r\nиспользоваться в связи с широким разнообразием\r\nсельскохозяйственной продукции, например, «Roquefort» применительно к\r\nсыру, произведенному в этом районе\r\nФранции, «Tuscany» применительно к оливковому маслу, произведенному в особом районе Италии, или чаю сорта\r\n«Darjeeling», который произрастает в Индии. Они также часто ассоциируются с винами и\r\nкрепкими спиртными напитками, как например, «Scotch Whisky», который производится в Шотландии.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 13.1pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Использование географических указаний не\r\nограничено сельскохозяйственными продуктами\r\nили алкогольными напитками. Они также\r\nмогут подчеркивать особые свойства продуктов,\r\nкоторые являются результатом человеческих факторов, присущих месту происхождения этих продуктов, в частности\r\nтаких, как особые способы и традиции изготовления. Таким местом происхождения может быть\r\nпоселок или город, регион или страна. Примером последней может служить указание\r\n«Switzerland» или «Swiss», которое во многих\r\nстранах воспринимается как географическое указание товаров, изготовленных в Швейцарии, и в частности, в отношении часов.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 14.35pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Какова разница\r\nмежду географическим указанием\r\nи товарным знаком?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Товарный знак – это обозначение, используемое\r\nпредприятиями для того, чтобы отличить\r\nих товары и услуги от товаров и услуг других предприятий. Товарный знак предоставляет владельцу право запрещать его использование другими\r\nлицами.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.55pt 50.45pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Географическое указание информирует\r\nпотребителей, что товар произведен в определенном\r\nместе и имеет особые свойства, которые определяются местом его изготовления. Оно может использоваться всеми\r\nпроизводителями, которые в обозначенном географическим указанием месте производят товары, обладающие характерными свойствами. Например,</span></p><p class=\"MsoBodyText\" style=\"margin-right: 7.5pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">«Switzerland» может использоваться всеми швейцарскими\r\nпроизводителями часов, которые соблюдают предписанные официальные стандарты производства для швейцарских часов,\r\nно<o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">«ROLEX» является\r\nисключительным правом изготовителей часов этой марки.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"font-size: 1rem;\">Как охраняются географические указания?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Географические указания охраняются в соответствии с\r\nнациональным законодательством и согласно широкому\r\nспектру концепций, в частности:</span></p><p class=\"MsoBodyText\" style=\"margin: 4.55pt 70.35pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">-</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">законодательством по борьбе с недобросовестной конкуренцией;</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm;\"><o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 0.05pt 0cm 0.0001pt; line-height: 12.6pt;\"><!--[if !supportLists]-->-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->законодательством по охране интересов\r\nпотребителей;<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm; line-height: 12.6pt;\"><!--[if !supportLists]-->-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->законодательством по охране сертификационных знаков; или<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 0.05pt 14.7pt 0.0001pt 0cm;\"><!--[if !supportLists]-->-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->специальными законами по\r\nохране географических указаний или наименований места происхождения.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin: 3.1pt 25.8pt 0.0001pt 0cm;\">По существу, лица, не имеющие надлежащего разрешения,\r\nне могут использовать географические\r\nуказания, если такое использование может ввести публику в заблуждение в отношении действительного происхождения\r\nтоваров.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"font-size: 1rem;\">Применимые санкции варьируются от\r\nсудебных запретов, предотвращающих неразрешенное\r\nиспользование, до возмещения убытков и штрафов или, в случае серьезных нарушений, тюремного заключения.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 28.15pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Как географические указания охраняются на международном уровне?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Ряд договоров, административные функции которых\r\nвыполняет ВОИС, предусматривают охрану\r\nгеографических указаний, главным образом это Парижская конвенция по охране промышленной собственности 1883 г. и\r\nЛиссабонское соглашение об охране наименований\r\nмест происхождения и их международной регистрации 1958 г.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 6.45pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Почему необходимо охранять географические указания?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"font-size: 1rem;\">Географические указания рассматриваются потребителями\r\nкак показатель происхождения и\r\nкачества товаров. Многие из них\r\nприобрели ценную репутацию, которая при отсутствии\r\nнадлежащей охраны может быть искажена нечестными коммерческими дельцами. Ложное использование географических\r\nуказаний лицами, не имеющими разрешения на такое использование, например, «Darjeeling» в отношении чая, который\r\nне выращивается на чайных плантациях\r\nДарджилинга, наносит ущерб потребителю и законным производителям такого чая. Потребители являются обманутыми и\r\nвведенными в заблуждение в том смысле, что они\r\nпокупают якобы настоящий продукт, обладающий особыми качествами и\r\nсвойствами, в то время как фактически они приобретают не представляющую никакой\r\nценности имитацию.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.55pt 7.15pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin: 0.05pt 35.45pt 0.0001pt 0cm;\">Законным производителям наносится ущерб, поскольку у\r\nних отнимают ценный бизнес и вредят установившейся репутации их\r\nпродукции.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin: 0.05pt 35.45pt 0.0001pt 0cm;\">&nbsp;</p><p class=\"MsoBodyText\" style=\"margin: 0.05pt 35.45pt 0.0001pt 0cm;\">ПРОМЫШЛЕННЫЙ ОБРАЗЕЦ<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.35pt;\">&nbsp;<span style=\"font-size: 1rem;\">Что такое промышленный образец?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"font-size: 1rem;\">Под промышленным образцом понимается художественное оформление или эстетический компонент изделия. Промышленный образец может содержать\r\nрельефные элементы, такие как форма\r\nизделия или элементы в пределах одной плоскости, например, рисунок,\r\nлинии или цветовое оформление.</span></p><p class=\"MsoNormal\" style=\"margin-top: 4.6pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">Промышленные образцы присутствуют в\r\nшироком ассортименте промышленных изделий\r\nи произведений ремесленного творчества, таких как приборы и медицинское оборудование, часы, ювелирные изделия,\r\nкухонная утварь, бытовые электроприборы, транспортные\r\nсредства, архитектурные объекты, рисунки на ткани, предметы досуга и другие предметы\r\nроскоши.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 15.4pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Для обеспечения охраны в соответствии с\r\nнациональным законодательством большинства\r\nстран, промышленный образец должен привлекать внимание. Это означает, что промышленный\r\nобразец главным образом имеет эстетическую природу и не предполагает охрану каких-либо технических особенностей изделия, частью\r\nкоторого он является.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 9.05pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">Как может осуществляться охрана\r\nпромышленных образцов?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">1)&nbsp;</span><span style=\"font-size: 1rem;\">В большинстве стран для\r\nполучения охраны в соответствии с законодательством\r\nо промышленных образцах\r\nпромышленный образец необходимо зарегистрировать.</span></p><p class=\"MsoListParagraph\" style=\"margin: 4.55pt 5.5pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">Обычно в соответствии с требованиями при регистрации образец\r\nдолжен обладать</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">«новизной»\r\nили «оригинальностью». В\r\nразных странах этим терминам даются различные\r\nопределения, и каждая страна может установить свой порядок регистрации. В общем случае<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin: 0.05pt 18.4pt 0.0001pt 0cm;\">«новый» означает, что насколько известно, аналогичный либо\r\nподобный образец до этого не существовал. При регистрации промышленного образца\r\nвыдается свидетельство о регистрации.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.45pt;\">&nbsp;<span style=\"font-size: 1rem;\">2)</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;</span><span style=\"font-size: 1rem;\">В зависимости от\r\nконкретного национального законодательства и от самого образца, промышленный образец может стать объектом охраны как произведение искусства в соответствии с законодательством по авторскому праву. В этом случае регистрация не требуется.</span></p><p class=\"MsoListParagraph\" style=\"margin: 0.05pt 6.75pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">В некоторых странах охрана одного и того\r\nже объекта может осуществляться параллельно: как промышленного образца и как\r\nпроизведения искусства. В других\r\nстранах авторское право и охрана\r\nпромышленных образцов взаимно исключают друг друга: если владелец выбирает\r\nодин вариант охраны,\r\nон не может одновременно воспользоваться другим.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 9.05pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">3)</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;</span><span style=\"font-size: 1rem;\">В некоторых странах\r\nможно также обеспечить охрану промышленного образца от имитации в соответствии с законодательством о недобросовестной конкуренции.</span></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 14.7pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Какую охрану\r\nобеспечивают промышленные образцы?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Владелец охраняемого промышленного образца получает\r\nправо препятствовать не санкционированному копированию или\r\nимитации образца третьими лицами. Это\r\nвключает право изготавливать,\r\nпредлагать, импортировать, экспортировать или продавать любой продукт, в который образец включен или к\r\nкоторому он относится. Он может также лицензировать или разрешать\r\nдругим использовать образец на взаимосогласованных\r\nусловиях. Владелец может также продать право на промышленный образец\r\nкому-либо другому.</span></p><p class=\"MsoNormal\" style=\"margin: 4.55pt 9.05pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Какова продолжительность действия охраны?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Срок действия охраны в соответствии с\r\nзаконодательством о промышленном образце обычно составляет пять лет с\r\nвозможностью последующего продления в\r\nбольшинстве случаев до 15 лет.</span></p><p class=\"MsoNormal\" style=\"margin: 4.55pt 26.8pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Имеются ли территориальные ограничения для охраны промышленного образца?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Обычно охрана промышленного образца ограничивается\r\nтерриторией страны, в которой предоставлена\r\nохрана. В рамках Гаагского соглашения\r\nо международном депонировании промышленных\r\nобразцов, административные функции которого выполняет ВОИС, предлагается процедура международной\r\nрегистрации. Заявитель может подать\r\nзаявку на одну международную\r\nрегистрацию в ВОИС. Затем образцу\r\nпредоставляется охрана в тех странах- участницах Соглашения, в которых заявитель желает\r\nее получить.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 12.65pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">Какова цель охраны промышленных образцов?<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Благодаря использованию промышленных образцов, изделие\r\nприобретает внешнюю и потребительскую\r\nпривлекательность; в результате возрастает\r\nкоммерческая стоимость изделия и вероятность его реализации на рынке сбыта.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 6.45pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.45pt;\">&nbsp;<span style=\"font-size: 1rem;\">Охрана промышленного образца:</span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\"><o:p></o:p></p><ul><li><span style=\"font-size: 1rem;\">помогает обеспечить справедливую прибыль на вложенный капитал;</span></li><li><span style=\"font-size: 1rem;\">повышает\r\nконкурентоспособность бизнеса, защищая образец от копирования и имитации\r\nконкурентами;</span></li><li><span style=\"font-size: 1rem;\">помогает\r\nувеличить коммерческую ценность компании, поскольку успешные промышленные образцы представляют собой деловые активы;</span></li><li><span style=\"font-size: 1rem;\">поощряет\r\nтворчество в промышленном и производственном секторах, а также в сфере\r\nтрадиционного искусства и художественных промыслов.</span></li></ul><h2 style=\"margin-left:0cm;tab-stops:34.2pt 34.25pt\">&nbsp;ПАТЕНТЫ</h2><h2 style=\"margin-left: 0cm;\"><o:p></o:p></h2><p class=\"MsoBodyText\" style=\"margin-top: 0.35pt;\">&nbsp;<span style=\"font-size: 1rem;\">Что такое патент?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"font-size: 1rem;\">Патент представляет собой исключительное право,\r\nпредоставленное на изобретение, которое\r\nможет быть продуктом или способом, позволяющим сделать что-либо по-новому и изобретательно или предлагающим новое\r\nтехническое решение задачи. Примеры\r\nпатентов варьируются от\r\nэлектрического освещения (патентовладельцами являлись Эдисон и Свэн) и пластики (патентовладельцем являлся\r\nБейкленд) до шариковых ручек (патентовладельцем являлся Биро), микропроцессоров (патентовладельцем являлся,\r\nнапример, Интель), телефонов (патентовладельцем являлся\r\nБелл) и компакт-дисков (патентовладельцем являлся Рассел).</span></p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 13.75pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">На какие виды изобретений предоставляется охрана?</span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Как правило, для получения патентной охраны\r\nизобретение должно удовлетворять следующим требованиям:</span></p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 8.75pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">-</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span><span style=\"font-size: 1rem;\">оно должно быть новым\r\nили иметь элемент новизны, то\r\nесть иметь определенное новое свойство,\r\nкоторое неизвестно среди существующих знаний (называемых</span></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 35.9pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">«известный уровень техники»)\r\nв данной технической области;<o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">-</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span><span style=\"font-size: 1rem;\">оно должно быть неочевидным\r\nили иметь изобретательский уровень, который не может быть выведен лицом, обладающим средними\r\nзнаниями в данной\r\nтехнической области;</span></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 10.8pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">-</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span><span style=\"font-size: 1rem;\">оно должно быть полезным\r\nили промышленно применимым;</span></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">-</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp; </span><span style=\"font-size: 1rem;\">наконец изобретение должно быть частью так называемого\r\n«объекта патентного права» согласно применимому\r\nзаконодательству. Во многих странах\r\nнаучные теории, математические\r\nметоды, сорта растений или породы животных, открытия природных веществ, коммерческие методы или методы\r\nмедицинского лечения (в отличие от медицинских продуктов) не считаются объектами патентного права.</span></p><p class=\"MsoListParagraph\" style=\"margin: 0cm 6.9pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Как охранять\r\nваши изобретения?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Как правило, наиболее эффективным способом охраны\r\nизобретения является получение патента. Патент выдается патентным ведомством\r\nстраны, в которой вы хотите получить охрану\r\nна ваше изобретение. Патентные права\r\nпредоставляются в обмен на полное раскрытие\r\nизобретателем технологии в патентной заявке\r\nв интересах публики.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.55pt 12.5pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">Другим способом получения охраны является\r\nсохранение технического секрета и хранение\r\nтак называемых промышленных секретов. Охрана\r\nс помощью промышленных секретов\r\nпозволяет сохранить конфиденциальный характер информации от недобросовестного раскрытия и использования не имеющими на то разрешения лицами.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 10.35pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">Как осуществляется выдача патента?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Первым шагом на пути к получению патента является\r\nподача патентной заявки. Как правило патентная заявка содержит название\r\nизобретения и краткое изложение той технической\r\nобласти, к которой оно относится, а также предпосылки и описание изобретения, изложенные достаточно ясным языком, чтобы\r\nлицо, имеющее средние знания в данной области,\r\nмогло оценить и воспроизвести его. Описания\r\nобычно сопровождаются такими визуальными материалами, как чертежи, схемы или диаграммы, которые помогают лучше изложить суть изобретения. Заявка также содержит различные\r\n«притязания», то есть информацию, которая\r\nопределяет объем охраны,\r\nпредоставляемой патентом.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.55pt 14.1pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">Как правило, патентные права защищаются в\r\nсуде, которые в большинстве систем имеют полномочия\r\nпресекать нарушения патентных прав. С\r\nдругой стороны, суд может также объявить патент недействительным после успешного оспаривания его третьими лицами.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 8.2pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Какие права предоставляет патент?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Владелец патента может в принципе запрещать другим на территории, охватываемой действием патента, изготавливать,\r\nиспользовать, предлагать для продажи, импортировать или продавать изобретение без его или ее согласия.</span></p><p class=\"MsoNormal\" style=\"margin: 4.6pt 7.3pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.45pt;\">&nbsp;<span style=\"font-size: 1rem;\">Кроме того, владелец патента может давать\r\nразрешение или выдавать лицензию другим сторонам на использование изобретения на\r\nвзаимно согласованных условиях. Владелец\r\nможет также продать право на изобретение другому лицу, которое затем становится\r\nновым владельцем этого патента.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 9.05pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.1pt;\">&nbsp;<span style=\"font-size: 1rem;\">Сколь обширной\r\nявляется патентная охрана?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">Как правило, патент выдается национальным патентным\r\nведомством. Однако последствия такой выдачи ограничены\r\nсоответствующей страной. Патенты\r\nмогут быть также выданы региональным\r\nведомством, которое выполняет работу в интересах ряда стран, например, Европейским патентным ведомством\r\n(ЕПВ) и Африканской региональной организацией\r\nпромышленной собственности (АРОПС). В\r\nрамках таких региональных систем, региональное\r\nпатентное ведомство принимает региональные патентные заявки или выдает региональные патенты, которые имеют такое\r\nже действие, что и поданные заявки или выданные\r\nпатенты в государствах-членах этого региона.\r\nОднако защита таких региональных патентов входит\r\nв компетенцию каждого государства-члена.</span></p><p class=\"MsoBodyText\" style=\"margin: 4.55pt 9.05pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">Договор о патентной кооперации (РСТ),\r\nадминистративные функции которого выполняет\r\nВОИС, – это соглашение о международном сотрудничестве в области\r\nпатентов. Этот договор главным образом направлен на\r\nрационализацию и сотрудничество в вопросах подачи, поиска и экспертизы патентных заявок и распространения содержащейся в них технической информации. РСТ не предусматривает выдачу «международных патентов». Выдача патентов и ответственность за них остается исключительной функцией\r\nведомств, упоминаемых в предыдущем пункте.</span></p><p class=\"MsoBodyText\" style=\"margin-right: 6pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;</p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">Какова цель охраны изобретений с помощью патентов?<o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;</p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 6.3pt 0.0001pt 0cm;\">Патенты стимулируют отдельных лиц, обеспечивая\r\nпризнание их творческого вклада и материальное\r\nвознаграждение за коммерческое использование их изобретений. Эти стимулы поощряют новаторство, что обеспечивает такое положение, при\r\nкотором качество жизни людей постоянно повышается.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;</p><p class=\"MsoBodyText\" style=\"margin-right: 12.55pt;\">Кроме того владельцы патентов обязаны в\r\nобмен на патентную охрану раскрыть для публики\r\nинформацию о своем изобретении. Такая\r\nсокровищница постоянно расширяющихся общих\r\nзнаний содействует дальнейшему развитию творческой и инновационной деятельности будущих\r\nисследователей и изобретателей.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-right: 12.55pt;\">&nbsp;</p><p class=\"MsoBodyText\" style=\"margin-right: 12.55pt;\">НОВЫЕ СОРТА РАСТЕНИЙ<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.35pt;\">&nbsp;</p><p class=\"MsoBodyText\" style=\"\">Какова цель охраны новых сортов растений?<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;</p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 9.8pt 0.0001pt 0cm;\">Обеспечение эффективной системы охраны сортов растений\r\nимеет целью поощрять выращивание\r\nновых сортов растений в интересах всего общества. Для селекции новых сортов растений\r\nтребуются значительные по объему вложения (навыков, труда, денег, времени и\r\nт.д.). Предоставление исключительных\r\nправ селекционерам – это стимул для выращивания новых сортов растений в сельском хозяйстве, садоводстве и лесном хозяйстве.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;</p><p class=\"MsoBodyText\" style=\"\">Как можно охранять новые растения?<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;</p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 6.45pt 0.0001pt 0cm;\">Международная конвенция по охране новых сортов\r\nрастений (Конвенция УПОВ) предусматривает\r\nохрану сортов растений с помощью «права селекционера», которое является особой формой прав интеллектуальной\r\nсобственности, специально сформулированной для этой цели.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;</p><p class=\"MsoBodyText\" style=\"margin: 0.05pt 7.3pt 0.0001pt 0cm;\">Соглашение ТРИПС обязывает членов Всемирной торговой\r\nорганизации (ВТО) предоставлять\r\nохрану сортов растений либо путем выдачи патентов, либо путем использования эффективной специальной системы\r\n(специальная система охраны сортов растений) или их сочетанием (статья 27.3(b)).<o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;</p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;</p><p class=\"MsoBodyText\" style=\"\">Когда возможна\r\nохрана сортов растений?<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;</p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 17.5pt 0.0001pt 0cm;\">В соответствии с положениями Конвенции УПОВ для\r\nполучения охраны сорт растения должен быть:<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;</p><p class=\"MsoBodyText\" style=\"margin-right: 65.75pt;\">(а)&nbsp;&nbsp;&nbsp;&nbsp; новым,\r\nа это означает, что он не использовался коммерчески в течение определенного периода времени до\r\nподачи заявки;<o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;</p><p class=\"MsoBodyText\" style=\"margin-right: 35.75pt;\">(b)&nbsp;&nbsp;&nbsp;&nbsp; отличимым,\r\nа это означает, что он явно отличается от любого другого сорта, существование которого является общеизвестным;<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;</p><p class=\"MsoBodyText\" style=\"margin-right: 18.8pt;\">(с) однородным, а это означает, что растения\r\nэтого сорта являются одинаковыми по своим\r\nосновным признакам с учетом разнообразия, которое можно ожидать от особенностей его размножения;<o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;</p><p class=\"MsoBodyText\" style=\"margin-right: 26.6pt;\">(d)&nbsp;&nbsp;&nbsp;&nbsp; стабильным,\r\nа это означает, что сорт должен оставаться неизменным по своим основным\r\nпризнакам на протяжении всего периода неоднократного размножения;<o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;</p><p class=\"MsoNormal\" style=\"margin-right: 14.5pt;\">(е) Иметь\r\nподходящее наименование, а это\r\nозначает, что он должен иметь название, под которым\r\nон обозначен.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 10.35pt;\">Какую охрану получает\r\nселекционер?<o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;</p><p class=\"MsoBodyText\" style=\"margin: 4.6pt 24.25pt 0.0001pt 0cm;\">В соответствии с положениями Акта 1991 г. Конвенции\r\nУПОВ следующие действия в отношении\r\nсеменного материала (семена или растения, или часть растения, которая используется для воспроизводства или\r\nразмножения сорта) требуют получения предварительного разрешения селекционера:<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 3.1pt 0cm 0.0001pt; line-height: 12.6pt;\"><!--[if !supportLists]-->-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->производство или воспроизводство;<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm; line-height: 12.6pt;\"><!--[if !supportLists]-->-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->доведение до кондиции для целей размножения;<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 0.1pt 0cm 0.0001pt; line-height: 12.6pt;\"><!--[if !supportLists]-->-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->предложение к продаже;<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm; line-height: 12.6pt;\"><!--[if !supportLists]-->-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->продажа или введение в иной коммерческий оборот;<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm; line-height: 12.6pt;\"><!--[if !supportLists]-->-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->вывоз;<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 0.05pt 0cm 0.0001pt; line-height: 12.6pt;\"><!--[if !supportLists]-->-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->ввоз;<o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm; line-height: 12.6pt;\"><!--[if !supportLists]-->-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->хранение для любой из вышеприведенных целей.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;</p><p class=\"MsoBodyText\" style=\"margin-right: 6.55pt;\">Если селекционер не имеет возможности\r\nосуществить свое право в отношении семенного\r\nматериала и этот сорт распространяется без разрешения, селекционер может\r\nосуществить свое право в отношении растительного материала.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"\"><span style=\"font-size: 1rem;\">Каким образом\r\nсистема позволяет селекционеру возместить свои вложения?</span><br></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\"><span style=\"font-size: 1rem;\">Давая разрешение на вышеупомянутые действия лицам,\r\nкоторые желают использовать этот\r\nсорт, селекционер может в качестве условия, потребовать уплаты вознаграждения. Таким образом в случае фермеров, покупающих семена, это вознаграждение включается в цену зерна.</span><br></p><p class=\"MsoBodyText\" style=\"margin: 4.55pt 9.05pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\"><span style=\"font-size: 1rem;\">В какой степени вы можете использовать охраняемый сорт\r\nрастения без необходимости запрашивать разрешение?</span><br></p><p class=\"MsoBodyText\" style=\"margin-right: 42.9pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 4.6pt;\">Важно отметить, что разрешение селекционера не требуется для:<o:p></o:p></p><p class=\"MsoBodyText\" style=\"\"><span style=\"font-size: 1rem;\">-</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">действий, совершаемых в некоммерческих целях;</span><br></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm; line-height: 12.6pt;\"><o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm; line-height: 12.6pt;\"><!--[if !supportLists]-->-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->действий, совершаемых в экспериментальных целях;</p><p class=\"MsoListParagraph\" style=\"margin-left: 0cm; line-height: 12.6pt;\"><span style=\"font-size: 1rem;\">-</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">действий, совершаемых в\r\nцелях создания новых сортов или использования других сортов.</span></p><p class=\"MsoListParagraph\" style=\"margin: 0.05pt 33.15pt 0.0001pt 0cm;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.55pt;\">&nbsp;<span style=\"font-size: 1rem;\">С учетом разумных ограничений и при\r\nусловии соблюдения законных интересов селекционеров\r\nКонвенция УПОВ разрешает членам УПОВ позволять фермерам использовать продукты своего урожая для целей\r\nразмножения (т.е. сохранять часть зерна, собранного фермером, для использования в качестве семян в следующий сезон\r\nна своей собственной ферме).</span></p><p class=\"MsoBodyText\" style=\"margin-right: 15.65pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">Каков срок действия прав селекционера?</span></p><p class=\"MsoBodyText\" style=\"\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\">&nbsp;<span style=\"font-size: 1rem;\">В Акте 1991 г. Конвенции УПОВ предусмотрен следующий\r\nминимальный срок:</span></p><p class=\"MsoBodyText\" style=\"margin-top: 4.55pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.45pt;\">&nbsp;<span style=\"font-size: 1rem;\">-</span><span style=\"font-size: 1rem; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><span style=\"font-size: 1rem;\">25 лет для деревьев\r\nи винограда;</span></p><p class=\"MsoListParagraph\" style=\"margin: 0.05pt 0cm 0.0001pt;\"><o:p></o:p></p><p class=\"MsoListParagraph\" style=\"margin: 0.05pt 0cm 0.0001pt;\"><!--[if !supportLists]-->-<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; line-height: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span><!--[endif]-->20 лет для других растений.<o:p></o:p></p><p class=\"MsoBodyText\" style=\"\">&nbsp;<span style=\"font-size: 1rem;\">На какую территорию распространяется охрана сорта растений?</span></p><p class=\"MsoBodyText\" style=\"margin-top: 0.05pt;\"><o:p></o:p></p><p class=\"MsoBodyText\" style=\"margin-top: 0.5pt;\">&nbsp;<span style=\"font-size: 1rem;\">Как правило, охрана предоставляется на национальном\r\nуровне в каждом из государств, где\r\nселекционер запрашивает охрану. Однако,\r\nМеждународная конвенция по охране новых сортов\r\nрастений (УПОВ) разрешает охрану на наднациональной основе, что может существенно сократить расходы и усилия,\r\nнеобходимые для получения охраны в нескольких\r\nстранах. Например, в\r\nЕвропейском союзе Ведомство сообщества по сортам растений предоставляет селекционеру право, которое\r\nдействует на территории всех его государств-\r\nчленов.</span></p>', 1, '2024-01-10 21:05:14', '2024-01-11 21:36:01');
INSERT INTO `posts` (`id`, `name`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Политика конфиденциальности', NULL, '<p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b>Политика в отношении обработки\r\nперсональных данных</b></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><br></b><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1. Общие положения Настоящая политика обработки\r\nперсональных данных составлена в соответствии с требованиями Федерального\r\nзакона от 27.07.2006. №152-ФЗ «О персональных данных» и определяет порядок обработки\r\nперсональных данных и меры по обеспечению безопасности персональных данных,\r\nпредпринимаемые ООО \"Одиннадцать друзей айтишника\" ОГРН 1221600024733\r\n(далее – Оператор).</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1.1. Оператор ставит своей важнейшей целью и\r\nусловием осуществления своей деятельности соблюдение прав и свобод человека и\r\nгражданина при обработке его персональных данных, в том числе защиты прав на\r\nнеприкосновенность частной жизни, личную и семейную тайну.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1.2. Настоящая политика Оператора в отношении\r\nобработки персональных данных (далее – Политика) применяется ко всей\r\nинформации, которую Оператор может получить о посетителях веб-сайта </span><a href=\"https://theoda.ru/\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">http</span><span lang=\"EN-US\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">s</span><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">://</span><span lang=\"EN-US\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">theoda</span><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">.ru/</span></a><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2. Основные понятия, используемые в Политике:</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2.1. Автоматизированная обработка персональных данных\r\n– обработка персональных данных с помощью средств вычислительной техники;</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2.2. Блокирование персональных данных – временное\r\nпрекращение обработки персональных данных (за исключением случаев, если\r\nобработка необходима для уточнения персональных данных);</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2.3. Веб-сайт – совокупность графических и\r\nинформационных материалов, а также программ для ЭВМ и баз данных,\r\nобеспечивающих их доступность в сети интернет по сетевому адресу </span><a href=\"https://theoda.ru/\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">https://theoda.ru</span></a><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">;</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2.4. Информационная система персональных данных —\r\nсовокупность содержащихся в базах данных персональных данных, и обеспечивающих\r\nих обработку информационных технологий и технических средств;</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2.5. Обезличивание персональных данных —\r\nдействия, в результате которых невозможно определить без использования\r\nдополнительной информации принадлежность персональных данных конкретному\r\nПользователю или иному субъекту персональных данных;</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2.6. Обработка персональных данных – любое\r\nдействие (операция) или совокупность действий (операций), совершаемых с\r\nиспользованием средств автоматизации или без использования таких средств с\r\nперсональными данными, включая сбор, запись, систематизацию, накопление,\r\nхранение, уточнение (обновление, изменение), извлечение, использование,\r\nпередачу (распространение, предоставление, доступ), обезличивание,\r\nблокирование, удаление, уничтожение персональных данных;<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2.7. Оператор – государственный орган,\r\nмуниципальный орган, юридическое или физическое лицо, самостоятельно или\r\nсовместно с другими лицами организующие и (или) осуществляющие обработку\r\nперсональных данных, а также определяющие цели обработки персональных данных,\r\nсостав персональных данных, подлежащих обработке, действия (операции),\r\nсовершаемые с персональными данными;</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2.8. Персональные данные – любая информация, относящаяся\r\nпрямо или косвенно к определенному или определяемому Пользователю веб-сайта </span><a href=\"https://theoda.ru/\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">https://theoda.ru</span></a><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">;</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2.9. Пользователь – любой посетитель веб-сайта </span><a href=\"https://theoda.ru/\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">https://theoda.ru/</span></a><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">;</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2.10. Предоставление персональных данных –\r\nдействия, направленные на раскрытие персональных данных определенному лицу или\r\nопределенному кругу лиц;</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2.11. Распространение персональных данных – любые\r\nдействия, направленные на раскрытие персональных данных неопределенному кругу\r\nлиц (передача персональных данных) или на ознакомление с персональными данными\r\nнеограниченного круга лиц, в том числе обнародование персональных данных в\r\nсредствах массовой информации, размещение в информационно-телекоммуникационных\r\nсетях или предоставление доступа к персональным данным каким-либо иным\r\nспособом;</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2.12. Трансграничная передача персональных данных\r\n– передача персональных данных на территорию иностранного государства органу\r\nвласти иностранного государства, иностранному физическому или иностранному\r\nюридическому лицу;<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2.13. Уничтожение персональных данных – любые\r\nдействия, в результате которых персональные данные уничтожаются безвозвратно с\r\nневозможностью дальнейшего восстановления содержания персональных данных в\r\nинформационной системе персональных данных и (или) уничтожаются материальные\r\nносители персональных данных.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">3. Оператор может обрабатывать следующие\r\nперсональные данные Пользователя</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">3.1. Фамилия, имя, отчество;</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">3.2. Электронный адрес;</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">3.3. Номера телефонов;</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">3.4. Также на сайте происходит сбор и обработка\r\nобезличенных данных о посетителях (в т.ч. файлов «cookie») с помощью сервисов\r\nинтернет-статистики (Яндекс Метрика и Гугл Аналитика и других).</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">3.5. Вышеперечисленные данные далее по тексту\r\nПолитики объединены общим понятием Персональные данные.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">4. Цели обработки персональных данных</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">4.1. Цель обработки персональных данных\r\nПользователя — информирование Пользователя посредством отправки электронных\r\nписем; предоставление доступа Пользователю к сервисам, информации и/или\r\nматериалам, содержащимся на веб-сайте.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">4.2. Также Оператор имеет право направлять\r\nПользователю уведомления о новых продуктах и услугах, специальных предложениях\r\nи различных событиях. Пользователь всегда может отказаться от получения\r\nинформационных сообщений, направив Оператору письмо на адрес электронной почты </span><span lang=\"EN-US\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">info</span><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">@intelright.com\r\nс пометкой «Отказ от уведомлений о новых продуктах и услугах и специальных\r\nпредложениях».</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">4.3. Обезличенные данные Пользователей,\r\nсобираемые с помощью сервисов интернет-статистики, служат для сбора информации\r\nо действиях Пользователей на сайте, улучшения качества сайта и его содержания.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">5. Правовые основания обработки персональных\r\nданных 5.1. Оператор обрабатывает персональные данные Пользователя только в\r\nслучае их заполнения и/или отправки Пользователем самостоятельно через\r\nспециальные формы, расположенные на сайте https://theoda.ru. Заполняя\r\nсоответствующие формы и/или отправляя свои персональные данные Оператору,\r\nПользователь выражает свое согласие с данной Политикой.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">5.2. Оператор обрабатывает обезличенные данные о\r\nПользователе в случае, если это разрешено в настройках браузера Пользователя\r\n(включено сохранение файлов «cookie» и использование технологии JavaScript).</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">6. Порядок сбора, хранения, передачи и других\r\nвидов обработки персональных данных Безопасность персональных данных, которые\r\nобрабатываются Оператором, обеспечивается путем реализации правовых,\r\nорганизационных и технических мер, необходимых для выполнения в полном объеме\r\nтребований действующего законодательства в области защиты персональных данных.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">6.1. Оператор обеспечивает сохранность\r\nперсональных данных и принимает все возможные меры, исключающие доступ к\r\nперсональным данным неуполномоченных лиц.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">6.2. Персональные данные Пользователя никогда, ни\r\nпри каких условиях не будут переданы третьим лицам, за исключением случаев,\r\nсвязанных с исполнением действующего законодательства.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">6.3. В случае выявления неточностей в\r\nперсональных данных, Пользователь может актуализировать их самостоятельно,\r\nпутем направления Оператору уведомление на адрес электронной почты Оператора </span><span lang=\"EN-US\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">info</span><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">@intelright.com\r\nс пометкой «Актуализация персональных данных».</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">6.4. Срок обработки персональных данных является\r\nнеограниченным. Пользователь может в любой момент отозвать свое согласие на\r\nобработку персональных данных, направив Оператору уведомление посредством\r\nэлектронной почты на электронный адрес Оператора </span><span lang=\"EN-US\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">info</span><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">@intelright.com с\r\nпометкой «Отзыв согласия на обработку персональных данных».</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">7. Трансграничная передача персональных данных</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">7.1. Оператор до начала осуществления\r\nтрансграничной передачи персональных данных обязан убедиться в том, что\r\nиностранным государством, на территорию которого предполагается осуществлять\r\nпередачу персональных данных, обеспечивается надежная защита прав субъектов\r\nперсональных данных.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">7.2. Трансграничная передача персональных данных\r\nна территории иностранных государств, не отвечающих вышеуказанным требованиям,\r\nможет осуществляться только в случае наличия согласия в письменной форме\r\nсубъекта персональных данных на трансграничную передачу его персональных данных\r\nи/или исполнения договора, стороной которого является субъект персональных данных.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">8. Заключительные положения</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">8.1. Пользователь может получить любые\r\nразъяснения по интересующим вопросам, касающимся обработки его персональных\r\nданных, обратившись к Оператору с помощью электронной почты </span><a href=\"mailto:info@intelright.com\"><span lang=\"EN-US\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">info</span><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">@intelright.com</span></a><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">8.2. В данном документе будут отражены любые\r\nизменения политики обработки персональных данных Оператором. Политика действует\r\nбессрочно до замены ее новой версией.</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"\"><span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">8.3. Актуальная версия Политики в свободном\r\nдоступе расположена в сети Интернет по адресу </span><a href=\"https://theoda.ru\" target=\"_blank\">https://theoda.ru</a><a href=\"https://theoda.ru\" target=\"_blank\"></a></p><p class=\"MsoNormal\" style=\"\"><br></p><p class=\"MsoNormal\" style=\"\"><span style=\"font-size:14.0pt\"><o:p></o:p></span></p>', 0, '2024-01-11 23:59:22', '2024-02-19 06:06:29'),
(6, 'Правовая информация', NULL, '<p class=\"MsoNormal\" align=\"center\" style=\"text-align: left; \"><b><span style=\"line-height: 107%;\">ПОЛИТИКА\r\nООО «ОДА» В ОТНОШЕНИИ МАТЕРИАЛОВ, ЗАГРУЖАЕМЫХ НА </span><span lang=\"EN-US\" style=\"line-height: 107%;\">Theoda</span><span style=\"line-height: 107%;\">.</span><span lang=\"EN-US\" style=\"line-height: 107%;\">ru</span></b><span style=\"line-height: 107%;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"line-height: 107%;\">Нажмите здесь для получения дополнительной\r\nинформации.</span></p><p class=\"MsoNormal\"><span style=\"line-height: 107%;\"><br></span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: left; \"><span style=\"line-height: 107%;\"><b>ПРАВОВЫЕ\r\nПОЛОЖЕНИЯ ТРЕТЬИХ ЛИЦ</b><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">В </span><span lang=\"EN-US\" style=\"line-height: 107%;\">theoda</span><span style=\"line-height: 107%;\"> и других распространяемых через </span><span lang=\"EN-US\" style=\"line-height: 107%;\">theoda</span><span style=\"line-height: 107%;\"> продуктах представлены\r\nопределенные материалы третьих лиц, использование которых требует соблюдения\r\nусловий соответствующих соглашений, в том числе лицензионных. Перечень этих\r\nусловий приводится по следующей ссылке….</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><br></span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: left; \"><span style=\"line-height: 107%;\"><b>ЗАЯВЛЕНИЯ\r\nО НАРУШЕНИИ ИНТЕЛЛЕКТУАЛЬНЫХ ПРАВ</b></span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: left; \"><span style=\"line-height: 107%;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Компания ООО «ОДА»\r\nуважает права других лиц на интеллектуальную собственность и призывает к этому\r\nвсех, кто пользуется нашим веб-сайтом и сервисами. Если вы считаете, что\r\nиспользование вашей работы в рамках нашего веб-сайта или сервисов нарушает ваши\r\nинтеллектуальные права, вы можете уведомить ООО «ОДА» об этом, использовав\r\nформу на этой странице...</span></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"line-height: 107%;\">&nbsp;</span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\">Дополнительную\r\nинформацию о законодательстве Российской Федерации об интеллектуальной\r\nсобственности можно найти на веб-сайте Федеральной службы по интеллектуальной\r\nсобственности по адресу: </span><a href=\"https://rospatent.gov.ru/ru/.\" target=\"_blank\">https://rospatent.gov.ru/ru/.</a></p><p class=\"MsoNormal\" style=\"\"><span style=\"line-height: 107%;\"><font face=\"Times New Roman, serif\"><span style=\"font-size: 14pt;\"><o:p></o:p></span></font></span></p>', 0, '2024-02-19 08:10:28', '2024-02-19 08:10:28'),
(7, 'Пользовательское соглашение', NULL, '<p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\">Настоящее Пользовательское соглашение регулирует\r\nотношения между ООО «Одиннадцать друзей айтишника» ОГРН 1221600024733 (далее\r\nименуемое — ОДА), и пользователем сети Интернет (далее — Пользователь) по\r\nиспользованию сервиса Цифровая платформа ОДА.</p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\"><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\">Под сервисом Цифровая платформа ОДА понимается\r\nсовокупность программного обеспечения интернет-сайта, размещенного в сети\r\nИнтернет по адресу: http<span lang=\"EN-US\" style=\"\">s</span>://www.<span lang=\"EN-US\" style=\"\">theoda</span>.ru/, мобильного приложения Цифровая\r\nплатформа ОДА (программы для ЭВМ, предназначенной для мобильных устройств),\r\nбазы данных, любого из перечисленных компонентов сервиса, интегрированных с\r\nпартнерскими сервисами/сайтами/приложениями, включая мини-приложения в\r\nсоциальных сетях, а также специализированные разделы сервисов/сайтов/приложений\r\nтретьих лиц, в которых, на основании соглашений между Цифровая платформа ОДА и\r\nтакими третьими лицами, представлена информация о товарах Партнеров Цифровая\r\nплатформа ОДА (далее — «Партнерские площадки»).</p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\"><br>1. Процедура\r\nприсоединения Пользователя к Пользовательскому соглашению</p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\">1.1. Перед использованием сервиса Цифровая платформа\r\nОДА Пользователь обязан ознакомиться с настоящим Пользовательским соглашением и\r\nв случае согласия с положениями Пользовательского соглашения присоединиться к\r\nнему путем совершения одного из следующих конклюдентных действий:</p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\"><o:p></o:p></p><ul style=\"margin-top:0cm\" type=\"disc\">\r\n <li class=\"MsoNormal\" style=\"line-height: 16.5pt;\">Нажатие кнопки «Войти» при регистрации по\r\n     номеру мобильного телефона или электронной почты на сайте http<span lang=\"EN-US\" style=\"\">s</span>://www.theoda.ru/, приложении Цифровая платформа ОДА;<o:p></o:p></li>\r\n <li class=\"MsoNormal\" style=\"margin-top: 7.5pt; line-height: 16.5pt;\">Нажатие\r\n     кнопки «Войти или создать аккаунт» с использованием VK ID или иного\r\n     сервиса третьего лица, если предусмотрено функционалом Сервиса;<o:p></o:p></li>\r\n <li class=\"MsoNormal\" style=\"line-height: 16.5pt;\">Нажатие кнопки «Заказать услугу» при\r\n     оформлении заказа Пользователем без авторизации на сайте <a href=\"https://theoda.ru/\">http<span lang=\"EN-US\" style=\"\">s</span>://theoda.ru/</a> либо\r\n     приложении Цифровая платформа ОДА, в том числе, мобильном либо приложении\r\n     в социальных сетях (далее по тексту настоящего Соглашения именуемые —\r\n     Сайт/сервис);</li>\r\n <li class=\"MsoNormal\" style=\"margin-top: 7.5pt; line-height: 16.5pt;\">Нажатие\r\n     кнопки «Заказать услугу» (или аналогичных) при оформлении заказа Пользователем\r\n     на Партнерских площадках.</li>\r\n</ul><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\">1.2. Присоединяясь к настоящему Пользовательскому\r\nсоглашению, Пользователь выражает полное и безоговорочное согласие со всеми его\r\nусловиями, в том числе, в части предоставления согласия Цифровая платформа ОДА на\r\nобработку персональных данных Пользователя на условиях, указанных в разделе 8\r\nнастоящего Пользовательского соглашения, и на получение рассылок\r\nинформационного и рекламного содержания.</p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\"><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\">1.3. Пользовательское соглашение может быть изменено Цифровая\r\nплатформа ОДА в одностороннем порядке без предварительного уведомления.\r\nПродолжение использования сервиса Пользователем после внесения изменений и/или\r\nдополнений в настоящее Пользовательское соглашение означает принятие и согласие\r\nПользователя с такими изменениями и/или дополнениями. Новая редакция\r\nПользовательского соглашения вступает в силу с момента ее опубликования на\r\nстранице сайта&nbsp;<a href=\"http://www.delivery-club.ru/agreement\" target=\"_blank\">http<span lang=\"EN-US\" style=\"\">s</span>://theoda.ru/agreement</a>, если иное не\r\nпредусмотрено новой редакцией Пользовательского соглашения.</p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\"><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\">1.4. Пользователь вправе отказаться от принятия\r\nизменений Пользовательского соглашения, осуществленных Цифровая платформа ОДА,\r\nчто означает полный отказ Пользователя от использования сервиса Цифровая\r\nплатформа ОДА.</p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\"><br>2. Регистрация\r\nПользователя</p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\">2.1. Пользователь соглашается пройти процедуру\r\nрегистрации, заполнив форму регистрации (на Сайте под заголовком «Авторизоваться»,\r\nв приложении — «Вход»), или воспользовавшись возможностью передачи данных\r\nПользователя от сервиса третьего лица в сервис Цифровая платформа ОДА, или от Цифровая\r\nплатформа ОДА в сервис третьего лица.</p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\"><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\">2.2. После заполнения обязательных полей и ознакомления\r\nс Пользовательским соглашением Пользователь присоединяется (принимает) к\r\nПользовательскому соглашению путем ввода номера телефона или электронной почты,\r\nчто по смыслу ст. 428 и ст. 438 Гражданского кодекса РФ является принятием\r\n(акцептом) оферты, а равно заключением договора, порождающего у Пользователя\r\nобязанности соблюдать условия Пользовательского соглашения, в том числе\r\nприменимых документов.</p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\"><o:p></o:p></p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\">2.3. Принятие Пользовательского соглашения допускается\r\nтолько в полном объеме, принятие Пользовательского соглашения с изъятиями и/или\r\nв части допускается только в случаях, прямо это предусматривающих.</p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\"><font color=\"#000000\" face=\"Times New Roman, serif\"><span style=\"font-size: 14pt;\"><o:p><br></o:p></span></font></p><p class=\"MsoNormal\" style=\"margin: 7.5pt 0cm; line-height: normal;\"><font color=\"#000000\" face=\"Times New Roman, serif\"><span style=\"font-size: 14pt;\"><o:p><br></o:p></span></font></p>', 0, '2024-02-19 11:02:47', '2024-02-19 11:02:47');
INSERT INTO `posts` (`id`, `name`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Введение в авторское право', NULL, '<p><span style=\"font-weight: bolder;\">Для начала мы разберемся, что можно охранять в качестве результата интеллектуальной деятельности.<br><br></span></p><p><span style=\"\">1. Что такое «Результаты интеллектуальной деятельности» (РИД)?</span><br></p><p><span style=\"\">Законодатель подразумевает под этим термином объект, являющийся результатом творческого труда человека. Возможно, вы слышите это определение как белый шум, который не раскрывает ничего. Но это не так.</span><br></p><p><span style=\"\"><span style=\"font-weight: bolder;\">Здесь есть три ключевых критерия:</span></span><br></p><ul><li><span style=\"\"><span style=\"font-weight: bolder;\">РИД — это объект, то есть конечный продукт, который должен существовать в объективной форме.</span>&nbsp;К примеру, слова песни должны быть записаны, сказаны или каким-то другим образом выражены в объективной форме. То есть стихотворение в вашей голове не будет охраняться до тех пор, пока не получит какую-либо объективную форму.</span><br></li><li><span style=\"font-weight: bolder;\">Объект должен носить творческий характер.</span>&nbsp;Творчество как таковое является результатом интеллектуальной деятельности человека, невозможной без сознания и осознания целей и результатов такой деятельности. Говоря проще, если вы опрокинули стакан кофе на лист бумаги, то этот лист бумаги не будет охраняться как РИД. Но если вы опрокинули этот стакан на холст осознанно, додумали, доработали и задумали его как картину, арт-объект, то в этом случае холст со следами кофе - вполне себе охраняемый РИД.</li><li><span style=\"font-weight: bolder;\">Объект должен быть создан человеком.&nbsp;</span>Это может показаться глупостью, но это правда важно. Автором может являться только человек, а не юридическое лицо, общественная организация, государство или механизм. К примеру, не охраняются в качестве РИД записи или фотографии камер наружного наблюдения, поскольку это механическая запись устройством, совершающаяся без участия человека.</li></ul><p><u><span style=\"\">Есть курьезный случай, когда в 2011 году в Индонезии макака сделала селфи на фотоаппарат, установленный исследователем. Снимок разлетелся по Сети и встал вопрос, кому же принадлежат права на фотографию: обезьяне, исследователю, который поставил камеру, либо же фотография должна быть в общественном достоянии.</span><br></u></p><p><span style=\"\"><u>В результате суда право было признано за фотографом. Почему не за обезьяной? Потому что такое признание было бы признанием обезьяны полноценным участником общественных отношений, который, теоретически, может самостоятельно распоряжаться правами на эту фотографию.</u></span><br></p><p><span style=\"\"><u>Почему не было признано общественным достоянием – это спорный и неоднозначный вопрос. В данном случае юристы исследователя хорошо сделали свое дело).<br></u></span><br></p><p><span style=\"\">2. Какие бывают РИД?</span><br></p><p><span style=\"\">Количество разновидностей РИД очень много. Не все их виды указаны в законе.&nbsp;<span style=\"font-weight: bolder;\">Условно можно их поделить на те, которые охраняются нормами об авторских и смежных правах и нормами о патентном праве.</span></span><br></p><p><span style=\"\"><span style=\"font-weight: bolder;\">Объекты авторских прав:</span></span><br></p><ul><li><span style=\"\">Произведения науки, литературы и искусства (кино, фотографии, картины, стихи, песни, музыка, книги и т.д.)</span><br></li><li>Программы для ЭВМ (программное обеспечение, различные приложения)</li><li>Базы данных</li></ul><p><span style=\"\"><span style=\"font-weight: bolder;\">Объекты смежных прав:</span></span><br></p><ul><li><span style=\"\">Исполнения (к примеру, если вы включите на площади песню Аллы Пугачевой, то Алла Борисовна сможет заявить о нарушении её прав на исполнение, но не о нарушении ее прав на текст или музыку песни)</span><br></li><li>Фонограммы (да, они тоже охраняются отдельно)</li><li>Сообщение в эфир или по кабелю радио- или телепередач (может показаться странным объектом, но на охране таких объектов живут спортивные каналы, которые получают эксклюзивные права на трансляцию матчей и других спортивных мероприятий)</li></ul><p><span style=\"\"><span style=\"font-weight: bolder;\">Средства индивидуализации*</span></span><br></p><ul><li><span style=\"\">Товарный знак</span><br></li><li>Фирменные наименования</li><li>Коммерческие обозначения</li></ul><p><span style=\"\">* Принципы их защиты аналогичны принципам защиты результатов интеллектуальной деятельности. Однако у средств индивидуализации есть несколько особенностей, о которых мы поговорим в другой раз.</span><br></p><p><span style=\"\"><span style=\"font-weight: bolder;\">Объекты патентного права*</span></span><br></p><ul><li><span style=\"\">Изобретение</span><br></li><li>Полезная модель</li><li>Промышленный образе</li></ul><p>*В рамках серии этих статей мы не будем подробно разбирать объекты патентных прав.<br><br></p><p><span style=\"\">3. Что не является РИД?</span><br></p><p><span style=\"\"><span style=\"font-weight: bolder;\">Идеи</span></span><br></p><p><span style=\"\">Часто бывает ситуация, когда приходят клиенты и говорят о том, что у них скопировали модель бизнеса или сайт. Начинаешь смотреть детали и понимаешь: да, все примерно такой же тематики, но все другое: картинки, тексты, структура, акции, видео, цветовое решение. В этом случае, как бы вам обидно ни было, нужно помнить, что&nbsp;<span style=\"font-weight: bolder;\">правовая защита не предоставляется идеям.</span></span><br></p><p><span style=\"\"><u>К примеру, существует невероятное множество вариаций произведений с одним и тем же сюжетом сказки про Золушку. Но эти самостоятельные произведения заимствуют только идею и не нарушают авторского права изначального создателя.</u></span><br></p><p><span style=\"\"><span style=\"font-weight: bolder;\">Произведения народного творчества (фольклор), не имеющие конкретных авторов</span></span><br></p><p><span style=\"\">Эти произведения находятся в общественном достоянии, что значит право на их свободное использование. Но помните, что мемы, демотиваторы и другие весёлые картинки и видеоролики, чьих авторов вы не знаете, не являются произведениями народного творчества.</span><br></p><p><span style=\"\"><u>Показательный пример – правообладатель мема «Ждун» в свое время инициировал несколько судебных дел из-за незаконного использования изображения «Ждуна»</u></span><br></p><p><span style=\"\"><span style=\"font-weight: bolder;\">Также не подлежат охране:</span></span><br></p><ul><li><span style=\"\">концепции (к примеру, концепция антикафе была в свое время уникальной, но со временем эту&nbsp; концепцию построения бизнеса заимствовали многие предприниматели);</span><br></li><li>открытия и факты (в противном случае это бы стопорило прогресс и свободное распространение информации);</li><li>сообщения о событиях и фактах, имеющие исключительно информационный характер (сообщения о новостях дня, программы телепередач, расписания движения транспортных средств и тому подобное);</li><li>решения технических, организационных и иных задач, языки программирования, геологическая информация о недрах (те же причины).</li><li>официальные документы государственных органов и органов местного самоуправления муниципальных образований, в том числе законы, другие нормативные акты, судебные решения, иные материалы законодательного, административного и судебного характера, официальные документы международных организаций, а также их официальные переводы (по сути дела, это документы, которые содержат в себе информацию о фактах, о правилах, по которым должны действовать другие участники общества. Очевидно, что если бы эти документы охранялись, то использовать их свободно было бы нельзя);</li><li>государственные символы и знаки (флаги, гербы, ордена, денежные знаки и тому подобное), а также символы и знаки муниципальных образований.</li></ul><p><span style=\"font-weight: bolder;\">Если вы поймали себя на мысли, что кто-то украл ваше творение и его использует</span>, вначале подумайте, что ваш враг украл: творение или идею? А уж потом идите в суд. Это позволит вам избежать траты лишних нервов и денег.<br><br></p><p><span style=\"\">4. Когда возникают права на РИД и где их регистрировать?</span><br></p><p><span style=\"\"><span style=\"font-weight: bolder;\">Права на РИД возникают с момента создания непосредственно у автора</span>&nbsp;(то есть у человека или группы людей), который создал этот РИД.</span><br></p><p><span style=\"\"><span style=\"font-weight: bolder;\">Регистрировать авторские права нигде не нужно</span>&nbsp;(да-да-да. Это большой секрет, который от вас скрывают). Они возникают просто по факту создания.</span><br></p><p><span style=\"\"><span style=\"font-weight: bolder;\">Зачем кто-то тогда их регистрирует?</span></span><br></p><p>Ну, если говорить точнее, их не регистрируют, а депонируют, т.е. приносят в какое-то место, в какую-то организацию и говорят: «Я автор». Все. Организация не может проверить, так ли это на самом деле. По факту это депонирование подтверждает, что на определенную дату РИД существовал, и вы заявили себя как его автор.</p><p><span style=\"\"><span style=\"font-weight: bolder;\">Что будет, если кто-то решит это оспорить?</span>&nbsp;Если кто-то докажет, что до того, как вы задепонировали это произведение, оно существовало с указанием другого автора, этот кто-то сможет в суде признать себя автором произведения, а вас – нарушителем. В сухом остатке вам просто нужно в случае суда доказать, что определенный РИД существовал на такую-то дату с вашим авторством. Но о вопросах доказывания - в другой раз.<br></span><br></p><p><span style=\"\">5. А как мне проверить эту информацию? Вдруг вы тут всё наврали?</span><br></p><p><span style=\"\">Правильно, не надо никому в нашем мире верить на слово. Хватайте Гражданский кодекс, открывайте часть 4 и погружайтесь в глубины права. Я серьезно. Если вы работаете с первоисточником, у вас есть крепкая база, на которой вы сможете строить свою аргументацию.</span><br></p><p><span style=\"\">Также в дополнение к Гражданскому кодексу неплохо бы почитать Бернскую конвенцию об охране литературных и художественных произведений, заглянуть на сайт Всемирной организации интеллектуальной собственности и почитать российскую судебную практику, которая систематизируется и отражается в постановлениях пленума верховного суда Российской Федерации.</span></p><p><span style=\"\"><br></span></p>', 1, '2024-02-19 12:44:58', '2024-02-19 13:02:07'),
(9, 'Что такое Theoda', NULL, '<p>Страница в разработке</p>', 0, '2024-02-20 07:03:24', '2024-02-20 07:03:24');

-- --------------------------------------------------------

--
-- Структура таблицы `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `type` int NOT NULL,
  `fio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fio_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fio_otch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snils` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grazhd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ur_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ur_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inn_kpp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ogrn_ogrnip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `type`, `fio`, `fio_name`, `fio_otch`, `inn`, `snils`, `grazhd`, `passport`, `address`, `ur_name`, `ur_address`, `inn_kpp`, `ogrn_ogrnip`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(24, 5, 0, 'Петров Иван Иванович', NULL, NULL, '4321234123', '12341234', 'РФ', '1234-567890', 'РФ, г. Москва, ул. Набережная, 25', NULL, NULL, NULL, NULL, '+79889889898', 'petrov@test.ru', '2023-12-25 21:57:55', '2023-12-25 21:57:55'),
(25, 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ИП Петров Иван Иванович', 'РФ, г. Москва, ул. Набережная, 25', '123413443', '123412341234', '+79889889898', 'petrov@test.ru', '2023-12-25 22:09:27', '2023-12-25 22:09:27'),
(26, 4, 0, 'Симонова Анна Петровна', NULL, NULL, '12341234', '12341234', 'РФ', '1234-12341234', 'г. Рязань, ул. Московская, 14а', NULL, NULL, NULL, NULL, '+790998798778', 'simona@test.ru', '2023-12-26 00:54:32', '2023-12-26 00:54:32'),
(27, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ООО Симона', 'г. Рязань, ул. Московская, 14а', '32165445', '6546546', '+79099879877', 'simona@test.ru', '2023-12-26 00:55:58', '2023-12-26 00:55:58'),
(28, 11, 0, 'Иванов', 'Иван', 'Иванович', '65465432', '321654654', 'РФ', '3213-2321321', 'г. Москва, ул. Набережная, 34', NULL, NULL, NULL, NULL, '+79888988989', 'scentr2010@gmail.com', '2023-12-29 00:01:59', '2024-02-19 15:52:14'),
(29, 17, 0, 'Сагдиев Наиль Фаритович', NULL, NULL, '164407949224', '100-256-098 96', 'Рф', '9205 771757', 'г Казань, ул Черноморская, д 9, кв 32', NULL, NULL, NULL, NULL, '+79276701898', 'Musicmen_nail@mail.ru', '2024-02-11 18:15:13', '2024-02-11 18:15:13'),
(30, 16, 0, 'Исламов Адель Рустемович', NULL, NULL, '165813045553', '12912321912', 'Россия', '9214 859 152, выдан МВД по республике Татарстан в г. Казани. от 27.02.2015', '420056, г. Казань, великая, д. 314', NULL, NULL, NULL, NULL, '89872907651', 'friendsofit@yandex.ru', '2024-02-12 01:03:22', '2024-02-12 01:03:22'),
(31, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ООО \"Рога и копыта\"', '420111, г. Казань, ул. Пушкина, дом колотушкина', '16581305443', '214124124214124', '89876789678', 'gosha@mail.ru', '2024-02-12 03:52:48', '2024-02-12 03:52:48'),
(32, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ИП Иванов И.И.', 'awetae', 'tawet', 'awet', 'wetawet', 'awet@tetset.wer', '2024-02-12 03:54:36', '2024-03-18 03:48:18'),
(34, 16, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ООО \"Рога и копыта\"', '420111, г. Казань, ул. Пушкина, дом колотушкина', '16581305443', '214124124214124', '89876789678', 'gosha@mail.ru', '2024-02-12 03:58:18', '2024-02-12 03:58:18'),
(35, 11, 0, 'test', 'dasd', 'qweqwe', '2342342342', '234243234', 'РФ', '1234-123421', 'Адрес проживания с индексом', NULL, NULL, NULL, NULL, 'Телефон', 'ttttttest@test.ru', '2024-02-19 15:55:13', '2024-02-19 15:55:35'),
(36, 11, 0, 'asdfasdf', 'asdfasdfsadf', 'azcvzxcvz', '23452345', '234525', 'RF', '24543-2345234', 'Адрес проживания с индексом', NULL, NULL, NULL, NULL, '123123', 'testset@qwer.ru', '2024-02-19 15:57:12', '2024-02-19 15:57:12'),
(37, 7, 0, 'Фамилия', 'Имя', 'Отчество', 'ИНН', 'СНИЛС', 'Гражданство', NULL, 'Адрес проживания с индексом', NULL, NULL, NULL, NULL, '123123', 'vitas.devitas@yandex.ru', '2024-02-19 20:54:15', '2024-02-19 20:54:15'),
(38, 7, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Наименование организации/ Наименование ИП', 'Юридический адрес', 'ИНН/КПП', 'ОГРН/ОГРНИП', '123123', 'vitas.devitas@yandex.ru', '2024-02-20 09:42:28', '2024-02-20 09:42:28');

-- --------------------------------------------------------

--
-- Структура таблицы `rights`
--

CREATE TABLE `rights` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `rights`
--

INSERT INTO `rights` (`id`, `name`, `price`, `term`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Регистрация авторского права на произведение', '100', 10, 'Официальное подтверждение номера, даты и содержания авторской работы. Используется для подачи судебного иска, в случае нарушения авторских прав или при плагиате.', 1, '2023-12-23 00:12:15', '2024-03-11 09:27:56'),
(2, 'Регистрация программы для ЭВМ', '100', 10, 'Внесение программы для ЭВМ или базы данных в соответствующий Реестр, направление (выдача) свидетельства, публикация сведений о зарегистрированной программе для ЭВМ или базы данных в официальном бюллетене Роспатента.', 1, '2023-12-23 00:12:22', '2024-03-11 09:28:05'),
(3, 'Регистрация промышленного образца', '100', 10, 'Государственная регистрация промышленного образца и выдача патента на промышленный образец, его дубликата.', 1, '2023-12-23 00:12:31', '2024-03-11 09:28:09'),
(4, 'Регистрация товарного знака', '1000', 10, 'Товарный знак (знак обслуживания) – это обозначение, служащее для индивидуализации товаров, выполняемых работ или оказываемых услуг.', 1, '2023-12-23 00:12:38', '2024-03-18 01:32:53'),
(5, 'Регистрация изобретения', '1000', 10, 'Описание процесса регистрации изобретения', 1, NULL, '2024-03-20 12:25:26'),
(6, 'Регистрация полезной модели', '1000', 0, 'Описание регистрации полезной модели', 0, '2024-03-20 12:26:07', '2024-03-20 12:26:07');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'danger', 'true', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `textblocks`
--

CREATE TABLE `textblocks` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptions` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `textblocks`
--

INSERT INTO `textblocks` (`id`, `title`, `descriptions`, `created_at`, `updated_at`) VALUES
(1, 'Текстовый блок', 'Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока Текст текстового блока', NULL, '2024-03-12 10:22:19');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_otch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `telegram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chat_id_support` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `name_name`, `name_otch`, `email`, `email_verified_at`, `password`, `status`, `telegram`, `remember_token`, `chat_id_support`, `created_at`, `updated_at`) VALUES
(7, 'Петров Сергей Иванович', '', '', 'vitas.devitas@yandex.ru', '2024-02-19 01:01:25', '$2y$10$ivLJcbvRTT6Kq6Tl6ZhRzeIM2WBViBJvw15QJOWAYbtKO8qNlVjK6', '0', NULL, 'JsXVxRzWbeOIOidOFNxEcIVHc7yW9RCHNNzPaeYf5wE3TquvDyzKXfvFOZzn', 9464198758049, '2023-12-24 19:54:53', '2024-03-04 08:49:41'),
(9, 'Султанов Шамиль Джагфарович', '', '', 'shamil.sultanov@kazgik.ru', '2024-01-05 06:20:36', '$2y$10$wD5bXVf7H78vrCzMthNJ8eITtwiosXd2r8WfGcKwtBshmh.7JZCwq', '0', NULL, 'MMN6PykQrfjOKcMpIYUlCxjQ3QnCxkRxwN019yqGklgPJSE2TOHHkYVrx69o', 9237730021019, '2023-12-26 12:13:14', '2024-01-05 06:20:36'),
(11, 'Иванов', 'Иван', 'Иванович', 'scentr2010@gmail.com', '2023-12-27 22:51:43', '$2y$10$iutD0pUAGPmW9MZNq3b/3OV3vncKHbFXnk//PKKqZqD01xh4r7hbm', '0', 'phpmaxpro', 'z4Cxewmbtc7ivYCeTdIG7T1KAtJHE7dHaFd8kprtEcYWH6aObSEfaKIp6rv4', 9637597795338, '2023-12-27 22:02:24', '2024-03-07 10:38:38'),
(15, 'test', '', '', 'mnem0nik@mail.ru', '2024-02-11 14:08:32', '$2y$10$DUQPFzbYMGaZWTAq3rEo6OyQm6KwkNklT.rSJt0ATUYudn44wYule', '0', NULL, NULL, NULL, '2024-02-11 14:08:05', '2024-02-11 14:08:32'),
(16, 'Адель', '', '', 'friendsofit@YANDEX.RU', '2024-02-11 15:00:26', '$2y$10$DlBdBpYYi7Ndh1r9pWXvaetH5uKBLuCKe2JUtBqic5PeLrZHTf8Lm', '0', NULL, 'Uci2C7KRYQgMfnkB1mHmyyyZwZowbkdUqYQIRMrzLBlC5Il57u1rCqGstPsv', 1669745470478, '2024-02-11 14:59:55', '2024-02-19 20:29:10'),
(17, 'Сагдиев Наиль Фаритович', '', '', 'Musicmen_nail@mail.ru', '2024-02-11 18:10:31', '$2y$10$pd0ie9RhYEPSeo.hFicCwOZr6HXhppMdOqQ3FrCstKRb3CcGqqWO2', '0', 'Наиль Сагдиев', NULL, NULL, '2024-02-11 18:09:04', '2024-02-11 18:11:25'),
(18, 'Щербиина', '', '', 'essherbinina@bk.ru', '2024-02-15 05:41:45', '$2y$10$8girCh3ggA6svB7b0PA9WONXOdbQNfnG4Bf2wnYalh/mQLSv1g4vW', '0', NULL, NULL, NULL, '2024-02-15 05:38:43', '2024-02-15 05:41:45'),
(19, 'Rory', '', '', 'pJYVPl.tdbhbcq@flexduck.click', NULL, '$2y$10$RS9C5Z9699JM0cTwrFvrdu2FXMqPruj2x.7xxLmpu7RMjAkj9PErK', '1', NULL, NULL, NULL, '2024-02-17 06:56:50', '2024-02-18 14:58:09'),
(20, 'Meilani', '', '', 'JqnLvx.tthpdmh@rightbliss.beauty', NULL, '$2y$10$33CO6zljSMmJXyk3cLZK/.FRgLTEtJn2uAJTqNEwABtwz/kp2KMJi', '1', NULL, NULL, NULL, '2024-02-18 07:37:40', '2024-02-18 14:58:17'),
(21, 'Kamari', '', '', 'kaim_80@hotmail.com', NULL, '$2y$10$6hkRcJqx2f4snNn95RtASe/yYi5UsWXjRTAhallxVDkpieSH2JCqC', '1', NULL, NULL, NULL, '2024-02-18 10:00:00', '2024-02-18 14:58:21'),
(22, 'Giana', '', '', 'kcherezov@gentell.com', NULL, '$2y$10$i24.vd2ihI/2CCH1ct2S5uV5DlTqugAbg4JghHkUfqQID96ONmWBO', '1', NULL, NULL, NULL, '2024-02-18 13:14:39', '2024-02-18 14:58:50'),
(23, 'Gael', '', '', 'smoeller@grand-rapids.mi.us', NULL, '$2y$10$/RkAC.UJ8OhyMSS5yPcRiejrSKzsVQRrXD663loxkvqT1QkQzLICC', '1', NULL, NULL, NULL, '2024-02-18 14:40:55', '2024-02-18 14:59:04'),
(24, 'Carter', '', '', 'carolyn@samnichols.com', NULL, '$2y$10$a2cYO3tDB2woKEn22Kennet7nRAyqR2cJ3q8KUPj.8g8GML/CnW2G', '1', NULL, NULL, NULL, '2024-02-18 17:58:53', '2024-02-25 17:49:59'),
(25, 'Kylian', '', '', 'hyqmet.mece@mass.gov', NULL, '$2y$10$D0kIQbyQWlcl8qnQXwwquudaHJaDn6BGEHytQyxKnn6PkMkVof6Eu', '1', NULL, NULL, NULL, '2024-02-18 20:13:22', '2024-02-25 17:50:04'),
(26, 'Oaklyn', '', '', 'shalley@thearcnepa.org', NULL, '$2y$10$iHD7KXhLUmBKZX5sNXY7lOrOqKx43fAcCh3HtHnyIoEJtpQisiJrq', '1', NULL, NULL, NULL, '2024-02-19 06:36:04', '2024-02-25 17:50:10'),
(27, 'Gabriella', '', '', 'tyson.brice@maryland.gov', NULL, '$2y$10$1GeWCA1RgOtmpqC.ZX2LMeGBMhL3vapJMGMbwscvXbE6v7aVgN8ey', '1', NULL, NULL, NULL, '2024-02-19 09:12:11', '2024-02-25 17:50:26'),
(28, 'Zaid', '', '', 'deutsch89@gmail.com', NULL, '$2y$10$nSKoHkQ4x..DiUJs38kRrOcOnggikO3FfZWScdUsLE4dg8br9t./K', '0', NULL, NULL, NULL, '2024-02-19 16:35:18', '2024-02-19 16:35:18'),
(29, 'Melvin', '', '', 'blakelowrey@gmail.com', NULL, '$2y$10$8enevm4pWBgXil7EzfVIJuq7OaBSzVlShYk9yby50fYZlohiCSPPC', '0', NULL, NULL, NULL, '2024-02-19 17:02:51', '2024-02-19 17:02:51'),
(30, 'Jase', '', '', 'staceys@goalbookapp.com', NULL, '$2y$10$XyvfWY46S9pmsVQFjbC3hedsQ77GcKX3.8tSlAep4tL/k6ox2gSNy', '0', NULL, NULL, NULL, '2024-02-19 17:34:15', '2024-02-19 17:34:15');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `administrators_email_unique` (`email`);

--
-- Индексы таблицы `advantages`
--
ALTER TABLE `advantages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bot_callback_query`
--
ALTER TABLE `bot_callback_query`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `chat_id_2` (`chat_id`,`message_id`);

--
-- Индексы таблицы `bot_chat`
--
ALTER TABLE `bot_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_id` (`old_id`);

--
-- Индексы таблицы `bot_chat_join_request`
--
ALTER TABLE `bot_chat_join_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `bot_chat_member_updated`
--
ALTER TABLE `bot_chat_member_updated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `bot_chosen_inline_result`
--
ALTER TABLE `bot_chosen_inline_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `bot_conversation`
--
ALTER TABLE `bot_conversation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `status` (`status`);

--
-- Индексы таблицы `bot_edited_message`
--
ALTER TABLE `bot_edited_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `chat_id_2` (`chat_id`,`message_id`);

--
-- Индексы таблицы `bot_inline_query`
--
ALTER TABLE `bot_inline_query`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `bot_message`
--
ALTER TABLE `bot_message`
  ADD PRIMARY KEY (`chat_id`,`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `forward_from` (`forward_from`),
  ADD KEY `forward_from_chat` (`forward_from_chat`),
  ADD KEY `reply_to_chat` (`reply_to_chat`),
  ADD KEY `reply_to_message` (`reply_to_message`),
  ADD KEY `via_bot` (`via_bot`),
  ADD KEY `left_chat_member` (`left_chat_member`),
  ADD KEY `migrate_from_chat_id` (`migrate_from_chat_id`),
  ADD KEY `migrate_to_chat_id` (`migrate_to_chat_id`),
  ADD KEY `reply_to_chat_2` (`reply_to_chat`,`reply_to_message`);

--
-- Индексы таблицы `bot_poll`
--
ALTER TABLE `bot_poll`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bot_poll_answer`
--
ALTER TABLE `bot_poll_answer`
  ADD PRIMARY KEY (`poll_id`,`user_id`);

--
-- Индексы таблицы `bot_pre_checkout_query`
--
ALTER TABLE `bot_pre_checkout_query`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `bot_request_limiter`
--
ALTER TABLE `bot_request_limiter`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bot_shipping_query`
--
ALTER TABLE `bot_shipping_query`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `bot_telegram_update`
--
ALTER TABLE `bot_telegram_update`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `chat_message_id` (`chat_id`,`message_id`),
  ADD KEY `edited_message_id` (`edited_message_id`),
  ADD KEY `channel_post_id` (`channel_post_id`),
  ADD KEY `edited_channel_post_id` (`edited_channel_post_id`),
  ADD KEY `inline_query_id` (`inline_query_id`),
  ADD KEY `chosen_inline_result_id` (`chosen_inline_result_id`),
  ADD KEY `callback_query_id` (`callback_query_id`),
  ADD KEY `shipping_query_id` (`shipping_query_id`),
  ADD KEY `pre_checkout_query_id` (`pre_checkout_query_id`),
  ADD KEY `poll_id` (`poll_id`),
  ADD KEY `poll_answer_poll_id` (`poll_answer_poll_id`),
  ADD KEY `my_chat_member_updated_id` (`my_chat_member_updated_id`),
  ADD KEY `chat_member_updated_id` (`chat_member_updated_id`),
  ADD KEY `chat_id` (`chat_id`,`channel_post_id`),
  ADD KEY `chat_join_request_id` (`chat_join_request_id`);

--
-- Индексы таблицы `bot_user`
--
ALTER TABLE `bot_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Индексы таблицы `bot_user_chat`
--
ALTER TABLE `bot_user_chat`
  ADD PRIMARY KEY (`user_id`,`chat_id`),
  ADD KEY `chat_id` (`chat_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `operators`
--
ALTER TABLE `operators`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `operators_email_unique` (`email`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rights`
--
ALTER TABLE `rights`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `textblocks`
--
ALTER TABLE `textblocks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `advantages`
--
ALTER TABLE `advantages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `bot_chat_join_request`
--
ALTER TABLE `bot_chat_join_request`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for this entry';

--
-- AUTO_INCREMENT для таблицы `bot_chat_member_updated`
--
ALTER TABLE `bot_chat_member_updated`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for this entry';

--
-- AUTO_INCREMENT для таблицы `bot_chosen_inline_result`
--
ALTER TABLE `bot_chosen_inline_result`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for this entry';

--
-- AUTO_INCREMENT для таблицы `bot_conversation`
--
ALTER TABLE `bot_conversation`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for this entry';

--
-- AUTO_INCREMENT для таблицы `bot_edited_message`
--
ALTER TABLE `bot_edited_message`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for this entry';

--
-- AUTO_INCREMENT для таблицы `bot_request_limiter`
--
ALTER TABLE `bot_request_limiter`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for this entry';

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `operators`
--
ALTER TABLE `operators`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `rights`
--
ALTER TABLE `rights`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `textblocks`
--
ALTER TABLE `textblocks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `bot_callback_query`
--
ALTER TABLE `bot_callback_query`
  ADD CONSTRAINT `bot_callback_query_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `bot_user` (`id`),
  ADD CONSTRAINT `bot_callback_query_ibfk_2` FOREIGN KEY (`chat_id`,`message_id`) REFERENCES `bot_message` (`chat_id`, `id`);

--
-- Ограничения внешнего ключа таблицы `bot_chat_join_request`
--
ALTER TABLE `bot_chat_join_request`
  ADD CONSTRAINT `bot_chat_join_request_ibfk_1` FOREIGN KEY (`chat_id`) REFERENCES `bot_chat` (`id`),
  ADD CONSTRAINT `bot_chat_join_request_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `bot_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `bot_chat_member_updated`
--
ALTER TABLE `bot_chat_member_updated`
  ADD CONSTRAINT `bot_chat_member_updated_ibfk_1` FOREIGN KEY (`chat_id`) REFERENCES `bot_chat` (`id`),
  ADD CONSTRAINT `bot_chat_member_updated_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `bot_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `bot_chosen_inline_result`
--
ALTER TABLE `bot_chosen_inline_result`
  ADD CONSTRAINT `bot_chosen_inline_result_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `bot_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `bot_conversation`
--
ALTER TABLE `bot_conversation`
  ADD CONSTRAINT `bot_conversation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `bot_user` (`id`),
  ADD CONSTRAINT `bot_conversation_ibfk_2` FOREIGN KEY (`chat_id`) REFERENCES `bot_chat` (`id`);

--
-- Ограничения внешнего ключа таблицы `bot_edited_message`
--
ALTER TABLE `bot_edited_message`
  ADD CONSTRAINT `bot_edited_message_ibfk_1` FOREIGN KEY (`chat_id`) REFERENCES `bot_chat` (`id`),
  ADD CONSTRAINT `bot_edited_message_ibfk_2` FOREIGN KEY (`chat_id`,`message_id`) REFERENCES `bot_message` (`chat_id`, `id`),
  ADD CONSTRAINT `bot_edited_message_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `bot_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `bot_inline_query`
--
ALTER TABLE `bot_inline_query`
  ADD CONSTRAINT `bot_inline_query_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `bot_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `bot_message`
--
ALTER TABLE `bot_message`
  ADD CONSTRAINT `bot_message_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `bot_user` (`id`),
  ADD CONSTRAINT `bot_message_ibfk_2` FOREIGN KEY (`chat_id`) REFERENCES `bot_chat` (`id`),
  ADD CONSTRAINT `bot_message_ibfk_3` FOREIGN KEY (`forward_from`) REFERENCES `bot_user` (`id`),
  ADD CONSTRAINT `bot_message_ibfk_4` FOREIGN KEY (`forward_from_chat`) REFERENCES `bot_chat` (`id`),
  ADD CONSTRAINT `bot_message_ibfk_5` FOREIGN KEY (`reply_to_chat`,`reply_to_message`) REFERENCES `bot_message` (`chat_id`, `id`),
  ADD CONSTRAINT `bot_message_ibfk_6` FOREIGN KEY (`via_bot`) REFERENCES `bot_user` (`id`),
  ADD CONSTRAINT `bot_message_ibfk_7` FOREIGN KEY (`left_chat_member`) REFERENCES `bot_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `bot_poll_answer`
--
ALTER TABLE `bot_poll_answer`
  ADD CONSTRAINT `bot_poll_answer_ibfk_1` FOREIGN KEY (`poll_id`) REFERENCES `bot_poll` (`id`);

--
-- Ограничения внешнего ключа таблицы `bot_pre_checkout_query`
--
ALTER TABLE `bot_pre_checkout_query`
  ADD CONSTRAINT `bot_pre_checkout_query_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `bot_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `bot_shipping_query`
--
ALTER TABLE `bot_shipping_query`
  ADD CONSTRAINT `bot_shipping_query_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `bot_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `bot_telegram_update`
--
ALTER TABLE `bot_telegram_update`
  ADD CONSTRAINT `bot_telegram_update_ibfk_1` FOREIGN KEY (`chat_id`,`message_id`) REFERENCES `bot_message` (`chat_id`, `id`),
  ADD CONSTRAINT `bot_telegram_update_ibfk_10` FOREIGN KEY (`poll_id`) REFERENCES `bot_poll` (`id`),
  ADD CONSTRAINT `bot_telegram_update_ibfk_11` FOREIGN KEY (`poll_answer_poll_id`) REFERENCES `bot_poll_answer` (`poll_id`),
  ADD CONSTRAINT `bot_telegram_update_ibfk_12` FOREIGN KEY (`my_chat_member_updated_id`) REFERENCES `bot_chat_member_updated` (`id`),
  ADD CONSTRAINT `bot_telegram_update_ibfk_13` FOREIGN KEY (`chat_member_updated_id`) REFERENCES `bot_chat_member_updated` (`id`),
  ADD CONSTRAINT `bot_telegram_update_ibfk_14` FOREIGN KEY (`chat_join_request_id`) REFERENCES `bot_chat_join_request` (`id`),
  ADD CONSTRAINT `bot_telegram_update_ibfk_2` FOREIGN KEY (`edited_message_id`) REFERENCES `bot_edited_message` (`id`),
  ADD CONSTRAINT `bot_telegram_update_ibfk_3` FOREIGN KEY (`chat_id`,`channel_post_id`) REFERENCES `bot_message` (`chat_id`, `id`),
  ADD CONSTRAINT `bot_telegram_update_ibfk_4` FOREIGN KEY (`edited_channel_post_id`) REFERENCES `bot_edited_message` (`id`),
  ADD CONSTRAINT `bot_telegram_update_ibfk_5` FOREIGN KEY (`inline_query_id`) REFERENCES `bot_inline_query` (`id`),
  ADD CONSTRAINT `bot_telegram_update_ibfk_6` FOREIGN KEY (`chosen_inline_result_id`) REFERENCES `bot_chosen_inline_result` (`id`),
  ADD CONSTRAINT `bot_telegram_update_ibfk_7` FOREIGN KEY (`callback_query_id`) REFERENCES `bot_callback_query` (`id`),
  ADD CONSTRAINT `bot_telegram_update_ibfk_8` FOREIGN KEY (`shipping_query_id`) REFERENCES `bot_shipping_query` (`id`),
  ADD CONSTRAINT `bot_telegram_update_ibfk_9` FOREIGN KEY (`pre_checkout_query_id`) REFERENCES `bot_pre_checkout_query` (`id`);

--
-- Ограничения внешнего ключа таблицы `bot_user_chat`
--
ALTER TABLE `bot_user_chat`
  ADD CONSTRAINT `bot_user_chat_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `bot_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bot_user_chat_ibfk_2` FOREIGN KEY (`chat_id`) REFERENCES `bot_chat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;