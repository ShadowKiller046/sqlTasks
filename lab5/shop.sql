-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 29 2021 г., 12:07
-- Версия сервера: 10.4.17-MariaDB
-- Версия PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bookformats`
--

CREATE TABLE `bookformats` (
  `form_id` smallint(2) NOT NULL,
  `form_name` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `bookformats`
--

INSERT INTO `bookformats` (`form_id`, `form_name`) VALUES
(4, '60x88/16'),
(2, '70x100/16'),
(3, '84x108/16'),
(1, 'n/a');

-- --------------------------------------------------------

--
-- Структура таблицы `booksinfo`
--

CREATE TABLE `booksinfo` (
  `b_n` smallint(3) NOT NULL,
  `b_id` int(4) NOT NULL DEFAULT 0,
  `b_new` varchar(3) NOT NULL DEFAULT 'No',
  `b_title` varchar(70) NOT NULL DEFAULT '',
  `price` float(5,2) NOT NULL CHECK (`price` > 0),
  `b_pages` int(11) DEFAULT NULL,
  `b_date` date DEFAULT curdate(),
  `b_tirage` int(11) DEFAULT NULL,
  `b_topic` smallint(3) DEFAULT 0,
  `b_category` smallint(3) DEFAULT 0,
  `b_publisher` smallint(2) NOT NULL DEFAULT 0,
  `b_format` smallint(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `booksinfo`
--

INSERT INTO `booksinfo` (`b_n`, `b_id`, `b_new`, `b_title`, `price`, `b_pages`, `b_date`, `b_tirage`, `b_topic`, `b_category`, `b_publisher`, `b_format`) VALUES
(2, 5110, 'No', 'Аппаратные средства мультимедия. Видеосистема РС', 15.51, 400, '2000-07-24', 5000, 2, 2, 2, 2),
(8, 4985, 'No', 'Освой самостоятельно модернизацию и ремонт ПК за 24 часа, 2-е изд.', 18.90, 288, '2000-07-07', 5000, 2, 2, 3, 2),
(9, 5141, 'No', 'Структуры данных и алгоритмы.', 37.80, 384, '2000-09-29', 5000, 2, 2, 3, 2),
(20, 5127, 'Yes', 'Автоматизация инженерно-графических работ', 11.58, 256, '2000-06-15', 5000, 2, 2, 4, 2),
(31, 5110, 'No', 'Аппаратные средства мультимедиа. Видеосистема PC', 15.51, 400, '2000-07-24', 5000, 2, 3, 2, 2),
(46, 5199, 'No', 'Железо IBM 2001.', 30.07, 368, '2000-02-12', 5000, 2, 3, 5, 2),
(50, 3851, 'Yes', 'Защита информации и безопасность компьютерных систем', 26.00, 480, '1999-02-04', 5000, 2, 4, 6, 3),
(58, 3932, 'No', 'Как превратить персональный компьютер в измерительный комплекс', 7.65, 144, '1999-06-09', 5000, 2, 5, 7, 4),
(59, 4713, 'No', 'Plug- ins. Встраиваемые приложения для музыкальных программ', 11.41, 144, '2000-02-22', 5000, 2, 5, 7, 2),
(175, 5217, 'No', 'Windows ME. Новейшие версии программ', 16.57, 320, '2000-08-25', 5000, 3, 6, 8, 2),
(176, 4829, 'No', 'Windows 2000 Professional шаг за шагом с СD', 27.25, 320, '2000-04-28', 5000, 3, 6, 9, 2),
(188, 5170, 'No', 'Linux Русские версии', 24.43, 346, '2000-09-29', 5000, 3, 7, 7, 2),
(191, 860, 'No', 'Операционная система UNIX', 3.50, 395, '1997-05-05', 5000, 3, 8, 2, 3),
(203, 44, 'No', 'Ответы на актуальные вопросы по OS/2 Warp', 5.00, 352, '1996-03-20', 5000, 3, 9, 6, 4),
(206, 5176, 'No', 'Windows Me. Спутник пользователя', 12.79, 306, '2000-10-10', 5000, 3, 9, 10, 1),
(209, 5462, 'No', 'Язык программирования С++. Лекции и упражнения', 29.00, 656, '2000-12-12', 5000, 4, 10, 6, 3),
(210, 4982, 'No', 'Язык программирования С. Лекции и упражнения', 29.00, 432, '2000-07-12', 5000, 4, 10, 6, 3),
(220, 4687, 'No', 'Эффективное использование C++ .50 рекомендаций по улучшению ваших прог', 17.60, 240, '2000-02-03', 5000, 4, 10, 7, 2),
(228, 1337, 'No', 'Harry Potter and the Sorcerer`s Stone', 7.84, 223, '1997-06-26', 10000, 4, 11, 10, 1),
(230, 1400, 'No', 'Harry Potter and the Chamber of Secrets', 8.01, NULL, NULL, NULL, 1, 1, 11, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `cat_id` smallint(3) NOT NULL,
  `cat_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(10, 'C&C++'),
(7, 'Linux'),
(1, 'n/a'),
(8, 'Unix'),
(6, 'Windows 2000'),
(5, 'Інші книги'),
(9, 'Інші операційні системи'),
(3, 'Апаратні засоби ПК'),
(4, 'Захист і безпека ПК'),
(2, 'Підручники'),
(11, 'Фентезі');

-- --------------------------------------------------------

--
-- Структура таблицы `publishernames`
--

CREATE TABLE `publishernames` (
  `p_id` smallint(2) NOT NULL,
  `pub_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `publishernames`
--

INSERT INTO `publishernames` (`p_id`, `pub_name`) VALUES
(2, 'BHV С. -Петербург'),
(11, 'Bloomsbury'),
(6, 'Diasoft'),
(1, 'n/a'),
(3, 'Вильямс'),
(7, 'ДМК'),
(5, 'МикроАрт'),
(4, 'Питер'),
(10, 'Русская редакция'),
(8, 'Триумф'),
(9, 'Эком');

-- --------------------------------------------------------

--
-- Структура таблицы `topics`
--

CREATE TABLE `topics` (
  `top_id` smallint(3) NOT NULL,
  `top_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `topics`
--

INSERT INTO `topics` (`top_id`, `top_name`) VALUES
(1, 'n/a'),
(2, 'Використання ПК в цілому'),
(5, 'Магічний світ'),
(3, 'Операційні системи'),
(4, 'Програмування');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bookformats`
--
ALTER TABLE `bookformats`
  ADD PRIMARY KEY (`form_id`),
  ADD UNIQUE KEY `form_name` (`form_name`);

--
-- Индексы таблицы `booksinfo`
--
ALTER TABLE `booksinfo`
  ADD PRIMARY KEY (`b_n`),
  ADD KEY `b_publisher` (`b_publisher`),
  ADD KEY `b_format` (`b_format`),
  ADD KEY `b_topic` (`b_topic`),
  ADD KEY `b_category` (`b_category`),
  ADD KEY `idx_title` (`b_title`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`);

--
-- Индексы таблицы `publishernames`
--
ALTER TABLE `publishernames`
  ADD PRIMARY KEY (`p_id`),
  ADD UNIQUE KEY `pub_name` (`pub_name`);

--
-- Индексы таблицы `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`top_id`),
  ADD UNIQUE KEY `top_name` (`top_name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bookformats`
--
ALTER TABLE `bookformats`
  MODIFY `form_id` smallint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `publishernames`
--
ALTER TABLE `publishernames`
  MODIFY `p_id` smallint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `topics`
--
ALTER TABLE `topics`
  MODIFY `top_id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `booksinfo`
--
ALTER TABLE `booksinfo`
  ADD CONSTRAINT `booksinfo_ibfk_1` FOREIGN KEY (`b_publisher`) REFERENCES `publishernames` (`p_id`),
  ADD CONSTRAINT `booksinfo_ibfk_2` FOREIGN KEY (`b_format`) REFERENCES `bookformats` (`form_id`),
  ADD CONSTRAINT `booksinfo_ibfk_3` FOREIGN KEY (`b_topic`) REFERENCES `topics` (`top_id`),
  ADD CONSTRAINT `booksinfo_ibfk_4` FOREIGN KEY (`b_category`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
