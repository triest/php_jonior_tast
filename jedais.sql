-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 12 2020 г., 20:43
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `jedais`
--

-- --------------------------------------------------------

--
-- Структура таблицы `jedi`
--

CREATE TABLE `jedi` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `jedi`
--

INSERT INTO `jedi` (`id`, `name`) VALUES
(1, 'One'),
(2, 'Two');

-- --------------------------------------------------------

--
-- Структура таблицы `padawan`
--

CREATE TABLE `padawan` (
  `id` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jedi_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `padawan`
--

INSERT INTO `padawan` (`id`, `name`, `jedi_id`) VALUES
(1, 'padavan1', 1),
(2, 'padavan2', 1),
(3, 'padavan3', 1),
(4, 'padavan4', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `jedi`
--
ALTER TABLE `jedi`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `padawan`
--
ALTER TABLE `padawan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jedi_id` (`jedi_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `jedi`
--
ALTER TABLE `jedi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `padawan`
--
ALTER TABLE `padawan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `padawan`
--
ALTER TABLE `padawan`
  ADD CONSTRAINT `padawan_ibfk_1` FOREIGN KEY (`jedi_id`) REFERENCES `jedi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
