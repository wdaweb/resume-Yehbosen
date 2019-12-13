-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2019-12-13 09:53:11
-- 伺服器版本： 10.4.8-MariaDB
-- PHP 版本： 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `resume`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `id` int(5) UNSIGNED NOT NULL,
  `acc` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin`
--

INSERT INTO `admin` (`id`, `acc`, `pw`) VALUES
(1, 'root', '1234');

-- --------------------------------------------------------

--
-- 資料表結構 `autobiography`
--

CREATE TABLE `autobiography` (
  `id` int(5) UNSIGNED NOT NULL,
  `text` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `autobiography`
--

INSERT INTO `autobiography` (`id`, `text`, `sh`) VALUES
(21, '一、家庭背景\r\n我姓葉名柏森，家住新北市新莊區。從小，父母就用民主的方式管教我們，希望我們能夠獨立自主，主動學習，累積人生的經驗。因此，逐漸培養了我樂觀的人生態度，讓我遇到挫折的時候，總是能快地再站起來，不怕苦的重新開始。\r\n\r\n二、求學歷程\r\n在學期間，成績鋪通，無參加社團，是顧家之人\r\n\r\n三、工作經歷\r\n畢業後於工程業服務，原以為會繼續下去，最後還是想走不同的路\r\n\r\n五、未來展望\r\n人生有夢築夢踏實，我希望自己能在程式上多加涉獵，使自己成為一個有遠見的資訊人。且要學習溝通及人際關係的拓展，以符合注重團體合作的企業精神。我也要求自己在語言上要多下功夫，讓自己有專精研究的本錢，作為繼續深造的基礎，並應用在工程實務上。且願可以達成夢想，在未來中努力吸收學習以求將來在管理上有不凡的成果。\r\n', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `information`
--

CREATE TABLE `information` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '個人資料',
  `sh` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `information`
--

INSERT INTO `information` (`id`, `text`, `sh`) VALUES
(5, '畢業於台北科大，初入程式的迷途小書僮，原工作是機電工程師', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(5) UNSIGNED NOT NULL,
  `file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '路徑',
  `Portfolio` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '作品集',
  `sh` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `portfolio`
--

INSERT INTO `portfolio` (`id`, `file`, `Portfolio`, `sh`) VALUES
(8, 'banner-image_02.jpg', '', 1),
(9, 'dongshan-cafe_06.jpg', '', 1),
(10, 'dongshan-cafe_09.jpg', '', 1),
(11, 'Geography_22.jpg', '', 1),
(12, '咖啡養成記.jpg', '', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `portrait`
--

CREATE TABLE `portrait` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '路徑',
  `text` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `portrait`
--

INSERT INTO `portrait` (`id`, `file`, `text`, `sh`) VALUES
(2, 'dongshan-cafe_03.jpg', '', 0),
(3, '未命名-1.jpg', '', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `requirement`
--

CREATE TABLE `requirement` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '求職條件',
  `sh` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `requirement`
--

INSERT INTO `requirement` (`id`, `text`, `sh`) VALUES
(1, '年薪百萬', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `skill`
--

CREATE TABLE `skill` (
  `id` int(5) UNSIGNED NOT NULL,
  `text` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '技能專長',
  `sh` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `skill`
--

INSERT INTO `skill` (`id`, `text`, `sh`) VALUES
(1, 'photoshop/illustrator/HTML/CSS/JavaScript/jQuery/PHP/boostrap/Git', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `study`
--

CREATE TABLE `study` (
  `id` int(5) UNSIGNED NOT NULL,
  `text` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '學經歷',
  `sh` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `study`
--

INSERT INTO `study` (`id`, `text`, `sh`) VALUES
(1, '在學期間無任何不良嗜好，亦無參加社團，是個愛家之人', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `work`
--

CREATE TABLE `work` (
  `id` int(5) UNSIGNED NOT NULL,
  `text` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '工作經歷',
  `sh` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `work`
--

INSERT INTO `work` (`id`, `text`, `sh`) VALUES
(1, '進入職場後，無任何不良嗜好，忠心於工作，是個愛家之人', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `autobiography`
--
ALTER TABLE `autobiography`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `portrait`
--
ALTER TABLE `portrait`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `requirement`
--
ALTER TABLE `requirement`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `study`
--
ALTER TABLE `study`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `autobiography`
--
ALTER TABLE `autobiography`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `information`
--
ALTER TABLE `information`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `portrait`
--
ALTER TABLE `portrait`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `requirement`
--
ALTER TABLE `requirement`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `study`
--
ALTER TABLE `study`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `work`
--
ALTER TABLE `work`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
