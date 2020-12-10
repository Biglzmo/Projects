-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 10 2020 г., 05:21
-- Версия сервера: 10.4.10-MariaDB
-- Версия PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kzexpress`
--

-- --------------------------------------------------------

--
-- Структура таблицы `adminn`
--

CREATE TABLE `adminn` (
  `Login` varchar(50) NOT NULL,
  `Pasword` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `adminn`
--

INSERT INTO `adminn` (`Login`, `Pasword`, `id`) VALUES
('admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `all_goods`
--

CREATE TABLE `all_goods` (
  `ID` int(11) NOT NULL,
  `Type_OF_Good` varchar(50) NOT NULL,
  `Name_OF_Good` varchar(50) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `technic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`id`, `user_id`, `technic_id`) VALUES
(15, 12352, 17),
(17, 12352, 17),
(18, 12353, 17),
(24, 12348, 6),
(25, 12348, 8),
(26, 12348, 21),
(27, 12348, 8),
(28, 12348, 20),
(29, 12348, 19),
(30, 12348, 18),
(31, 12348, 20),
(32, 12348, 16),
(33, 12348, 18),
(34, 12348, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `basket2`
--

CREATE TABLE `basket2` (
  `ID_Good` int(11) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Name_OF_Good` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `clothes`
--

CREATE TABLE `clothes` (
  `ID` int(11) NOT NULL,
  `Name_Clothe` varchar(50) NOT NULL,
  `Clothe_Price` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `clothes`
--

INSERT INTO `clothes` (`ID`, `Name_Clothe`, `Clothe_Price`, `picture`) VALUES
(6, 'Nike Zoom Fly 3', 35000, 'images\\nike1.jpg'),
(7, 'Nike Kyrie 6 Pro Ed', 45000, 'images\\nike2.jpg'),
(8, 'Columbia Jacket 2020Y', 55000, 'images\\nike3.jpg'),
(9, 'Woman Dress PRS', 15000, 'images\\nike4.jpg'),
(10, 'Half Army Grey Boots', 10500, 'images\\nike5.jpg'),
(11, 'UNIQLO Mickey Shirt', 2500, 'images\\nike6.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `other`
--

CREATE TABLE `other` (
  `ID` int(11) NOT NULL,
  `Name_Other` varchar(50) NOT NULL,
  `Other_Price` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `other`
--

INSERT INTO `other` (`ID`, `Name_Other`, `Other_Price`, `picture`) VALUES
(6, 'Children Toy Car Lamborgini', 14500, 'images\\other1.jpg'),
(7, 'Cars Ties for Hummer H2 2015Y', 65000, 'images\\other2.jpg'),
(8, 'Naviforce Waterproof Watches 2015Y', 15400, 'images\\other3.jpg'),
(9, 'NIke Sport Knee Pod Spec Fixator', 4420, 'images\\other4.jpg'),
(10, 'The Book of Keelts production in 2019Y', 12000, 'images\\other5.jpg'),
(11, 'Constructor Lego Sity 562220231SSE', 140000, 'images\\other6.jpg\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `technic`
--

CREATE TABLE `technic` (
  `ID` int(11) NOT NULL,
  `Name_Tech` varchar(50) NOT NULL,
  `Tech_Price` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `technic`
--

INSERT INTO `technic` (`ID`, `Name_Tech`, `Tech_Price`, `picture`) VALUES
(16, 'Samsung Galaxy A21s 32Gb Black Smartphone with 5G ', 150000, 'images\\samsung.jpg'),
(17, 'In-ear headphones Apple Bluetooth AirPods Pro (MWP', 95000, 'images\\air.jpg'),
(18, 'Smart Watch Apple Watch Series 6 GPS, 40mm Gold Al', 205000, 'images\\watch.jpg'),
(19, 'Apple Macbook Pro 2020 TWS MMD 4 256GB Apple A14 B', 850000, 'images/MacBook.jpg'),
(20, 'Samsung Galaxy Watch 3 prod year 2018 Nike PRO Edi', 152000, 'images/galaxy1.jpg'),
(21, 'Samsung Smart TV production year 2020 SmartRetina ', 850000, 'images\\tv.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `userr`
--

CREATE TABLE `userr` (
  `User_ID` int(11) NOT NULL,
  `User_Login` varchar(50) NOT NULL,
  `User_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `userr`
--

INSERT INTO `userr` (`User_ID`, `User_Login`, `User_password`) VALUES
(12346, 'asassa', 'sadsadsdsa'),
(12347, 'dalen_murat', '988874445'),
(12348, 'Dalen', 'Dalenmurat'),
(12349, 'dima', '789666555'),
(12350, 'login', 'PAssword'),
(12351, 'dale', 'dfddfd'),
(12352, 'Bauka', '12345'),
(12353, 'Sal', '12345');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `adminn`
--
ALTER TABLE `adminn`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `basket2`
--
ALTER TABLE `basket2`
  ADD PRIMARY KEY (`ID_Good`);

--
-- Индексы таблицы `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `other`
--
ALTER TABLE `other`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `technic`
--
ALTER TABLE `technic`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `userr`
--
ALTER TABLE `userr`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `adminn`
--
ALTER TABLE `adminn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `clothes`
--
ALTER TABLE `clothes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `other`
--
ALTER TABLE `other`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `technic`
--
ALTER TABLE `technic`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `userr`
--
ALTER TABLE `userr`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12354;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
