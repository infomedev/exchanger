-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 29 2015 г., 20:05
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `exchangebox`
--

-- --------------------------------------------------------

--
-- Структура таблицы `eb_abitcoin`
--

CREATE TABLE IF NOT EXISTS `eb_abitcoin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `obmen_id` bigint(20) NOT NULL DEFAULT '0',
  `adress` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_admin_captcha`
--

CREATE TABLE IF NOT EXISTS `eb_admin_captcha` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `createdate` datetime NOT NULL,
  `sess_hash` varchar(150) NOT NULL,
  `num1` varchar(10) NOT NULL DEFAULT '0',
  `num2` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `eb_admin_captcha`
--

INSERT INTO `eb_admin_captcha` (`id`, `createdate`, `sess_hash`, `num1`, `num2`) VALUES
(22, '2015-12-29 18:57:17', '9ac5f5ee7c26d25ae236bf6f04f9fc0d', '6', '1'),
(20, '2015-12-29 18:30:50', 'f8496b6aac7b233fb151a20b02837bde', '3', '3');

-- --------------------------------------------------------

--
-- Структура таблицы `eb_archive_data`
--

CREATE TABLE IF NOT EXISTS `eb_archive_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(250) NOT NULL,
  `meta_key2` varchar(250) NOT NULL,
  `item_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_value` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_bids`
--

CREATE TABLE IF NOT EXISTS `eb_bids` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `ref_id` bigint(20) NOT NULL DEFAULT '0',
  `user_skidka` varchar(35) NOT NULL DEFAULT '0',
  `user_sksumm` varchar(35) NOT NULL DEFAULT '0',
  `fio` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `tel` tinytext NOT NULL,
  `schet1` tinytext NOT NULL,
  `schet2` tinytext NOT NULL,
  `hashed` tinytext NOT NULL,
  `valut1` tinytext NOT NULL,
  `valut2` tinytext NOT NULL,
  `valut1i` bigint(20) NOT NULL DEFAULT '0',
  `valut2i` bigint(20) NOT NULL DEFAULT '0',
  `valut1type` tinytext NOT NULL,
  `valut2type` tinytext NOT NULL,
  `curs1` varchar(35) NOT NULL DEFAULT '0',
  `curs2` varchar(35) NOT NULL DEFAULT '0',
  `summ1` varchar(35) NOT NULL DEFAULT '0',
  `summ2` varchar(35) NOT NULL DEFAULT '0',
  `summz1` varchar(35) NOT NULL DEFAULT '0',
  `summz2` varchar(35) NOT NULL DEFAULT '0',
  `tpersent1` varchar(35) NOT NULL DEFAULT '0',
  `tpersent2` varchar(35) NOT NULL DEFAULT '0',
  `tcommis1` varchar(35) NOT NULL DEFAULT '0',
  `tcommis2` varchar(35) NOT NULL DEFAULT '0',
  `tdate` datetime NOT NULL,
  `status` varchar(35) NOT NULL,
  `naprid` bigint(20) NOT NULL,
  `dop1` longtext NOT NULL,
  `dop2` longtext NOT NULL,
  `userip` longtext NOT NULL,
  `skype` tinytext NOT NULL,
  `dmetas` longtext NOT NULL,
  `acomments` longtext NOT NULL,
  `parthide` int(1) NOT NULL DEFAULT '0',
  `partmax` varchar(25) NOT NULL DEFAULT '0',
  `editdate` datetime NOT NULL,
  `naschet` varchar(150) NOT NULL,
  `fname` tinytext NOT NULL,
  `iname` tinytext NOT NULL,
  `oname` tinytext NOT NULL,
  `pnomer` varchar(250) NOT NULL,
  `schet1_hash` longtext NOT NULL,
  `schet2_hash` longtext NOT NULL,
  `ucomments` longtext NOT NULL,
  `exsum` varchar(30) NOT NULL DEFAULT '0',
  `partpr` varchar(25) NOT NULL DEFAULT '0',
  `ref_sum` varchar(25) NOT NULL DEFAULT '0',
  `p_sum` varchar(25) NOT NULL DEFAULT '0',
  `pcalc` int(1) NOT NULL DEFAULT '0',
  `user_hash` varchar(150) NOT NULL,
  `naschet_h` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_bids_meta`
--

CREATE TABLE IF NOT EXISTS `eb_bids_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(250) NOT NULL,
  `meta_value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_blacklist`
--

CREATE TABLE IF NOT EXISTS `eb_blacklist` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(12) NOT NULL DEFAULT '0',
  `meta_value` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_change`
--

CREATE TABLE IF NOT EXISTS `eb_change` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(250) NOT NULL,
  `meta_key2` varchar(250) NOT NULL,
  `meta_value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Дамп данных таблицы `eb_change`
--

INSERT INTO `eb_change` (`id`, `meta_key`, `meta_key2`, `meta_value`) VALUES
(1, 'admin_panel_url', '', 'xchngbx'),
(2, 'reviews', 'count', '20'),
(3, 'reviews', 'method', 'moderation'),
(4, 'reviews', 'website', '0'),
(5, 'captcha', 'reviewsform', '0'),
(6, 'captcha', 'contactform', '0'),
(7, 'captcha', 'loginform', '0'),
(8, 'captcha', 'registerform', '0'),
(9, 'partners', 'status', '1'),
(10, 'partners', 'minpay', '5'),
(11, 'exchange', 'courez', '2'),
(12, 'change', 'cursfile', '0'),
(13, 'change', 'cursfilelen', '5'),
(14, 'exchange', 'pfname', '1'),
(15, 'exchange', 'piname', '1'),
(16, 'exchange', 'poname', '1'),
(17, 'exchange', 'ptel', '1'),
(18, 'exchange', 'pskype', '0'),
(19, 'exchange', 'techreg', '0'),
(20, 'exchange', 'techregtext', ''),
(21, 'help', 'fio_f', 'Введите фамилию, как у вас в паспорте.'),
(22, 'help', 'fio_i', 'Введите имя, как у вас в паспорте.'),
(23, 'help', 'fio_o', 'Введите отчество, как у вас в паспорте.'),
(24, 'help', 'email', 'Пожалуйста, укажите действующий адрес электронный почты.'),
(25, 'help', 'tel', 'Введите номер мобильного телефона в международном формате для связи с вами. Пример: +71234567890.'),
(26, 'help', 'skype', 'Введите логин Skype для связи с вами.'),
(27, 'naps_temp', 'timeline_txt', 'Данная операция производится оператором в ручном режиме и занимает от 5 до 30 минут в рабочее время (см. статус оператора).'),
(28, 'naps_temp', 'description_txt', 'Для обмена Вам необходимо выполнить несколько шагов:\r\n\r\nЗаполните все поля представленной формы. Нажмите кнопку «Продолжить».\r\nОзнакомьтесь с условиями договора на оказание услуг обмена, если вы принимаете их, поставьте галочку в соответствующем поле/нажмите кнопку «Принимаю» («Согласен»). Еще раз проверьте данные заявки.\r\n3. Оплатите заявку.  Для этого следует совершить перевод необходимой суммы, следуя инструкциям на нашем сайте.\r\n4. После выполнения указанных действий, система переместит Вас на страницу «Состояние заявки», где будет указан статус вашего перевода.\r\n\r\n<strong>Внимание</strong>: для выполнения данной операции потребуется участие оператора (см. статус оператора).'),
(29, 'naps_temp', 'status_new', 'Авторизуйтесь в платежной системе XXXXXXX;\r\nПереведите указанную ниже сумму на кошелек XXXXXXX;\r\nНажмите на кнопку "Я оплатил заявку";\r\nОжидайте обработку заявки оператором.'),
(30, 'naps_temp', 'status_payed', 'Подтверждение оплаты принято.\r\nВаша заявка обрабатывается оператором.'),
(31, 'naps_temp', 'status_success', 'Ваша заявка выполнена.\r\nБлагодарим за то, что воспользовались услугами нашего сервиса.\r\nОставьте, пожалуйста, <a href="/reviews/">отзыв</a> о работе нашего сервиса!'),
(32, 'naps_temp', 'status_new_mobile', '<ol>\r\n	<li>Авторизуйтесь в платежной системе или запустите мобильное приложение XXXXXXX;</li>\r\n	<li>Переведите указанную ниже сумму на кошелек XXXXXXX;</li>\r\n	<li>Нажмите на кнопку "Я оплатил заявку";</li>\r\n	<li>Ожидайте обработку заявки оператором.</li>\r\n</ol>'),
(33, 'exchange', 'autodelete', '0'),
(34, 'exchange', 'ad_h', '5'),
(35, 'exchange', 'ad_m', '0'),
(36, 'cron', '', '0'),
(37, 'admincaptcha', '', '1'),
(38, 'letter_auth', '', '1'),
(41, 'naps_temp', 'status_returned', 'Оплата по заявке была возвращена на ваш кошелек.'),
(39, 'naps_temp', 'status_realpay', 'Подтверждение оплаты принято.\r\nВаша заявка обрабатывается оператором.'),
(40, 'naps_temp', 'status_verify', 'Подтверждение оплаты принято.\r\nВаша заявка обрабатывается оператором.'),
(42, 'naps_temp', 'status_delete', 'Заявка была удалена.'),
(43, 'naps_temp', 'status_error', 'В заявке есть ошибки. Обратитесь в техническую поддержку.');

-- --------------------------------------------------------

--
-- Структура таблицы `eb_commentmeta`
--

CREATE TABLE IF NOT EXISTS `eb_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_comments`
--

CREATE TABLE IF NOT EXISTS `eb_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_custom_fields_valut`
--

CREATE TABLE IF NOT EXISTS `eb_custom_fields_valut` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cf_name` longtext NOT NULL,
  `vid` int(1) NOT NULL DEFAULT '0',
  `valut_id` bigint(20) NOT NULL DEFAULT '0',
  `cf_req` int(1) NOT NULL DEFAULT '0',
  `place_id` int(1) NOT NULL DEFAULT '0',
  `minzn` int(2) NOT NULL DEFAULT '0',
  `maxzn` int(5) NOT NULL DEFAULT '100',
  `firstzn` varchar(20) NOT NULL,
  `helps` longtext NOT NULL,
  `datas` longtext NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `cf_hidden` int(2) NOT NULL DEFAULT '0',
  `cf_order` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_exbotziv`
--

CREATE TABLE IF NOT EXISTS `eb_exbotziv` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `user_name` tinytext NOT NULL,
  `user_email` tinytext NOT NULL,
  `user_site` tinytext NOT NULL,
  `otdate` datetime NOT NULL,
  `otzivhash` tinytext NOT NULL,
  `commenttext` longtext NOT NULL,
  `otstatus` varchar(150) NOT NULL DEFAULT 'moderation',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_links`
--

CREATE TABLE IF NOT EXISTS `eb_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_login_check`
--

CREATE TABLE IF NOT EXISTS `eb_login_check` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `datelogin` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(250) NOT NULL,
  `user_ip` varchar(250) NOT NULL,
  `user_browser` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_masschange`
--

CREATE TABLE IF NOT EXISTS `eb_masschange` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `curs1` varchar(20) NOT NULL DEFAULT '0',
  `curs2` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_napobmens`
--

CREATE TABLE IF NOT EXISTS `eb_napobmens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `valsid1` bigint(20) NOT NULL DEFAULT '0',
  `valsid2` bigint(20) NOT NULL DEFAULT '0',
  `curs1` varchar(250) NOT NULL DEFAULT '0',
  `curs2` varchar(250) NOT NULL DEFAULT '0',
  `commis1` varchar(250) NOT NULL DEFAULT '0',
  `prorsum1` int(1) NOT NULL DEFAULT '0',
  `commis2` varchar(250) NOT NULL DEFAULT '0',
  `prorsum2` int(1) NOT NULL DEFAULT '0',
  `minsumm1` varchar(250) NOT NULL DEFAULT '0',
  `minsumm2` varchar(250) NOT NULL DEFAULT '0',
  `text1` longtext NOT NULL,
  `text2` longtext NOT NULL,
  `text3` longtext NOT NULL,
  `text4` longtext NOT NULL,
  `text5` longtext NOT NULL,
  `rorder` bigint(20) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1',
  `parser` int(1) NOT NULL DEFAULT '0',
  `corecurs1` varchar(250) NOT NULL,
  `corecurs2` varchar(250) NOT NULL,
  `parcommis1` varchar(250) NOT NULL,
  `parcommis2` varchar(250) NOT NULL,
  `parprorsum1` int(1) NOT NULL DEFAULT '0',
  `parprorsum2` int(1) NOT NULL DEFAULT '0',
  `prproc1` varchar(250) NOT NULL,
  `prproc2` varchar(250) NOT NULL,
  `prsum1` varchar(250) NOT NULL,
  `prsum2` varchar(250) NOT NULL,
  `delsk` int(1) NOT NULL DEFAULT '0',
  `maxsumm1` varchar(250) NOT NULL DEFAULT '0',
  `maxsumm1com` varchar(250) NOT NULL DEFAULT '0',
  `maxsumm2com` varchar(250) NOT NULL DEFAULT '0',
  `rorder2` bigint(20) NOT NULL DEFAULT '0',
  `parthide` int(1) NOT NULL DEFAULT '0',
  `partmax` varchar(25) NOT NULL DEFAULT '0',
  `hidegost` int(1) NOT NULL DEFAULT '0',
  `minsumm1com` varchar(50) NOT NULL DEFAULT '0',
  `minsumm2com` varchar(50) NOT NULL DEFAULT '0',
  `combox` varchar(50) NOT NULL DEFAULT '0',
  `x19mod` bigint(20) NOT NULL DEFAULT '0',
  `comboxpers` varchar(50) NOT NULL DEFAULT '0',
  `masschange` bigint(20) NOT NULL DEFAULT '0',
  `text6` longtext NOT NULL,
  `maxsumm2` varchar(250) NOT NULL DEFAULT '0',
  `windowtext` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Дамп данных таблицы `eb_napobmens`
--

INSERT INTO `eb_napobmens` (`id`, `valsid1`, `valsid2`, `curs1`, `curs2`, `commis1`, `prorsum1`, `commis2`, `prorsum2`, `minsumm1`, `minsumm2`, `text1`, `text2`, `text3`, `text4`, `text5`, `rorder`, `status`, `parser`, `corecurs1`, `corecurs2`, `parcommis1`, `parcommis2`, `parprorsum1`, `parprorsum2`, `prproc1`, `prproc2`, `prsum1`, `prsum2`, `delsk`, `maxsumm1`, `maxsumm1com`, `maxsumm2com`, `rorder2`, `parthide`, `partmax`, `hidegost`, `minsumm1com`, `minsumm2com`, `combox`, `x19mod`, `comboxpers`, `masschange`, `text6`, `maxsumm2`, `windowtext`) VALUES
(1, 5, 6, '1', '0.93231', '0', 1, '0', 1, '0', '0', '', '', '', '', '', 7, 1, 52, '', '', '0', '0', 0, 0, '0', '0', '0', '0', 0, '0', '0', '0', 0, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(3, 5, 17, '1', '0.91', '0', 1, '0.5', 0, '0', '0', '', '', '', '', '', 7, 1, 0, '', '', '0', '0', 0, 0, '0', '0.5', '0', '0', 0, '0', '0', '0', 0, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(4, 5, 13, '1', '34', '0', 1, '0.5', 0, '0', '0', '', '', '', '', '', 7, 1, 0, '', '', '0', '0', 0, 0, '0', '0.5', '0', '0', 0, '0', '0', '0', 0, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(6, 5, 9, '1', '0.98', '0', 1, '2.5', 0, '0', '0', '', '', '', '', '', 7, 1, 0, '', '', '0', '0', 0, 0, '0', '2.5', '0', '0', 0, '0', '0', '0', 0, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(7, 5, 11, '1', '29.66', '0', 1, '0', 1, '0', '0', '', '', '', '', '', 7, 1, 0, '', '', '0', '0', 0, 0, '0', '0', '0', '0', 0, '0', '0', '0', 0, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(8, 5, 12, '1', '29.36', '0', 1, '0', 1, '0', '0', '', '', '', '', '', 7, 1, 0, '', '', '0', '0', 0, 0, '0', '0', '0', '0', 0, '0', '0', '0', 0, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(11, 11, 3, '31.25', '1', '0', 1, '0.5', 0, '0', '0', '', '', '', '', '', 9, 1, 0, '', '', '0', '0', 0, 0, '0', '0.5', '0', '0', 0, '0', '0', '0', 0, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(12, 3, 15, '1', '1', '0.5', 0, '0', 1, '0', '0', '', '', '', '', '', 1, 1, 0, '', '', '0', '0', 0, 0, '0.5', '0', '0', '0', 0, '0', '0', '0', 2, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(13, 3, 4, '1', '0.77', '0.5', 0, '0.5', 0, '0', '0', '', '', '', '', '', 1, 1, 0, '', '', '0', '0', 0, 0, '0.5', '0.5', '0', '0', 0, '0', '0', '0', 1, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(14, 4, 15, '1', '1.3', '0.5', 0, '0', 1, '0', '0', '', '', '', '', '', 2, 1, 0, '', '', '0', '0', 0, 0, '0.5', '0', '0', '0', 0, '0', '0', '0', 2, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(15, 4, 3, '1', '0.99', '0.5', 0, '0.5', 0, '0', '0', '', '', '', '', '', 2, 1, 0, '', '', '0', '0', 0, 0, '0.5', '0.5', '0', '0', 0, '0', '0', '0', 1, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(16, 12, 3, '31.37', '1', '0', 1, '0.5', 0, '0', '0', '', '', '', '', '', 10, 1, 0, '', '', '0', '0', 0, 0, '0', '0.5', '0', '0', 0, '0', '0', '0', 0, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(18, 13, 9, '35', '1', '0', 1, '2.5', 0, '0', '0', '', '', '', '', '', 8, 1, 0, '', '', '0', '0', 0, 0, '0', '2.5', '0', '0', 0, '0', '0', '0', 0, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(19, 3, 11, '1', '27.82', '0.5', 0, '0', 1, '0', '0', '', '', '', '', '', 1, 1, 0, '', '', '0', '0', 0, 0, '0.5', '0', '0', '0', 0, '0', '0', '0', 3, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(20, 14, 3, '33.03', '1', '0', 1, '0.5', 0, '0', '0', '', '', '', '', '', 11, 1, 0, '', '', '0', '0', 0, 0, '0', '0.5', '0', '0', 0, '0', '0', '0', 0, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(21, 15, 17, '1', '0.98', '0', 1, '0.5', 0, '0', '0', '', '', '', '', '', 5, 1, 0, '', '', '0', '0', 0, 0, '0', '0.5', '0', '0', 0, '0', '0', '0', 0, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(22, 16, 9, '8.3', '1', '0', 1, '0.5', 0, '0', '0', '', '', '', '', '', 6, 1, 0, '', '', '0', '0', 0, 0, '0', '0.5', '0', '0', 0, '0', '0', '0', 0, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(23, 3, 12, '1', '27.54', '0.5', 0, '0', 1, '0', '0', '', '', '', '', '', 1, 1, 0, '', '', '0', '0', 0, 0, '0.5', '0', '0', '0', 0, '0', '0', '0', 5, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(24, 3, 14, '1', '27.82', '0.5', 0, '0', 1, '0', '0', '', '', '', '', '', 1, 1, 0, '', '', '0', '0', 0, 0, '0.5', '0', '0', '0', 0, '0', '0', '0', 4, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(25, 17, 3, '1', '1.01', '0.8', 0, '0.5', 0, '0', '0', '', '', '', '', '', 4, 1, 0, '', '', '0', '0', 0, 0, '0.8', '0.5', '0', '0', 0, '0', '0', '0', 0, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', ''),
(26, 18, 3, '100', '2.89667', '0.5', 0, '0.5', 0, '0', '0', '', '', '', '', '', 3, 1, 0, '', '', '0', '0', 0, 0, '0.5', '0.5', '0', '0', 0, '0', '0', '0', 0, 0, '0', 0, '0', '0', '0', 0, '0', 0, '', '0', '');

-- --------------------------------------------------------

--
-- Структура таблицы `eb_naps_meta`
--

CREATE TABLE IF NOT EXISTS `eb_naps_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(250) NOT NULL,
  `meta_value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `eb_naps_meta`
--

INSERT INTO `eb_naps_meta` (`id`, `item_id`, `meta_key`, `meta_value`) VALUES
(1, 26, 'seotitle', ''),
(2, 26, 'seokey', ''),
(3, 26, 'seodescr', '');

-- --------------------------------------------------------

--
-- Структура таблицы `eb_options`
--

CREATE TABLE IF NOT EXISTS `eb_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) DEFAULT NULL,
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4657 ;

--
-- Дамп данных таблицы `eb_options`
--

INSERT INTO `eb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4, 'siteurl', 'http://exchange.best-curs.info', 'yes'),
(5, 'blogname', 'Обменный пункт', 'yes'),
(6, 'blogdescription', 'Обменный пункт', 'yes'),
(7, 'users_can_register', '0', 'yes'),
(8, 'admin_email', 'info@best-curs.info', 'yes'),
(9, 'start_of_week', '1', 'yes'),
(10, 'use_balanceTags', '0', 'yes'),
(11, 'use_smilies', '', 'yes'),
(12, 'require_name_email', '1', 'yes'),
(13, 'comments_notify', '', 'yes'),
(14, 'posts_per_rss', '10', 'yes'),
(15, 'rss_use_excerpt', '1', 'yes'),
(16, 'mailserver_url', 'mail.example.com', 'yes'),
(17, 'mailserver_login', 'login@example.com', 'yes'),
(18, 'mailserver_pass', 'password', 'yes'),
(19, 'mailserver_port', '110', 'yes'),
(20, 'default_category', '1', 'yes'),
(21, 'default_comment_status', 'open', 'yes'),
(22, 'default_ping_status', 'closed', 'yes'),
(23, 'default_pingback_flag', '', 'yes'),
(25, 'posts_per_page', '10', 'yes'),
(26, 'date_format', 'd.m.Y', 'yes'),
(27, 'time_format', 'H:i', 'yes'),
(28, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(32, 'comment_moderation', '1', 'yes'),
(33, 'moderation_notify', '', 'yes'),
(34, 'permalink_structure', '/%postname%/', 'yes'),
(36, 'hack_file', '0', 'yes'),
(37, 'blog_charset', 'UTF-8', 'yes'),
(38, 'moderation_keys', '', 'no'),
(39, 'active_plugins', 'a:1:{i:0;s:27:"exchangebox/exchangebox.php";}', 'yes'),
(40, 'home', 'http://exchange.best-curs.info', 'yes'),
(41, 'category_base', '', 'yes'),
(42, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(44, 'comment_max_links', '2', 'yes'),
(45, 'gmt_offset', '3', 'yes'),
(46, 'default_email_category', '1', 'yes'),
(47, 'recently_edited', '', 'no'),
(48, 'template', 'exchangeboxtheme2', 'yes'),
(49, 'stylesheet', 'exchangeboxtheme2', 'yes'),
(50, 'comment_whitelist', '1', 'yes'),
(51, 'blacklist_keys', '', 'no'),
(52, 'comment_registration', '0', 'yes'),
(53, 'html_type', 'text/html', 'yes'),
(54, 'use_trackback', '0', 'yes'),
(55, 'default_role', 'users', 'yes'),
(56, 'db_version', '35700', 'yes'),
(57, 'uploads_use_yearmonth_folders', '', 'yes'),
(58, 'upload_path', '', 'yes'),
(59, 'blog_public', '1', 'yes'),
(60, 'default_link_category', '2', 'yes'),
(61, 'show_on_front', 'page', 'yes'),
(62, 'tag_base', '', 'yes'),
(63, 'show_avatars', '', 'yes'),
(64, 'avatar_rating', 'G', 'yes'),
(65, 'upload_url_path', '', 'yes'),
(66, 'thumbnail_size_w', '150', 'yes'),
(67, 'thumbnail_size_h', '150', 'yes'),
(68, 'thumbnail_crop', '1', 'yes'),
(69, 'medium_size_w', '300', 'yes'),
(70, 'medium_size_h', '300', 'yes'),
(71, 'avatar_default', 'mystery', 'yes'),
(74, 'large_size_w', '1024', 'yes'),
(75, 'large_size_h', '1024', 'yes'),
(76, 'image_default_link_type', 'file', 'yes'),
(77, 'image_default_size', '', 'yes'),
(78, 'image_default_align', '', 'yes'),
(79, 'close_comments_for_old_posts', '0', 'yes'),
(80, 'close_comments_days_old', '14', 'yes'),
(81, 'thread_comments', '1', 'yes'),
(82, 'thread_comments_depth', '5', 'yes'),
(83, 'page_comments', '0', 'yes'),
(84, 'comments_per_page', '50', 'yes'),
(85, 'default_comments_page', 'newest', 'yes'),
(86, 'comment_order', 'asc', 'yes'),
(87, 'sticky_posts', 'a:0:{}', 'yes'),
(88, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(89, 'widget_text', 'a:5:{i:4;a:3:{s:5:"title";s:73:"Приветствуем на сайте обменного пункта!";s:4:"text";s:1787:"Наш On-line сервис предназначен для тех, кто хочет быстро, безопасно и по выгодному курсу обменять такие виды электронных валют: Webmoney, Perfect Money, LiqPay, Pecunix, Payza, Яндекс. Деньги, Payweb, Альфа-Банк, ВТБ 24, Приват24, Связной банк, Visa/Master Card, Western Union, MoneyGram.</br></br>\r\n\r\nЭтим возможности нашего сервиса не ограничиваются. В рамках проекта действуют программа лояльности, накопительная скидка и партнерская программа, воспользовавшись преимуществами которых, вы сможете совершать обмен электронных валют на более выгодных условиях. Для этого нужно просто <a href="/register/">зарегистрироваться</a> на сайте.</br></br>\r\n\r\nНаш пункт обмена электронных валют – система, созданная на базе современного программного обеспечения и содержащая весь набор необходимых функций для удобной и безопасной конвертации наиболее распространенных видов электронных денег. За время работы мы приобрели репутацию проверенного партнера и делаем все возможное, чтобы ваши впечатления от нашего сервиса были только благоприятными.";s:6:"filter";b:0;}i:5;a:3:{s:5:"title";s:16:"Партнеры";s:4:"text";s:728:"<table class="tpartner">\r\n<tr>\r\n<td>\r\n<a href="#"><img src="/images/payment_icons/ya_bottom.png" alt="" height="31" width="88" /></a>\r\n</td>\r\n<td>\r\n<a href="#"><img src="/images/payment_icons/pm_bottom.png" alt="" height="31" width="88" /></a>\r\n</td>\r\n<td>\r\n<a href="#"><img src="/images/payment_icons/stp_bottom.png" alt="" height="31" width="88" /></a>\r\n</td>\r\n<td>\r\n<a href="#"><img src="/images/payment_icons/egopay_bottom.png" alt="" height="31" width="88" /></a>\r\n</td>\r\n<td>\r\n<a href="#"><img src="/images/payment_icons/bitcoin_bottom.png" alt="" height="31" width="88" /></a>\r\n</td>	\r\n<td>\r\n<a href="#"><img src="/images/payment_icons/okpay_bottom.png" alt="" height="31" width="88" /></a>\r\n</td>					\r\n</tr>\r\n</table>\r\n";s:6:"filter";b:0;}i:8;a:3:{s:5:"title";s:0:"";s:4:"text";s:112:"Обменный пункт электронных валют.</br>\r\nВсе права защищены © 2014.";s:6:"filter";b:0;}i:9;a:3:{s:5:"title";s:0:"";s:4:"text";s:192:"<a href="/preduprezhdenie/">Предупреждение</a> &nbsp;&nbsp;&bull;&nbsp;&nbsp; <a href="/tos/">Правила</a> &nbsp;&nbsp;&bull;&nbsp;&nbsp; <a href="/sitemap/">Карта</a>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(3718, 'widget_exbloginwidget', 'a:5:{i:2;a:2:{s:5:"title";s:0:"";s:6:"titlem";s:0:"";}i:3;a:2:{s:5:"title";s:0:"";s:6:"titlem";s:0:"";}i:4;a:2:{s:5:"title";s:0:"";s:6:"titlem";s:0:"";}i:5;a:2:{s:5:"title";s:0:"";s:6:"titlem";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(3720, 'widget_get_rnews', 'a:5:{i:2;a:5:{s:5:"title";s:0:"";s:4:"tcat";s:1:"0";s:5:"count";s:1:"3";s:6:"sorter";s:4:"date";s:4:"desc";s:4:"desc";}i:3;a:5:{s:5:"title";s:0:"";s:4:"tcat";s:1:"0";s:5:"count";s:0:"";s:6:"sorter";s:4:"date";s:4:"desc";s:3:"asc";}i:4;a:5:{s:5:"title";s:0:"";s:4:"tcat";s:1:"0";s:5:"count";s:0:"";s:6:"sorter";s:4:"date";s:4:"desc";s:3:"asc";}i:5;a:5:{s:5:"title";s:0:"";s:4:"tcat";s:1:"0";s:5:"count";s:0:"";s:6:"sorter";s:4:"date";s:4:"desc";s:4:"desc";}s:12:"_multiwidget";i:1;}', 'yes'),
(90, 'widget_rss', 'a:0:{}', 'yes'),
(91, 'timezone_string', '', 'yes'),
(93, 'embed_size_w', '', 'yes'),
(94, 'embed_size_h', '600', 'yes'),
(97, 'default_post_format', '0', 'yes'),
(98, 'initial_db_version', '19470', 'yes'),
(99, 'eb_user_roles', 'a:2:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:66:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:14:"manage_ratings";b:1;s:25:"user_can_config_downloads";b:1;s:23:"user_can_edit_downloads";b:1;s:25:"user_can_add_new_download";b:1;s:27:"user_can_view_downloads_log";b:1;}}s:5:"users";a:2:{s:4:"name";s:24:"Пользователь";s:12:"capabilities";a:1:{s:7:"level_0";b:1;}}}', 'yes'),
(3709, 'theme_mods_exchangeboxtheme', 'a:3:{i:0;s:0:"";s:18:"nav_menu_locations";a:1:{s:8:"top_menu";i:3;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1436943454;s:4:"data";a:7:{s:18:"orphaned_widgets_2";a:5:{i:0;s:15:"exbobmen_info-2";i:1;s:16:"get_statuswork-3";i:2;s:16:"exbloginwidget-2";i:3;s:16:"exbotzivs_info-2";i:4;s:11:"get_rnews-2";}s:18:"orphaned_widgets_3";a:1:{i:0;s:6:"text-4";}s:18:"orphaned_widgets_4";a:1:{i:0;s:6:"text-5";}s:18:"orphaned_widgets_5";a:1:{i:0;s:6:"text-8";}s:18:"orphaned_widgets_6";a:1:{i:0;s:6:"text-9";}s:19:"wp_inactive_widgets";a:5:{i:0;s:11:"get_rnews-4";i:1;s:16:"exbotzivs_info-4";i:2;s:16:"exbloginwidget-4";i:3;s:19:"exblastobmen_info-3";i:4;s:16:"get_statuswork-5";}s:9:"sidebar-1";a:5:{i:0;s:16:"get_statuswork-4";i:1;s:16:"exbloginwidget-3";i:2;s:19:"exblastobmen_info-2";i:3;s:16:"exbotzivs_info-3";i:4;s:11:"get_rnews-3";}}}}', 'yes'),
(100, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(610, 'widget_get_rx_cursrf', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"valuta";s:2:"ru";}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:4:{s:9:"sidebar-1";a:5:{i:0;s:16:"get_statuswork-5";i:1;s:16:"exbloginwidget-4";i:2;s:19:"exblastobmen_info-3";i:3;s:16:"exbotzivs_info-4";i:4;s:11:"get_rnews-4";}s:19:"wp_inactive_widgets";a:0:{}s:17:"unique-sidebar-id";a:5:{i:0;s:16:"get_statuswork-6";i:1;s:16:"exbloginwidget-5";i:2;s:16:"exbotzivs_info-5";i:3;s:11:"get_rnews-5";i:4;s:19:"exblastobmen_info-4";}s:13:"array_version";i:3;}', 'yes'),
(3719, 'widget_exbotzivs_info', 'a:5:{i:2;a:2:{s:5:"title";s:0:"";s:5:"count";s:1:"3";}i:3;a:2:{s:5:"title";s:0:"";s:5:"count";s:0:"";}i:4;a:2:{s:5:"title";s:0:"";s:5:"count";s:0:"";}i:5;a:2:{s:5:"title";s:0:"";s:5:"count";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(607, 'widget_get_a_fxlastobmen', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'cron', 'a:5:{i:1451408840;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1451408848;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1451445180;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1451460506;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(2793, 'uninstall_plugins', 'a:1:{s:27:"exchangebox/exchangebox.php";s:21:"exb_plugins_uninstall";}', 'no'),
(113, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:30:"http://exchange.best-curs.info";s:4:"link";s:106:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://exchange.best-curs.info/";s:3:"url";s:139:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://exchange.best-curs.info/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:8:{s:5:"title";s:18:"Блог WordPress";s:3:"url";s:31:"http://wordpress.org/news/feed/";s:4:"link";s:25:"http://wordpress.org/news";s:5:"items";i:2;s:5:"error";b:0;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:37:"Другие новости WordPress";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(993, 'current_theme', 'ExchangeBoxTheme 2.0', 'yes'),
(832, 'widget_get_a_fxreviews', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:3:"kol";s:1:"2";s:4:"link";s:9:"/rewiews/";}s:12:"_multiwidget";i:1;}', 'yes'),
(4650, 'rewrite_rules', 'a:78:{s:51:"([\\-_A-Za-z0-9]+)_([A-Za-z0-9]+)_to_([A-Za-z0-9]+)$";s:68:"index.php?pagename=$matches[1]&valut1=$matches[2]&valut2=$matches[3]";s:40:"([\\-_A-Za-z0-9]+)/hst_([A-Za-z0-9]{35})$";s:49:"index.php?pagename=$matches[1]&hashed=$matches[2]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:40:"index.php?&page_id=151&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(4504, 'banners', 'a:6:{s:4:"text";a:2:{i:0;s:1198:"Хотите обменять электронные деньги или вывести средства на банковский счет? Ищете надежный сервис для обмена электронных денег? <a href="[partner_link]">[url]</a> – это выгодные курсы обмена, безопасность и минимальные сроки выполнения финансовых операций. Простой и удобный интерфейс избавит от необходимости долго изучать структуру сайта, а возможность в любое время связаться с оператором позволит «на месте» получить ответы на любые вопросы, касающиеся конвертации валют. Кроме того, обменник предусматривает возможность заработка на партнерской программе. Зарегистрированные пользователи получают бонусы и скидки, которые растут с каждой новой транзакцией.";i:1;s:1257:"Вам нужно вывести электронные деньги на банковский счет или обменять один вид электронной валюты на другой? Вы сбились с ног, пытаясь отыскать пункт обмена, где вам предложат выгодный курс, высокий уровень безопасности и максимальную оперативность проведения транзакций? <a href="[partner_link]">[url]</a> решит все ваши проблемы с обменом, переводом или выводом средств из сети. Широкий спектр валют, льготные тарифы для зарегистрированных пользователей, внимательная техподдержка и простой интерфейс делают работу с сервисом комфортной и выгодной. А наличие партнерской программы позволит не только проводить сделки без рисков, но и зарабатывать, рекомендуя проверенный обменник своим знакомым.";}s:7:"banner1";a:1:{i:0;s:212:"<a href="[partner_link]"><img src="[url]/wp-content/plugins/exchangebox/images/banners/468x60_1.gif" alt="Обменный пункт" title="Обменный пункт" width="468" height="60" border="0" /></a>";}s:7:"banner2";a:1:{i:0;s:214:"<a href="[partner_link]"><img src="[url]/wp-content/plugins/exchangebox/images/banners/200x200_1.gif" alt="Обменный пункт" title="Обменный пункт" width="200" height="200" border="0" /></a>";}s:7:"banner3";a:1:{i:0;s:214:"<a href="[partner_link]"><img src="[url]/wp-content/plugins/exchangebox/images/banners/120x600_1.gif" alt="Обменный пункт" title="Обменный пункт" width="120" height="600" border="0" /></a>";}s:7:"banner4";a:1:{i:0;s:214:"<a href="[partner_link]"><img src="[url]/wp-content/plugins/exchangebox/images/banners/100x100_1.gif" alt="Обменный пункт" title="Обменный пункт" width="100" height="100" border="0" /></a>";}s:7:"banner5";a:1:{i:0;s:210:"<a href="[partner_link]"><img src="[url]/wp-content/plugins/exchangebox/images/banners/88x31_1.gif" alt="Обменный пункт" title="Обменный пункт" width="88" height="31" border="0" /></a>";}}', 'yes'),
(4511, 'pn_lang', 'a:2:{s:10:"admin_lang";s:5:"ru_RU";s:9:"site_lang";s:5:"ru_RU";}', 'yes'),
(3761, '_transient_timeout_feed_867bd5c64f85878d03a060509cd2f92c', '1367023035', 'no'),
(151, 'recently_activated', 'a:0:{}', 'yes'),
(3843, 'exchangebox_curs', 'a:4:{s:3:"EUR";a:3:{s:3:"RUB";s:7:"81.1533";s:3:"USD";s:6:"1.1497";s:3:"UAH";s:8:"24.63701";}s:3:"RUB";a:3:{s:3:"EUR";s:7:"1.23224";s:3:"USD";s:6:"1.4135";s:3:"UAH";s:8:"33.33333";}s:3:"USD";a:3:{s:3:"RUB";s:7:"70.7465";s:3:"EUR";s:7:"0.86979";s:3:"UAH";s:8:"22.03077";}s:3:"UAH";a:3:{s:3:"RUB";s:7:"30.0333";s:3:"EUR";s:7:"0.04059";s:3:"USD";s:7:"0.04539";}}', 'yes'),
(4037, 'widget_get_statuswork', 'a:5:{i:3;a:11:{s:5:"title";s:0:"";s:5:"text1";s:0:"";s:5:"text2";s:0:"";s:8:"hidedate";s:1:"0";s:6:"worked";s:6:"online";s:5:"wtime";s:1:"0";s:8:"worktime";s:3:"off";s:3:"wt1";s:2:"00";s:3:"wt2";s:2:"00";s:3:"wt3";s:2:"00";s:3:"wt4";s:2:"00";}i:4;a:11:{s:5:"title";s:0:"";s:5:"text1";s:0:"";s:5:"text2";s:0:"";s:8:"hidedate";s:1:"0";s:6:"worked";s:7:"offline";s:5:"wtime";s:1:"0";s:8:"worktime";s:3:"off";s:3:"wt1";s:2:"00";s:3:"wt2";s:2:"00";s:3:"wt3";s:2:"00";s:3:"wt4";s:2:"00";}i:5;a:11:{s:5:"title";s:0:"";s:5:"text1";s:0:"";s:5:"text2";s:0:"";s:8:"hidedate";s:1:"0";s:6:"worked";s:7:"offline";s:5:"wtime";s:1:"0";s:8:"worktime";s:3:"off";s:3:"wt1";s:2:"00";s:3:"wt2";s:2:"00";s:3:"wt3";s:2:"00";s:3:"wt4";s:2:"00";}i:6;a:11:{s:5:"title";s:0:"";s:5:"text1";s:0:"";s:5:"text2";s:0:"";s:8:"hidedate";s:1:"0";s:6:"worked";s:7:"offline";s:5:"wtime";s:1:"0";s:8:"worktime";s:3:"off";s:3:"wt1";s:2:"00";s:3:"wt2";s:2:"00";s:3:"wt3";s:2:"00";s:3:"wt4";s:2:"00";}s:12:"_multiwidget";i:1;}', 'yes'),
(172, '_transient_random_seed', '5386b7ba218c5901ca99f6ca0f2eca4f', 'yes'),
(201, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(448, 'category_children', 'a:0:{}', 'yes'),
(269, 'theme_mods_twentyeleven', 'a:2:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:3;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1366924867;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:19:"fx_browser_plugin-2";}s:9:"sidebar-1";a:5:{i:0;s:15:"get_rx_cursrf-2";i:1;s:19:"get_a_fxlastobmen-2";i:2;s:20:"get_a_fxrezervinfo-2";i:3;s:14:"get_a_fxinfo-2";i:4;s:17:"get_a_fxreviews-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}}}}', 'yes'),
(364, 'srel_options', 'a:0:{}', 'yes'),
(365, 'srel_main', '', 'yes'),
(366, 'srel_included', 'a:0:{}', 'yes'),
(367, 'srel_excluded', 'a:0:{}', 'yes'),
(368, 'wp_ds_blogmap_array', 'a:11:{s:3:"ver";s:3:"312";s:6:"prefix";s:0:"";s:12:"tags_rep_str";s:10:"[tagcloud]";s:13:"posts_rep_str";s:10:"[postlist]";s:13:"pages_rep_str";s:13:"[pagesoftree]";s:11:"expand_text";s:25:"Show&nbsp;all&nbsp;&rarr;";s:10:"tags_limit";i:0;s:11:"posts_limit";i:0;s:9:"page_dept";i:0;s:17:"posts_description";b:1;s:17:"hidden_categories";a:1:{i:0;s:47:"98t4irubfuga76ert2ou3rbpiut8yp4kgjfn87ty349ith3";}}', 'yes'),
(370, 'tadv_version', '3420', 'yes'),
(371, 'tadv_plugins', 'a:0:{}', 'yes'),
(372, 'tadv_options', 'a:6:{s:8:"advlink1";i:0;s:8:"advimage";i:1;s:11:"editorstyle";i:0;s:11:"hideclasses";i:0;s:11:"contextmenu";i:0;s:8:"no_autop";i:0;}', 'yes'),
(373, 'tadv_toolbars', 'a:4:{s:9:"toolbar_1";a:27:{i:0;s:4:"bold";i:1;s:6:"italic";i:2;s:13:"strikethrough";i:3;s:9:"underline";i:4;s:10:"separator1";i:5;s:7:"bullist";i:6;s:7:"numlist";i:7;s:7:"outdent";i:8;s:6:"indent";i:9;s:10:"separator2";i:10;s:11:"justifyleft";i:11;s:13:"justifycenter";i:12;s:12:"justifyright";i:13;s:10:"separator3";i:14;s:4:"link";i:15;s:6:"unlink";i:16;s:10:"separator4";i:17;s:5:"image";i:18;s:10:"styleprops";i:19;s:11:"separator12";i:20;s:7:"wp_more";i:21;s:7:"wp_page";i:22;s:10:"separator5";i:23;s:12:"spellchecker";i:24;s:6:"search";i:25;s:10:"separator6";i:26;s:10:"fullscreen";}s:9:"toolbar_2";a:21:{i:0;s:14:"fontsizeselect";i:1;s:12:"formatselect";i:2;s:9:"pastetext";i:3;s:9:"pasteword";i:4;s:12:"removeformat";i:5;s:10:"separator8";i:6;s:7:"charmap";i:7;s:5:"print";i:8;s:10:"separator9";i:9;s:9:"forecolor";i:10;s:9:"backcolor";i:11;s:8:"emotions";i:12;s:11:"separator10";i:13;s:3:"sup";i:14;s:3:"sub";i:15;s:5:"media";i:16;s:11:"separator11";i:17;s:4:"undo";i:18;s:4:"redo";i:19;s:7:"attribs";i:20;s:7:"wp_help";}s:9:"toolbar_3";a:0:{}s:9:"toolbar_4";a:0:{}}', 'no'),
(374, 'tadv_btns1', 'a:28:{i:0;s:4:"bold";i:1;s:6:"italic";i:2;s:13:"strikethrough";i:3;s:9:"underline";i:4;s:9:"separator";i:5;s:7:"bullist";i:6;s:7:"numlist";i:7;s:7:"outdent";i:8;s:6:"indent";i:9;s:9:"separator";i:10;s:11:"justifyleft";i:11;s:13:"justifycenter";i:12;s:12:"justifyright";i:13;s:9:"separator";i:14;s:4:"link";i:15;s:6:"unlink";i:16;s:9:"separator";i:17;s:5:"image";i:18;s:10:"styleprops";i:19;s:9:"separator";i:20;s:7:"wp_more";i:21;s:7:"wp_page";i:22;s:9:"separator";i:23;s:12:"spellchecker";i:24;s:6:"search";i:25;s:9:"separator";i:26;s:10:"fullscreen";i:27;s:6:"wp_adv";}', 'no'),
(375, 'tadv_btns2', 'a:21:{i:0;s:14:"fontsizeselect";i:1;s:12:"formatselect";i:2;s:9:"pastetext";i:3;s:9:"pasteword";i:4;s:12:"removeformat";i:5;s:9:"separator";i:6;s:7:"charmap";i:7;s:5:"print";i:8;s:9:"separator";i:9;s:9:"forecolor";i:10;s:9:"backcolor";i:11;s:8:"emotions";i:12;s:9:"separator";i:13;s:3:"sup";i:14;s:3:"sub";i:15;s:5:"media";i:16;s:9:"separator";i:17;s:4:"undo";i:18;s:4:"redo";i:19;s:7:"attribs";i:20;s:7:"wp_help";}', 'no'),
(376, 'tadv_btns3', 'a:0:{}', 'no'),
(377, 'tadv_btns4', 'a:0:{}', 'no'),
(378, 'tadv_allbtns', 'a:64:{i:0;s:6:"wp_adv";i:1;s:4:"bold";i:2;s:6:"italic";i:3;s:13:"strikethrough";i:4;s:9:"underline";i:5;s:7:"bullist";i:6;s:7:"numlist";i:7;s:7:"outdent";i:8;s:6:"indent";i:9;s:11:"justifyleft";i:10;s:13:"justifycenter";i:11;s:12:"justifyright";i:12;s:11:"justifyfull";i:13;s:3:"cut";i:14;s:4:"copy";i:15;s:5:"paste";i:16;s:4:"link";i:17;s:6:"unlink";i:18;s:5:"image";i:19;s:7:"wp_more";i:20;s:7:"wp_page";i:21;s:6:"search";i:22;s:7:"replace";i:23;s:10:"fontselect";i:24;s:14:"fontsizeselect";i:25;s:7:"wp_help";i:26;s:10:"fullscreen";i:27;s:11:"styleselect";i:28;s:12:"formatselect";i:29;s:9:"forecolor";i:30;s:9:"backcolor";i:31;s:9:"pastetext";i:32;s:9:"pasteword";i:33;s:12:"removeformat";i:34;s:7:"cleanup";i:35;s:12:"spellchecker";i:36;s:7:"charmap";i:37;s:5:"print";i:38;s:4:"undo";i:39;s:4:"redo";i:40;s:13:"tablecontrols";i:41;s:4:"cite";i:42;s:3:"ins";i:43;s:3:"del";i:44;s:4:"abbr";i:45;s:7:"acronym";i:46;s:7:"attribs";i:47;s:5:"layer";i:48;s:5:"advhr";i:49;s:4:"code";i:50;s:11:"visualchars";i:51;s:11:"nonbreaking";i:52;s:3:"sub";i:53;s:3:"sup";i:54;s:9:"visualaid";i:55;s:10:"insertdate";i:56;s:10:"inserttime";i:57;s:6:"anchor";i:58;s:10:"styleprops";i:59;s:8:"emotions";i:60;s:5:"media";i:61;s:10:"blockquote";i:62;s:9:"separator";i:63;s:1:"|";}', 'no'),
(380, 'aioseop_options', 'a:37:{s:9:"aiosp_can";s:0:"";s:12:"aiosp_donate";s:0:"";s:16:"aiosp_home_title";s:61:"Обменный пункт электронных валют";s:22:"aiosp_home_description";s:61:"Обменный пункт электронных валют";s:19:"aiosp_home_keywords";s:61:"Обменный пункт электронных валют";s:23:"aiosp_max_words_excerpt";s:0:"";s:20:"aiosp_rewrite_titles";s:2:"on";s:23:"aiosp_post_title_format";s:27:"%post_title% | %blog_title%";s:23:"aiosp_page_title_format";s:27:"%page_title% | %blog_title%";s:27:"aiosp_category_title_format";s:31:"%category_title% | %blog_title%";s:26:"aiosp_archive_title_format";s:21:"%date% | %blog_title%";s:22:"aiosp_tag_title_format";s:20:"%tag% | %blog_title%";s:25:"aiosp_search_title_format";s:23:"%search% | %blog_title%";s:24:"aiosp_description_format";s:13:"%description%";s:22:"aiosp_404_title_format";s:33:"Nothing found for %request_words%";s:18:"aiosp_paged_format";s:14:" - Part %page%";s:25:"aiosp_google_analytics_id";s:0:"";s:29:"aiosp_ga_track_outbound_links";s:0:"";s:20:"aiosp_use_categories";s:0:"";s:32:"aiosp_dynamic_postspage_keywords";s:2:"on";s:22:"aiosp_category_noindex";s:0:"";s:21:"aiosp_archive_noindex";s:0:"";s:18:"aiosp_tags_noindex";s:0:"";s:14:"aiosp_cap_cats";s:2:"on";s:27:"aiosp_generate_descriptions";s:0:"";s:16:"aiosp_debug_info";s:0:"";s:20:"aiosp_post_meta_tags";s:0:"";s:20:"aiosp_page_meta_tags";s:0:"";s:20:"aiosp_home_meta_tags";s:0:"";s:13:"aiosp_enabled";s:1:"1";s:17:"aiosp_enablecpost";s:0:"";s:26:"aiosp_use_tags_as_keywords";s:2:"on";s:16:"aiosp_seopostcol";s:0:"";s:18:"aiosp_seocustptcol";s:0:"";s:21:"aiosp_posttypecolumns";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:12:"aiosp_do_log";s:0:"";s:14:"aiosp_ex_pages";s:0:"";}', 'yes'),
(439, 'ld_http_auth', 'none', 'yes'),
(440, 'ld_hide_wp_admin', 'yep', 'yes'),
(441, 'ld_login_base', 'iam', 'yes'),
(477, 'WSD-RSS-WGT-DISPLAY', 'no', 'yes'),
(478, 'WSD-COOKIE', 'PHPSESSID=rro39nje4unq1fuol8mcg2liu1; path=/', 'yes'),
(613, 'widget_ca_browser_plugin', 'a:2:{i:2;a:6:{s:12:"link_firefox";s:0:"";s:11:"link_chrome";s:0:"";s:10:"link_opera";s:0:"";s:18:"image_link_firefox";s:0:"";s:17:"image_link_chrome";s:0:"";s:16:"image_link_opera";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(616, 'widget_get_a_fxrezervinfo', 'a:2:{i:2;a:9:{s:5:"title";s:0:"";s:11:"fdxWebMoney";s:1:"0";s:9:"fdxLiqPay";s:1:"1";s:17:"fdxLibertyReserve";s:1:"1";s:15:"fdxPerfectMoney";s:1:"1";s:11:"fdxRBKMoney";s:1:"0";s:7:"fdxQIWI";s:1:"1";s:14:"fdxYandexMoney";s:1:"1";s:13:"fdxMasterTour";s:1:"1";}s:12:"_multiwidget";i:1;}', 'yes'),
(619, 'widget_get_a_fxinfo', 'a:2:{i:2;a:2:{s:5:"title";s:23:"Наш аттестат";s:4:"wmid";s:12:"000000000000";}s:12:"_multiwidget";i:1;}', 'yes'),
(994, 'theme_mods_exchange_box', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:3:"top";i:3;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1366924699;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:15:"get_rx_cursrf-2";i:1;s:19:"get_a_fxlastobmen-2";i:2;s:20:"get_a_fxrezervinfo-2";i:3;s:14:"get_a_fxinfo-2";i:4;s:19:"fx_browser_plugin-2";}s:9:"sidebar-2";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:17:"get_a_fxreviews-2";i:3;s:16:"lt_recent_post-2";}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:1:{i:0;s:6:"text-4";}}}}', 'yes'),
(995, 'theme_switched', '', 'yes'),
(997, 'sa_exchangebox_theme_options', 'a:21:{s:7:"general";s:0:"";s:0:"";s:0:"";s:4:"logo";s:0:"";s:9:"logo_text";s:0:"";s:7:"favicon";s:0:"";s:9:"social_on";s:2:"on";s:14:"vkontakte_link";s:1:"#";s:12:"twitter_link";s:1:"#";s:13:"facebook_link";s:1:"#";s:20:"events_webmoney_link";s:26:"http://events.webmoney.ru/";s:18:"odnoklassniki_link";s:1:"#";s:16:"google_plus_link";s:1:"#";s:5:"style";s:0:"";s:18:"bg_site_texture_on";s:0:"";s:14:"body_texture_1";s:14:"body_texture_1";s:8:"style_on";s:0:"";s:10:"text_color";s:6:"555555";s:10:"link_color";s:6:"39769c";s:8:"browsers";s:0:"";s:7:"ie_6_on";s:0:"";s:14:"link_page_ie_6";s:0:"";}', 'yes'),
(1008, 'widget_lt_recent_post', 'a:2:{i:2;a:5:{s:5:"title";s:33:"Последние новости";s:18:"category_recent_id";s:0:"";s:6:"number";s:1:"3";s:9:"more_link";s:18:"/category/novosti/";s:14:"more_link_text";s:27:"Архив новостей";}s:12:"_multiwidget";i:1;}', 'yes'),
(1052, 'widget_fx_browser_plugin', 'a:2:{i:2;a:6:{s:12:"link_firefox";s:25:"/vidzhety-dlya-brauzerov/";s:11:"link_chrome";s:25:"/vidzhety-dlya-brauzerov/";s:10:"link_opera";s:25:"/vidzhety-dlya-brauzerov/";s:18:"image_link_firefox";s:59:"/wp-content/plugins/exchangebox/download/firefox_widget.zip";s:17:"image_link_chrome";s:58:"/wp-content/plugins/exchangebox/download/chrome_widget.zip";s:16:"image_link_opera";s:57:"/wp-content/plugins/exchangebox/download/opera_widget.zip";}s:12:"_multiwidget";i:1;}', 'yes'),
(2794, 'db_upgraded', '', 'yes'),
(3705, 'link_manager_enabled', '0', 'yes'),
(2813, 'hyper', 'a:9:{s:7:"comment";i:1;s:7:"archive";i:1;s:7:"timeout";i:1440;s:9:"redirects";i:1;s:8:"notfound";i:1;s:14:"clean_interval";i:60;s:4:"gzip";i:1;s:16:"store_compressed";i:1;s:11:"expire_type";s:4:"post";}', 'yes'),
(3775, 'first_exb', '1', 'yes'),
(3777, 'page_on_front', '151', 'yes'),
(3778, 'page_for_posts', '155', 'yes');
INSERT INTO `eb_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4503, 'mailtemp', 'a:26:{s:6:"payout";a:6:{s:4:"mail";s:0:"";s:4:"send";i:1;s:5:"title";s:85:"Заказан вывод средств в партнерской программе";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:139:"Пользователь [name] заказ выплату партнерского вознаграждения на сумму [summ] USD.";s:6:"tomail";s:0:"";}s:7:"zreserv";a:6:{s:4:"mail";s:0:"";s:4:"send";i:1;s:5:"title";s:29:"Резерв доступен";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:210:"На сайте [sitename] вы оставляли запрос на резерв в размере [sum] [valut]. В данный момент доступен резерв в размере [summrez] [valut].";s:6:"tomail";s:0:"";}s:9:"new_bids1";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:33:"Заявка на обмен [id]";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:582:"<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br>\r\nСсылка на заявку: [bidurl] <br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}s:12:"delete_bids1";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:32:"Удалена заявка [id]";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:582:"<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br>\r\nСсылка на заявку: [bidurl] <br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}s:14:"returned_bids1";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:52:"Возврат средств по заявке [id]";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:582:"<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br>\r\nСсылка на заявку: [bidurl] <br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}s:12:"verify_bids1";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:54:"Оплата заявки [id] (на проверке)";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:582:"<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br>\r\nСсылка на заявку: [bidurl] <br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}s:11:"error_bids1";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:33:"Ошибка в заявке [id]";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:582:"<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br>\r\nСсылка на заявку: [bidurl] <br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}s:13:"success_bids1";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:40:"Выполненная заявка [id]";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:582:"<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br>\r\nСсылка на заявку: [bidurl] <br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}s:16:"realdelete_bids1";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:51:"Полностью удалена заявка [id]";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:582:"<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br>\r\nСсылка на заявку: [bidurl] <br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}s:9:"newreview";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:21:"Новый отзыв";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:171:"Добавлен новый отзыв пользователем [user]. <br>\r\nСтатус отзыва: [status].<br>\r\nУправление отзывом: [management]";}s:11:"contactform";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:27:"Обратная связь";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:215:"Поступил запрос от пользователя через форму обратной связи<br>\r\nИмя: [name]<br>\r\nE-mai:l [email]<br>\r\nID обмена: [idz]<br>\r\nСообщение:<br>\r\n[text]";}s:13:"confirmreview";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:33:"Подтвердите отзыв";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:90:"Для подтверждения отзывы перейдите по ссылке [link]";}s:10:"partprofit";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:70:"Начислено партнерское вознаграждение";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:148:"На сайте [sitename] вам было начислено партнерского вознаграждение в размере [sum] [ctype].";}s:12:"lostpassform";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:41:"Восстановление пароля";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:92:"Для восстановления пароля перейдите по ссылке [link]";}s:12:"registerform";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:39:"Успешная регистрация";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:181:"Вы успешно зарегистрировались на сайте [sitename].<br>\r\nВаш логин: [login]<br>\r\nВаш пароль: [pass]<br>\r\nВаш email:  [email]<br>";}s:9:"new_bids2";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:33:"Заявка на обмен [id]";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:680:"Здравствуйте.<br><br>\r\n\r\nСтатус заявки: новая заявка<br>\r\nСсылка на заявку: [bidurl]<br><br>\r\n\r\n<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}s:13:"realpay_bids1";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:47:"Оплата заявки [id] (мерчант)";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:582:"<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br>\r\nСсылка на заявку: [bidurl] <br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}s:11:"payed_bids1";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:47:"Оплата заявки [id] (вручную)";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:582:"<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br>\r\nСсылка на заявку: [bidurl] <br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}s:13:"realpay_bids2";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:30:"Оплата заявки [id]";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:765:"Здравствуйте.<br><br>\r\n\r\nСтатус заявки: уведомление об оплате получено, обрабатывается оператором<br>\r\nСсылка на заявку: [bidurl]<br><br>\r\n\r\n<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}s:11:"payed_bids2";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:30:"Оплата заявки [id]";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:765:"Здравствуйте.<br><br>\r\n\r\nСтатус заявки: уведомление об оплате получено, обрабатывается оператором<br>\r\nСсылка на заявку: [bidurl]<br><br>\r\n\r\n<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}s:12:"verify_bids2";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:30:"Оплата заявки [id]";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:765:"Здравствуйте.<br><br>\r\n\r\nСтатус заявки: уведомление об оплате получено, обрабатывается оператором<br>\r\nСсылка на заявку: [bidurl]<br><br>\r\n\r\n<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}s:12:"delete_bids2";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:32:"Удалена заявка [id]";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:671:"Здравствуйте.<br><br>\r\n\r\nСтатус заявки: удалена<br>\r\nСсылка на заявку: [bidurl]<br><br>\r\n\r\n<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}s:14:"returned_bids2";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:52:"Возврат средств по заявке [id]";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:767:"Здравствуйте.<br><br>\r\n\r\nСтатус заявки: оплаченные средства возвращены обратно на счет плательщика<br>\r\nСсылка на заявку: [bidurl]<br><br>\r\n\r\n<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}s:11:"error_bids2";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:33:"Ошибка в заявке [id]";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:763:"Здравствуйте.<br><br>\r\n\r\nСтатус заявки: ошибка в заявке, свяжитесь с нашей технической поддержкой<br>\r\nСсылка на заявку: [bidurl]<br><br>\r\n\r\n<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}s:13:"success_bids2";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:40:"Выполненная заявка [id]";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:704:"Здравствуйте.<br><br>\r\n\r\nСтатус заявки: выполнена в полном объеме<br>\r\nСсылка на заявку: [bidurl]<br><br>\r\n\r\n<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}s:16:"realdelete_bids2";a:6:{s:4:"mail";s:0:"";s:6:"tomail";s:0:"";s:4:"send";i:1;s:5:"title";s:51:"Полностью удалена заявка [id]";s:4:"name";s:27:"Обменный пункт";s:4:"text";s:659:"Здравствуйте.<br><br>\r\n\r\nСтатус заявки: заявка удалена безвозвратно<br>\r\n\r\n<strong>Информация о заявке</strong><br>\r\nID [id] от [createdate]<br>\r\nКурс обмена: <strong>[curs1] [valut1] [vtype1] -> [curs2] [valut2] [vtype2]</strong><br>\r\nСумма обмена: <strong>[summ1] [valut1] [vtype1] со счета [account1] -> [summ2c] [valut2] [vtype2] на счет [account2]</strong><br><br>\r\n\r\n<strong>Информация о клиенте</strong><br>\r\n[last_name] [first_name] [second_name]<br>\r\nТелефон [user_phone]<br>\r\nEmail [user_email]<br>\r\nSkype [user_skype]<br>";}}', 'yes'),
(4562, 'check_new_user', 'a:5:{i:0;s:1:"0";i:1;s:1:"1";i:2;s:1:"2";i:3;s:1:"3";i:4;s:1:"4";}', 'yes'),
(4506, 'curs_parser', 'a:27:{i:8;a:2:{s:5:"curs1";i:100;s:5:"curs2";s:7:"15.0242";}i:9;a:2:{s:5:"curs1";i:1000;s:5:"curs2";s:8:"66.55928";}i:10;a:2:{s:5:"curs1";i:10000;s:5:"curs2";s:6:"38.982";}i:1;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:7:"72.5066";}i:2;a:2:{s:5:"curs1";i:1000;s:5:"curs2";s:8:"13.79185";}i:3;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:6:"79.547";}i:4;a:2:{s:5:"curs1";i:1000;s:5:"curs2";s:8:"12.57118";}i:7;a:2:{s:5:"curs1";i:100;s:5:"curs2";s:7:"21.3745";}i:5;a:2:{s:5:"curs1";i:100;s:5:"curs2";s:7:"306.582";}i:6;a:2:{s:5:"curs1";i:100;s:5:"curs2";s:7:"32.6177";}i:51;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:6:"1.0952";}i:52;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:7:"0.91308";}i:101;a:2:{s:5:"curs1";i:100;s:5:"curs2";s:8:"2380.748";}i:102;a:2:{s:5:"curs1";i:1000;s:5:"curs2";s:8:"42.00361";}i:103;a:2:{s:5:"curs1";i:100;s:5:"curs2";s:6:"33.633";}i:104;a:2:{s:5:"curs1";i:1000;s:5:"curs2";s:9:"2973.2703";}i:151;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:6:"337.66";}i:152;a:2:{s:5:"curs1";i:1000;s:5:"curs2";s:7:"2.96156";}i:153;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:6:"371.02";}i:154;a:2:{s:5:"curs1";i:1000;s:5:"curs2";s:7:"2.69527";}i:155;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:4:"4.64";}i:156;a:2:{s:5:"curs1";i:100;s:5:"curs2";s:8:"21.55172";}i:201;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:5:"18370";}i:202;a:2:{s:5:"curs1";i:100000;s:5:"curs2";s:7:"5.44366";}i:203;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:5:"20136";}i:204;a:2:{s:5:"curs1";i:100000;s:5:"curs2";s:7:"4.96623";}i:205;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:6:"259.74";}}', 'yes'),
(4507, 'time_parser', '1451413425', 'yes'),
(4508, 'the_cron', 'a:9:{s:3:"now";i:1451415889;s:4:"2min";i:1451415794;s:4:"5min";i:1451415725;s:5:"10min";i:1451415417;s:5:"30min";i:1451415417;s:5:"1hour";i:1451413424;s:5:"3hour";i:1451413424;s:5:"05day";i:1451413424;s:4:"1day";i:1451413424;}', 'yes'),
(4510, 'work_parser', 'a:27:{i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:1;i:5;i:1;i:6;i:1;i:7;i:1;i:8;i:1;i:9;i:1;i:10;i:1;i:51;i:1;i:52;i:1;i:101;i:1;i:102;i:1;i:103;i:1;i:104;i:1;i:151;i:1;i:152;i:1;i:153;i:1;i:154;i:1;i:155;i:1;i:156;i:1;i:201;i:1;i:202;i:1;i:203;i:1;i:204;i:1;i:205;i:1;}', 'yes'),
(3816, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(3844, 'lastcursup', '1440431194', 'yes'),
(3847, 'widget_exbobmen_info', 'a:2:{i:2;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(3849, 'widget_exbrezerv_info', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(3863, 'theme_mods_exchangeboxthemegreen', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:8:"top_menu";i:3;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1405178142;s:4:"data";a:9:{s:19:"wp_inactive_widgets";a:2:{i:0;s:15:"exbobmen_info-3";i:1;s:16:"get_statuswork-2";}s:9:"sidebar-1";a:1:{i:0;s:6:"text-7";}s:9:"sidebar-2";a:1:{i:0;s:6:"text-6";}s:9:"sidebar-3";a:3:{i:0;s:16:"exbloginwidget-2";i:1;s:16:"exbotzivs_info-2";i:2;s:11:"get_rnews-2";}s:9:"sidebar-4";a:1:{i:0;s:6:"text-4";}s:9:"sidebar-5";a:1:{i:0;s:6:"text-5";}s:9:"sidebar-6";a:1:{i:0;s:6:"text-8";}s:9:"sidebar-7";a:1:{i:0;s:6:"text-9";}s:9:"sidebar-8";a:0:{}}}}', 'yes'),
(4017, 'exch_instruction', 'a:1:{s:7:"epochta";s:0:"";}', 'yes'),
(4300, 'widget_exblastobmen_info', 'a:4:{i:2;a:0:{}i:3;a:0:{}i:4;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(4301, 'themechange', 'a:20:{s:8:"logotype";s:0:"";s:7:"favicon";s:19:"/images/favicon.png";s:5:"skype";s:11:"exchangebox";s:3:"icq";s:11:"123 456 789";s:4:"mail";s:16:"info@exchange.ru";s:6:"regrab";s:96:"Пн. - Пт. с 10:00 до 23:00 по мск.\r\nСб. - Вск. свободный график.";s:9:"hometitle";s:73:"Приветствуем на сайте обменного пункта!";s:8:"hometext";s:1740:"Наш On-line сервис предназначен для тех, кто хочет быстро, безопасно и по выгодному курсу обменять такие виды электронных валют: Webmoney, Perfect Money, LiqPay, Pecunix, Payza, Яндекс. Деньги, Payweb, Альфа-Банк, ВТБ 24, Приват24, Связной банк, Visa/Master Card, Western Union, MoneyGram.\r\n\r\nЭтим возможности нашего сервиса не ограничиваются. В рамках проекта действуют программа лояльности, накопительная скидка и партнерская программа, воспользовавшись преимуществами которых, вы сможете совершать обмен электронных валют на более выгодных условиях. Для этого нужно просто зарегистрироваться на сайте.\r\n\r\nНаш пункт обмена электронных валют – система, созданная на базе современного программного обеспечения и содержащая весь набор необходимых функций для удобной и безопасной конвертации наиболее распространенных видов электронных денег. За время работы мы приобрели репутацию проверенного партнера и делаем все возможное, чтобы ваши впечатления от нашего сервиса были только благоприятными.";s:8:"partners";s:754:"<div class="fwidget">\r\n<div class="fwidgetvn">\r\n<div class="fwtitle"><div class="fwtitlevn">Партнеры</div></div>\r\n<table class="tpartner">\r\n<tr>\r\n<td>\r\n<a href="#"><img src="/images/payment_icons/ya_bottom.png" alt="" /></a>\r\n</td>\r\n<td>\r\n<a href="#"><img src="/images/payment_icons/pm_bottom.png" alt="" /></a>\r\n</td>\r\n<td>\r\n<a href="#"><img src="/images/payment_icons/stp_bottom.png" alt="" /></a>\r\n</td>\r\n<td>\r\n<a href="#"><img src="/images/payment_icons/egopay_bottom.png" alt="" /></a>\r\n</td>\r\n<td>\r\n<a href="#"><img src="/images/payment_icons/bitcoin_bottom.png" alt="" /></a>\r\n</td>\r\n<td>\r\n<a href="#"><img src="/images/payment_icons/okpay_bottom.png" alt="" /></a>\r\n</td>							\r\n</tr>\r\n</table>\r\n<div class="clear"></div>\r\n</div>\r\n</div>";s:7:"footer1";s:112:"Обменный пункт электронных валют.</br>\r\nВсе права защищены © 2015.";s:7:"footer2";s:154:"<a href="/preduprezhdenie/">Предупреждение</a>   •   <a href="/tos/">Правила</a>   •   <a href="/sitemap/">Карта</a>";s:7:"footer3";s:0:"";s:10:"footercode";s:0:"";s:10:"checktheme";s:4:"blue";s:11:"hometexttop";s:0:"";s:3:"tel";s:17:"8 (800) 123 45 67";s:3:"pwh";i:1;s:6:"ptitle";s:16:"Партнеры";s:6:"footer";s:68:"© 2015 Сервис обмена электронных валют.";s:11:"regrabtitle";s:51:"ВРЕМЯ РАБОТЫ ТЕХ. ПОДДЕРЖКИ:";}', 'yes'),
(4305, 'exb_version', 'a:2:{s:4:"text";s:58:" Доступно обновление для ExchangeBox ";s:7:"version";s:3:"4.0";}', 'yes'),
(4347, 'WPLANG', 'ru_RU', 'yes'),
(4364, 'theme_mods_exchangeboxtheme2', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:8:"top_menu";i:3;s:11:"bottom_menu";i:4;}}', 'yes'),
(4458, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1451404661;s:7:"checked";a:1:{s:27:"exchangebox/exchangebox.php";s:3:"5.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:0:{}}', 'yes'),
(4459, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1451402628;s:7:"checked";a:1:{s:17:"exchangeboxtheme2";s:3:"2.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(4505, 'lcurs_parser', 'a:27:{i:8;a:2:{s:5:"curs1";i:100;s:5:"curs2";s:7:"13.9257";}i:9;a:2:{s:5:"curs1";i:1000;s:5:"curs2";s:8:"71.80968";}i:10;a:2:{s:5:"curs1";i:10000;s:5:"curs2";s:7:"37.3113";}i:1;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:7:"66.6343";}i:2;a:2:{s:5:"curs1";i:1000;s:5:"curs2";s:8:"15.00729";}i:3;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:7:"71.8184";}i:4;a:2:{s:5:"curs1";i:1000;s:5:"curs2";s:8:"13.92401";}i:7;a:2:{s:5:"curs1";i:100;s:5:"curs2";s:7:"21.6093";}i:5;a:2:{s:5:"curs1";i:100;s:5:"curs2";s:7:"289.274";}i:6;a:2:{s:5:"curs1";i:100;s:5:"curs2";s:7:"34.5693";}i:51;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:6:"1.0726";}i:52;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:7:"0.93231";}i:101;a:2:{s:5:"curs1";i:100;s:5:"curs2";s:8:"2291.723";}i:102;a:2:{s:5:"curs1";i:1000;s:5:"curs2";s:8:"43.63529";}i:103;a:2:{s:5:"curs1";i:100;s:5:"curs2";s:8:"2458.102";}i:104;a:2:{s:5:"curs1";i:1000;s:5:"curs2";s:8:"40.68179";}i:151;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:6:"307.73";}i:152;a:2:{s:5:"curs1";i:1000;s:5:"curs2";s:6:"3.2496";}i:153;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:6:"330.99";}i:154;a:2:{s:5:"curs1";i:1000;s:5:"curs2";s:7:"3.02124";}i:155;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:4:"4.62";}i:156;a:2:{s:5:"curs1";i:100;s:5:"curs2";s:8:"21.64502";}i:201;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:5:"17745";}i:202;a:2:{s:5:"curs1";i:100000;s:5:"curs2";s:7:"5.63539";}i:203;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:5:"19051";}i:204;a:2:{s:5:"curs1";i:100000;s:5:"curs2";s:7:"5.24907";}i:205;a:2:{s:5:"curs1";i:1;s:5:"curs2";s:6:"271.35";}}', 'yes'),
(4502, 'the_pages', 'a:21:{s:4:"home";i:151;s:7:"xchange";i:152;s:12:"xchangestep2";i:153;s:12:"xchangestep3";i:154;s:4:"news";i:155;s:7:"payouts";i:156;s:8:"feedback";i:157;s:7:"reviews";i:158;s:5:"login";i:159;s:8:"register";i:160;s:8:"lostpass";i:161;s:7:"account";i:162;s:9:"userstats";i:0;s:10:"usersobmen";i:164;s:3:"tos";i:165;s:11:"partnersFAQ";i:166;s:7:"banners";i:167;s:12:"partnerstats";i:168;s:7:"sitemap";i:213;s:6:"tarifs";i:214;s:12:"exchangestep";i:226;}', 'yes'),
(4490, 'finished_splitting_shared_terms', '1', 'yes'),
(4625, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1447395206', 'no'),
(4641, '_site_transient_timeout_browser_72ccb266eb9276f497ef7e8eaecdaec0', '1452007887', 'yes'),
(4642, '_site_transient_browser_72ccb266eb9276f497ef7e8eaecdaec0', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"47.0.2526.106";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(4643, 'widget_exbregisterwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(4644, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(4645, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(4646, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(4647, 'site_icon', '0', 'yes'),
(4648, 'medium_large_size_w', '768', 'yes'),
(4649, 'medium_large_size_h', '0', 'yes'),
(4651, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.4.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.4.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.4";s:7:"version";s:3:"4.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1451404653;s:15:"version_checked";s:3:"4.4";s:12:"translations";a:0:{}}', 'yes'),
(4652, '_site_transient_timeout_theme_roots', '1451406453', 'yes'),
(4653, '_site_transient_theme_roots', 'a:1:{s:17:"exchangeboxtheme2";s:7:"/themes";}', 'yes'),
(4654, 'can_compress_scripts', '1', 'yes'),
(4655, '_transient_timeout_plugin_slugs', '1451491072', 'no'),
(4656, '_transient_plugin_slugs', 'a:1:{i:0;s:27:"exchangebox/exchangebox.php";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `eb_partners`
--

CREATE TABLE IF NOT EXISTS `eb_partners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `link` tinytext NOT NULL,
  `img` longtext NOT NULL,
  `rsort` bigint(20) NOT NULL DEFAULT '0',
  `site_order` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `eb_partners`
--

INSERT INTO `eb_partners` (`id`, `title`, `link`, `img`, `rsort`, `site_order`) VALUES
(1, 'Bitcoin', '#', '/images/payment_icons/bitcoin_bottom.png', 4, 0),
(2, 'Яндекс.Деньги', '#', '/images/payment_icons/ya_bottom.png', 1, 0),
(3, 'Perfect Money', '#', '/images/payment_icons/pm_bottom.png', 2, 0),
(4, 'Solid', '#', '/images/payment_icons/stp_bottom.png', 5, 0),
(5, 'Egopay', '#', '/images/payment_icons/egopay_bottom.png', 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `eb_partner_pers`
--

CREATE TABLE IF NOT EXISTS `eb_partner_pers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sumec` varchar(20) NOT NULL DEFAULT '0',
  `pers` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `eb_partner_pers`
--

INSERT INTO `eb_partner_pers` (`id`, `sumec`, `pers`) VALUES
(1, '0', '0.1'),
(2, '500', '0.2'),
(3, '5000', '0.3'),
(4, '10000', '0.4'),
(5, '15000', '0.5');

-- --------------------------------------------------------

--
-- Структура таблицы `eb_payoutuser`
--

CREATE TABLE IF NOT EXISTS `eb_payoutuser` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bdate` datetime NOT NULL,
  `userid` bigint(20) NOT NULL DEFAULT '0',
  `bsumm` varchar(250) NOT NULL DEFAULT '0',
  `bstatus` int(1) NOT NULL DEFAULT '0',
  `bcomment` longtext NOT NULL,
  `valuts` varchar(250) NOT NULL,
  `schet` varchar(250) NOT NULL,
  `valsid` bigint(20) NOT NULL DEFAULT '0',
  `user_login` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_plinks`
--

CREATE TABLE IF NOT EXISTS `eb_plinks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `user_login` varchar(250) NOT NULL,
  `pdate` datetime NOT NULL,
  `pbrowser` longtext NOT NULL,
  `pip` longtext NOT NULL,
  `prefer` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_postmeta`
--

CREATE TABLE IF NOT EXISTS `eb_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=433 ;

--
-- Дамп данных таблицы `eb_postmeta`
--

INSERT INTO `eb_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(299, 171, '_menu_item_menu_item_parent', '0'),
(300, 171, '_menu_item_object_id', '171'),
(301, 171, '_menu_item_object', 'custom'),
(302, 171, '_menu_item_target', ''),
(275, 151, '_wp_page_template', 'exb-pluginpage.php'),
(276, 152, '_wp_page_template', 'exb-pluginpage.php'),
(431, 153, '_wp_page_template', 'exb-pluginpage.php'),
(279, 156, '_wp_page_template', 'exb-pluginpage.php'),
(280, 169, '_menu_item_type', 'post_type'),
(281, 169, '_menu_item_menu_item_parent', '0'),
(282, 169, '_menu_item_object_id', '157'),
(283, 169, '_menu_item_object', 'page'),
(309, 160, '_edit_lock', '1445589960:1'),
(310, 173, '_edit_last', '1'),
(311, 173, '_edit_lock', '1445542932:1'),
(312, 173, '_wp_page_template', 'default'),
(322, 166, '_edit_lock', '1445542831:1'),
(323, 166, '_edit_last', '1'),
(324, 166, '_wp_page_template', 'default'),
(325, 160, '_edit_last', '1'),
(326, 160, '_wp_page_template', 'default'),
(327, 188, '_menu_item_type', 'post_type'),
(328, 188, '_menu_item_menu_item_parent', '171'),
(329, 188, '_menu_item_object_id', '160'),
(330, 188, '_menu_item_object', 'page'),
(331, 188, '_menu_item_target', ''),
(332, 188, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(333, 188, '_menu_item_xfn', ''),
(334, 188, '_menu_item_url', ''),
(336, 189, '_menu_item_type', 'post_type'),
(337, 189, '_menu_item_menu_item_parent', '171'),
(338, 189, '_menu_item_object_id', '159'),
(339, 189, '_menu_item_object', 'page'),
(340, 189, '_menu_item_target', ''),
(341, 189, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(342, 189, '_menu_item_xfn', ''),
(343, 189, '_menu_item_url', ''),
(345, 159, '_edit_lock', '1367062872:1'),
(346, 159, '_edit_last', '1'),
(347, 159, '_wp_page_template', 'default'),
(348, 165, '_edit_lock', '1445542886:1'),
(349, 165, '_edit_last', '1'),
(350, 165, '_wp_page_template', 'default'),
(351, 194, '_menu_item_type', 'post_type'),
(352, 194, '_menu_item_menu_item_parent', '0'),
(353, 194, '_menu_item_object_id', '165'),
(354, 194, '_menu_item_object', 'page'),
(355, 194, '_menu_item_target', ''),
(356, 194, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(357, 194, '_menu_item_xfn', ''),
(358, 194, '_menu_item_url', ''),
(305, 171, '_menu_item_url', '#'),
(296, 170, '_menu_item_url', ''),
(295, 170, '_menu_item_xfn', ''),
(294, 170, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(293, 170, '_menu_item_target', ''),
(292, 170, '_menu_item_object', 'page'),
(291, 170, '_menu_item_object_id', '158'),
(290, 170, '_menu_item_menu_item_parent', '0'),
(289, 170, '_menu_item_type', 'post_type'),
(298, 171, '_menu_item_type', 'custom'),
(287, 169, '_menu_item_url', ''),
(284, 169, '_menu_item_target', ''),
(285, 169, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(286, 169, '_menu_item_xfn', ''),
(215, 130, '_menu_item_object', 'custom'),
(212, 130, '_menu_item_type', 'custom'),
(213, 130, '_menu_item_menu_item_parent', '0'),
(214, 130, '_menu_item_object_id', '130'),
(304, 171, '_menu_item_xfn', ''),
(303, 171, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(219, 130, '_menu_item_url', '/'),
(216, 130, '_menu_item_target', ''),
(217, 130, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(218, 130, '_menu_item_xfn', ''),
(369, 155, '_edit_lock', '1367132165:1'),
(372, 213, '_wp_page_template', 'exb-pluginpage.php'),
(373, 215, '_menu_item_type', 'post_type'),
(374, 215, '_menu_item_menu_item_parent', '0'),
(375, 215, '_menu_item_object_id', '214'),
(376, 215, '_menu_item_object', 'page'),
(377, 215, '_menu_item_target', ''),
(378, 215, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(379, 215, '_menu_item_xfn', ''),
(380, 215, '_menu_item_url', ''),
(384, 164, '_edit_lock', '1368981983:1'),
(385, 157, '_wp_page_template', 'default'),
(386, 158, '_wp_page_template', 'exb-pluginpage.php'),
(387, 162, '_wp_page_template', 'exb-pluginpage.php'),
(388, 164, '_wp_page_template', 'exb-pluginpage.php'),
(389, 167, '_wp_page_template', 'exb-pluginpage.php'),
(390, 168, '_wp_page_template', 'exb-pluginpage.php'),
(391, 214, '_wp_page_template', 'exb-pluginpage.php'),
(392, 157, '_edit_lock', '1440425452:1'),
(393, 157, '_edit_last', '1'),
(394, 220, '_menu_item_type', 'post_type'),
(395, 220, '_menu_item_menu_item_parent', '0'),
(396, 220, '_menu_item_object_id', '213'),
(397, 220, '_menu_item_object', 'page'),
(398, 220, '_menu_item_target', ''),
(399, 220, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(400, 220, '_menu_item_xfn', ''),
(401, 220, '_menu_item_url', ''),
(403, 221, '_menu_item_type', 'post_type'),
(404, 221, '_menu_item_menu_item_parent', '0'),
(405, 221, '_menu_item_object_id', '173'),
(406, 221, '_menu_item_object', 'page'),
(407, 221, '_menu_item_target', ''),
(408, 221, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(409, 221, '_menu_item_xfn', ''),
(410, 221, '_menu_item_url', ''),
(412, 222, '_menu_item_type', 'post_type'),
(413, 222, '_menu_item_menu_item_parent', '0'),
(414, 222, '_menu_item_object_id', '165'),
(415, 222, '_menu_item_object', 'page'),
(416, 222, '_menu_item_target', ''),
(417, 222, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(418, 222, '_menu_item_xfn', ''),
(419, 222, '_menu_item_url', ''),
(423, 226, '_wp_page_template', 'exb-pluginpage.php'),
(424, 151, '_edit_lock', '1445542842:1'),
(432, 154, '_wp_page_template', 'exb-pluginpage.php'),
(429, 226, '_edit_lock', '1447418187:1'),
(430, 226, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `eb_posts`
--

CREATE TABLE IF NOT EXISTS `eb_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_name` (`post_name`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=236 ;

--
-- Дамп данных таблицы `eb_posts`
--

INSERT INTO `eb_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(188, 1, '2013-04-27 15:34:56', '2013-04-27 11:34:56', '', 'Условия и регистрации', '', 'publish', 'open', 'closed', '', 'usloviya-i-registratsii', '', '', '2013-05-19 19:34:56', '2013-05-19 15:34:56', '', 0, 'http://exchange.best-curs.info/?p=188', 6, 'nav_menu_item', '', 0),
(189, 1, '2013-04-27 15:35:14', '2013-04-27 11:35:14', ' ', '', '', 'publish', 'open', 'closed', '', '189', '', '', '2013-05-19 19:34:56', '2013-05-19 15:34:56', '', 0, 'http://exchange.best-curs.info/?p=189', 5, 'nav_menu_item', '', 0),
(194, 1, '2013-04-27 16:00:13', '2013-04-27 12:00:13', '', 'Правила', '', 'publish', 'open', 'closed', '', 'pravila', '', '', '2013-05-19 19:34:56', '2013-05-19 15:34:56', '', 0, 'http://exchange.best-curs.info/?p=194', 3, 'nav_menu_item', '', 0),
(151, 1, '2013-04-26 16:43:36', '2013-04-26 12:43:36', '[changetable]', 'Главная', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2013-04-26 16:43:36', '2013-04-26 12:43:36', '', 0, 'http://exchange.best-curs.info/home/', 0, 'page', '', 0),
(152, 1, '2013-04-26 16:43:36', '2013-04-26 12:43:36', '[xchange]', 'Обмен', '', 'publish', 'closed', 'closed', '', 'xchange', '', '', '2013-04-26 16:43:36', '2013-04-26 12:43:36', '', 0, 'http://exchange.best-curs.info/xchange/', 0, 'page', '', 0),
(155, 1, '2013-04-26 16:43:36', '2013-04-26 12:43:36', '', 'Новости', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2013-04-26 16:43:36', '2013-04-26 12:43:36', '', 0, 'http://exchange.best-curs.info/news/', 0, 'page', '', 0),
(156, 1, '2013-04-26 16:43:36', '2013-04-26 12:43:36', '[exb_payouts]', 'Вывод партнерских средств', '', 'publish', 'closed', 'closed', '', 'payouts', '', '', '2013-04-26 16:43:36', '2013-04-26 12:43:36', '', 0, 'http://exchange.best-curs.info/payouts/', 0, 'page', '', 0),
(157, 1, '2013-04-26 16:43:36', '2013-04-26 12:43:36', 'Мы всегда готовы ответить на интересующие Вас вопросы, а также выслушать Ваши предложения по улучшению нашего сервиса.\r\n\r\nИспользуйте данную форму, если хотите задать нам вопрос, или сообщить о ошибке. Пожалуйста, делайте Ваше сообщение как можно более развернутым, тогда мы сможем решить проблему намного быстрее.\r\n\r\n[exb_contact_form]', 'Контакты', '', 'publish', 'closed', 'closed', '', 'feedback', '', '', '2015-08-24 17:13:11', '2015-08-24 14:13:11', '', 0, 'http://exchange.best-curs.info/feedback/', 0, 'page', '', 0),
(158, 1, '2013-04-26 16:43:36', '2013-04-26 12:43:36', '[exb_reviewspage]', 'Отзывы', '', 'publish', 'closed', 'closed', '', 'reviews', '', '', '2013-04-26 16:43:36', '2013-04-26 12:43:36', '', 0, 'http://exchange.best-curs.info/reviews/', 0, 'page', '', 0),
(159, 1, '2013-04-26 16:43:36', '2013-04-26 12:43:36', '<h3>Партнёрам</h3>\r\nМы предлагаем вам зарегистрироваться в личном кабинет, чтобы активировать накопительную систему скидок, отслеживать статус ваших заявок и статистику обменов.\r\n\r\nТакже мы предлагает вам поучаствовать в партнерской программе по привлечению клиентов. Зарегистрировавшись в нашей партнерской программе, вы будете получать процент от суммы обмена. После регистрации вы получите на выбор большое количество различных промо-материалов (тексты, баннеры), а также файл экспорта курсов для мониторингов. Все, что потребуется – это приглашать посетителей на наш сайт, размещая промо-материалы на своих домашних страницах, блогах, форумах, сервисах вопросов и ответов, досках объявлений и на других ресурсах. Ваша ссылка будет содержать уникальный код, который позволит определить, что посетитель пришел по ссылке именно от вас.\r\n<h3>Регистрация</h3>\r\nДля регистрации в кабинете, пройдите <a href="/register/">по этой ссылке</a> и заполните простую форму. Перед регистрацией вам будет необходимо ознакомиться с условиями работы и принять пользовательское соглашение.\r\n<h3>Вход</h3>\r\nЕсли вы уже являетесь зарегистрированным пользователем нашего сайта, выполните вход, используя следующую форму авторизации:\r\n\r\n[exb_loginform]', 'Авторизация', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2013-04-27 15:43:02', '2013-04-27 11:43:02', '', 0, 'http://exchange.best-curs.info/login/', 0, 'page', '', 0),
(160, 1, '2013-04-26 16:43:36', '2013-04-26 12:43:36', '1. Зарегистрированные пользователи получают право использовать накопительную систему скидок при совершение обмене:\r\n<ul>\r\n	<li>0-99 USD - 1%</li>\r\n	<li>100-999 USD - 2%</li>\r\n	<li>1000-4999 USD - 3%</li>\r\n	<li>5000- 9999 USD - 4%</li>\r\n	<li>10000-19999 USD - 5%</li>\r\n	<li>свыше 20000 USD - 6%</li>\r\n</ul>\r\n2. Начисления и выплаты по партнерской программе ведутся в долларах (WebMoney WMZ).\r\n\r\n3. Минимальная сумма для снятия заработанных денег с партнерского счета составляет 5 USD.\r\n\r\n4. За каждый совершенный обмен по вашей партнерской ссылке вы получает вознаграждение в размере от 1% до 6% от суммы обмена. Процент отчислений зависит от суммы совершенных обменов по вашей партнерской ссылке:\r\n<ul>\r\n	<li>0-99 USD - 1%</li>\r\n	<li>100-999 USD - 2%</li>\r\n	<li>1000-4999 USD - 3%</li>\r\n	<li>5000- 9999 USD - 4%</li>\r\n	<li>10000-19999 USD - 5%</li>\r\n	<li>свыше 20000 USD - 6%</li>\r\n</ul>\r\n4.1. Указанные значения партнерских вознаграждений быть со временем изменены. При этом все заработанные средства сохраняются на счете с учетом действовавших ранее ставок.\r\n\r\n5. На странице, где вы публикуете о нас информацию должно быть четко указано об услугах, предоставляемых нашим сайтом. В рекламных текстах запрещаются любые упоминания о наличии «бесплатных бонусов» на нашем сайте.\r\n\r\n6. Запрещается размещать партнерскую ссылку:\r\n<ul>\r\n	<li>в массовых рассылках писем (СПАМ);</li>\r\n	<li>на сайтах, принудительно открывающих окна браузера, либо открывающих сайты в скрытых фреймах;</li>\r\n	<li>на сайтах, распространяющих любые материалы, прямо или косвенно нарушающие законодательство РФ;</li>\r\n	<li>на сайтах, публикующих списки сайтов с «бесплатными бонусами»;</li>\r\n	<li>на веб-страницах, закрытых от публичного просмотра с помощью авторизации (различные социальные сети, закрытые разделы форумов и т.п.).</li>\r\n</ul>\r\nСайты, нарушающие одно или несколько вышеперечисленных правил, будут занесены в черный список нашей партнерской программы. Оплата за посетителей, пришедших с подобных сайтов производиться не будет.\r\n\r\n7 . При несоблюдении данных условий аккаунт нарушителя будет заблокирован без выплат и объяснения причин.\r\n\r\n8. Партнер несет полную ответственность за сохранность своих аутентификационных данных (логина и пароля) для доступа к аккаунту.\r\n\r\n9. Данные условия могут изменяться в одностороннем порядке без оповещения участников программы, но с публикацией на этой странице.\r\n<h1>Регистрация</h1>\r\nПожалуйста, внимательно и аккуратно заполните все поля регистрационной формы. На указанный вами e-mail будет выслано уведомление о регистрации.\r\n\r\n[exb_registerform]', 'Условия регистрации личного и партнерского кабинета', '    \r\n    \r\n    \r\n    \r\n    \r\n    ', 'publish', 'closed', 'closed', '', 'register', '', '', '2013-07-03 19:49:41', '2013-07-03 15:49:41', '', 0, 'http://exchange.best-curs.info/register/', 0, 'page', '', 0),
(161, 1, '2013-04-26 16:43:36', '2013-04-26 12:43:36', '[exb_lostpassform]', 'Восстановление пароля', '', 'publish', 'closed', 'closed', '', 'lostpass', '', '', '2013-04-26 16:43:36', '2013-04-26 12:43:36', '', 0, 'http://exchange.best-curs.info/lostpass/', 0, 'page', '', 0),
(162, 1, '2013-04-26 16:43:36', '2013-04-26 12:43:36', '[exb_account]', 'Личный кабинет', '', 'publish', 'closed', 'closed', '', 'account', '', '', '2013-04-26 16:43:36', '2013-04-26 12:43:36', '', 0, 'http://exchange.best-curs.info/account/', 0, 'page', '', 0),
(164, 1, '2013-04-26 16:43:36', '2013-04-26 12:43:36', '[exb_usersobmen]', 'Ваши операции', '', 'publish', 'closed', 'closed', '', 'usersobmen', '', '', '2013-04-26 16:43:36', '2013-04-26 12:43:36', '', 0, 'http://exchange.best-curs.info/usersobmen/', 0, 'page', '', 0),
(165, 1, '2013-04-26 16:43:36', '2013-04-26 12:43:36', '<strong>1. Стороны соглашения.</strong>\r\n\r\nДоговор заключается между интернет сервисом по обмену титульных знаков, далее Исполнитель, — с одной стороны, и Заказчик, в лице того, кто воспользовался услугами Исполнителя, — с другой стороны.\r\n\r\n<strong>2. Список терминов.</strong>\r\n\r\n2.1. Обмен титульных знаков — автоматизированный продукт интернет обслуживания, который предоставляется Исполнителем на основании данных правил.\r\n2.2. Заказчик — физическое лицо, соглашающееся с условиями Исполнителя и данного соглашения, к которому присоединяется.\r\n2.3. Титульный знак — условная единица той или иной платежной системы, которая соответствует расчетам электронных систем и обозначает объем прав, соответствующих договору системы электронной оплаты и ее Заказчика.\r\n2.4. Заявка — сведения, переданные Заказчиком для использования средств Исполнителя в электронном виде и свидетельствующие о том, что он принимает условия пользования сервисом, которые предлагаются Исполнителем в данной заявке.\r\n\r\n<strong>3. Условия соглашения.</strong>\r\n\r\nДанные правила считаются организованными за счет условий общественной оферты, которая образуется во время подачи Заказчиком заявки и является одной из главных составляющих настоящего договора. Общественной офертой именуются отображаемые исполнителем сведения об условиях подачи заявки. Главным составляющим общественной оферты являются действия, сделанные в завершении подачи заявки Заказчиком и говорящие о его точных намерениях совершить сделку на условиях предложенных Исполнителем перед завершением данной заявки. Время, дата, и параметры заявки создаются Исполнителем автоматически в момент окончания формирования данной заявки. Предложение должно приняться Заказчиком в течение 24 часов от окончания формирования заявки. Договор по обслуживанию вступает в силу с момента поступления титульных знаков в полном размере, указанном в заявке, от Заказчика на реквизиты Исполнителя. Операции с титульными знаками учитываются согласно правилам, регламенту и формату электронных систем по расчетам. Договор действителен в течение срока , который устанавливается с момента подачи заявки до расторжения по инициативе одной из сторон.\r\n\r\n<strong>4. Предмет соглашения.</strong>\r\n\r\nПутем использования технических методов Исполнитель обязуется выполнять обмен титульных знаков за комиссионное вознаграждение от Заказчика, после подачи данным лицом заявки и совершает это путем продажи титульных знаков лицам, желающим их приобрести по сумме, указанной не ниже, чем в заявке поданной Заказчиком. Денежные средства Исполнитель обязуется переводить на указанные Заказчиком реквизиты. В случае возникновения во время обмена прибыли, она остается на счету Исполнителя, как дополнительная выгода и премия за комиссионные услуги.\r\n\r\n<strong>5. В дополнение.</strong>\r\n\r\n5.1. Если на счет Исполнителя поступает сумма, отличающаяся от указанной в заявке, Исполнитель делает перерасчет, который соответствует фактическому поступлению титульных знаков. Если данная сумма превышает указанную в заявке более чем на 10%, Исполнитель расторгает договор в одностороннем порядке и все средства возвращаются на реквизиты Заказчика, с учетом вычтенной суммы на комиссионные расходы во время перевода.\r\n5.2. В случае, когда титульные знаки не отправляются Исполнителем на указанные реквизиты Заказчика в течение 24 часов, Заказчик имеет полное право потребовать расторжение соглашения и аннулировать свою заявку, тем самым совершая возврат титульных знаков на свой счет в полном объеме. Заявка на расторжение соглашения и возврата титульных знаков выполняется Исполнителем в том случае, если денежные средства еще не были переведены на указанные реквизиты Заказчика. В случае аннулирования договора, возврат электронной валюты производится в течение 24 часов с момента получения требовании о расторжении договора. Если задержки при возврате возникли не по вине Исполнителя, он не несет за них ответственности.\r\n5.3. Если титульные знаки не поступаеют от Заказчика на счет Исполнителя в течение указанного срока, с момента подачи заявки Заказчиком, соглашение между сторонами расторгается Исполнителем с одной стороны, так как договор не вступает в действие. Заказчик может об этом не уведомляться. Если титульные знаки поступает на реквизиты Исполнителя после указанного срока, то такие средства переводятся обратно на счет Заказчика, причем все комиссионные расходы, связанные с переводом, вычитаются из данных средств.\r\n5.4. Если происходит задержка перевода средств на реквизиты, указанные Заказчиком, по вине расчетной системы, Исполнитель не несет ответственности за ущерб, возникающий в результате долгого поступления денежных средств. В этом случае Заказчик должен согласиться с тем, что все претензии будут предъявляться к расчетной системе, а Исполнитель оказывает свою помощь по мере своих возможностей в рамках закона.\r\n5.5. В случае обнаружения подделки коммуникационных потоков или оказания воздействия, с целью ухудшить работу Исполнителя, а именно его программного кода, заявка приостанавливается, а переведенные средства подвергаются перерасчету в соответствии с действующим соглашением. Если Заказчик не согласен с перерасчетом, он имеет полное право расторгнуть договор и титульные знаки отправятся на реквизиты указанные Заказчиком.\r\n5.6. В случае пользования услугами Исполнителя, Заказчик полностью соглашается с тем, что Исполнитель несет ограниченную ответственность соответствующую рамкам настоящих правил полученных титульных знаков и не дает дополнительных гарантий Заказчику, а также не несет перед ним дополнительной ответственности. Соответственно Заказчик  не несет дополнительной ответственности перед Исполнителем.\r\n5.7. Заказчик обязуется выполнять нормы соответствующие законодательству, а также не подделывать коммуникационные потоки и не создавать препятствий для нормальной работы программного кода Исполнителя.\r\n5.8.Исполнитель не несет ответственности за ущерб и последствия при ошибочном переводе электронной валюты в том случае, если Заказчик указал при подаче заявки неверные реквизиты.\r\n\r\n<strong>6. Гарантийный срок</strong>\r\n\r\nВ течение 24 часов с момента исполнения обмена титульных знаков Исполнитель дает гарантию на оказываемые услуги при условии, если не оговорены иные сроки.\r\n\r\n<strong>7. Непредвиденные обстоятельства.</strong>\r\n\r\nВ случае, когда в процессе обработки заявки Заказчика возникают непредвиденные обстоятельства, способствующие невыполнению Исполнителем условий договора, сроки выполнения заявки переносятся на соответствующий срок длительности форс-мажора. За просроченные обязательства Исполнитель ответственности не несет.\r\n\r\n<strong>8. Форма соглашения.</strong>\r\n\r\nДанное соглашение обе стороны, в лице Исполнителя и Заказчика, принимают как равноценный по юридической силе договор, обозначенный в письменной форме.\r\n\r\n<strong>9. Работа с картами Англии, Германии и США.</strong>\r\n\r\nДля владельцев карт стран Англии, Германии и США условия перевода титульных знаков продляются на неопределенный срок, соответствующий полной проверке данных владельца карты. Денежные средства в течение всего срока не подвергаются никаким операциям и в полном размере находятся на счете Исполнителя.\r\n\r\n<strong>10 Претензии и споры.</strong>\r\n\r\nПретензии по настоящему соглашению принимаются Исполнителем в форме электронного письма, в котором Заказчик указывает суть претензии. Данное письмо отправляется на указанные на сайте реквизиты Исполнителя.\r\n\r\n<strong>11. Проведение обменных операций.</strong>\r\n\r\n11.1.Категорически запрещается пользоваться услугами Исполнителя для проведения незаконных переводов и мошеннических действий. При заключении настоящего договора, Заказчик обязуется выполнять эти требования и в случае мошенничества нести уголовную ответственность, установленную законодательством на данный момент.\r\n11.2. В случае невозможности выполнения заявки автоматически, по не зависящим от Исполнителя обстоятельствам, таким как отсутствие связи, нехватка средств, или же ошибочные данные Заказчика, средства поступают на счет в течение последующих 24 часов или же возвращается на реквизиты Заказчика за вычетом комиссионных расходов.\r\n11.3.По первому требованию Исполнитель вправе передавать информацию о переводе электронной валюты правоохранительным органам, администрации расчетных систем, а также жертвам неправомерных действий, пострадавшим в результате доказанного судебными органами мошенничества.\r\n11.4. Заказчик обязуется представить все документы, удостоверяющие его личность, в случае подозрения о мошенничестве и отмывании денег.\r\n11.5. Заказчик обязуется не вмешиваться в работу Исполнителя и не наносить урон его программной и аппаратной части, а также Заказчик обязуется передавать точные сведения для обеспечения выполнения Исполнителем всех условий договора.\r\n\r\n<strong>12.Отказ от обязательств.</strong>\r\n\r\nИсполнитель имеет право отказа на заключение договора и выполнение заявки, причем без объяснения причин. Данный пункт применяется по отношению к любому клиенту.', 'Правила сайта', '', 'publish', 'closed', 'closed', '', 'tos', '', '', '2013-04-27 15:59:31', '2013-04-27 11:59:31', '', 0, 'http://exchange.best-curs.info/tos/', 0, 'page', '', 0),
(166, 1, '2013-04-26 16:43:36', '2013-04-26 12:43:36', '[from_user]\r\n<strong>Вопрос: Как работает партнерская программа?</strong>\r\n\r\nОтвет: Зарегистрировавшись в нашей партнерской программе, Вы получаете уникальный партнерский идентификатор, который добавляется во все Ваши ссылки (?exbpid=777) и HTML-код. Вы можете размещать ссылки на любые страницы нашего сервиса  на своем сайте, блоге, страничке, в сообществах и социальных сетях.<strong>   </strong>\r\n\r\n<strong>Вопрос: Сколько я буду зарабатывать, участвуя в Вашей партнерской программе?</strong>\r\n\r\nОтвет: Это зависит от многих факторов, таких как:\r\n\r\n1. Посещаемость Вашего веб-сайта или сайтов, где Вы размещаете о нас информацию.\r\n\r\n2. Соответствие тематики сайта той целевой аудитории, которая может заинтересоваться услугами обмена валют. Проще говоря, не стоит рассчитывать на большое количество переходов по Вашей партнерской ссылке, размещенной на сайте, посвященном разведению попугаев.\r\n\r\n3. Правильная подача информации. Например, мало кого привлечет одна лишь ссылка "обмен валют" без всяких описаний где-нибудь в углу веб-страницы.\r\n\r\n<strong>Вопрос: Если я поставлю свою партнерскую ссылку в подпись на форуме, будут ли учитываться переходы и все остальные условия ПП?</strong>\r\n\r\n<strong></strong>Ответ: Да, конечно будут.\r\n\r\n<strong>Вопрос: На моем сайте уже установлены другие партнерские программы. Могу ли я быть Вашим партнером?</strong>\r\n\r\nОтвет: Да, можете. У нас нет ограничений на работу с другими партнерскими программами.\r\n\r\n<strong>Вопрос: Подходит ли мой сайт для участия в партнерской программе?</strong>\r\n\r\nОтвет: Мы приветствуем любые сайты, которые не противоречат условиям нашей партнерской программы. Посмотреть список условий можно <a href="/register/">здесь</a> (пункт 6).\r\n\r\n<strong>Вопрос: Сколько уровней в Вашей партнерской программе? Оплачивается ли привлечение новых партнеров?</strong>\r\n\r\nОтвет: В нашей партнерской программе 6-ть уровней. Привлечение новых партнеров не оплачивается.\r\n\r\n<strong>Вопрос: Не могу войти в свой аккаунт партнера. Пишет "Неверное сочетание логина и пароля". При этом я уверен, что ввожу пароль правильно.</strong>\r\n\r\nОтвет: Убедитесь, что при вводе пароля у Вас не включена русская раскладка клавиатуры или Caps Lock. Если Вы точно помните только логин – воспользуйтесь функцией <a href="/lostpass/">Напоминания пароля</a>. Пароль будет выслан на Ваш e-mail, указанный при регистрации.\r\n\r\n<strong>Вопрос: Как выплачиваются заработанные деньги?</strong>\r\n\r\nОтвет: Партнерские выплаты производятся через систему WebMoney в валюте WMZ на кошелек, указанный партнером при регистрации в партнерской программе. Как правило, на это уходит не более 2-3 часов. Не спешите отправлять нам сообщения, если с момента подачи заявки не прошло 48 часов – администратор видит все заявки и обработает Вашу в любом случае.\r\n\r\n[/from_user]', 'Партнёрский FAQ', '', 'publish', 'closed', 'closed', '', 'partnersfaq', '', '', '2013-06-09 02:15:27', '2013-06-08 22:15:27', '', 0, 'http://exchange.best-curs.info/partnersfaq/', 0, 'page', '', 0),
(167, 1, '2013-04-26 16:43:36', '2013-04-26 12:43:36', '[exb_banners]', 'Рекламные материалы', '', 'publish', 'closed', 'closed', '', 'banners', '', '', '2013-04-26 16:43:36', '2013-04-26 12:43:36', '', 0, 'http://exchange.best-curs.info/banners/', 0, 'page', '', 0),
(168, 1, '2013-04-26 16:43:36', '2013-04-26 12:43:36', '[exb_partnerstats]', 'Партнёрский аккаунт', '', 'publish', 'closed', 'closed', '', 'partnerstats', '', '', '2013-04-26 16:43:36', '2013-04-26 12:43:36', '', 0, 'http://exchange.best-curs.info/partnerstats/', 0, 'page', '', 0),
(169, 1, '2013-04-26 16:47:46', '2013-04-26 12:47:46', ' ', '', '', 'publish', 'open', 'closed', '', '169', '', '', '2013-05-19 19:34:56', '2013-05-19 15:34:56', '', 0, 'http://exchange.best-curs.info/?p=169', 8, 'nav_menu_item', '', 0),
(170, 1, '2013-04-26 16:47:46', '2013-04-26 12:47:46', ' ', '', '', 'publish', 'open', 'closed', '', '170', '', '', '2013-05-19 19:34:56', '2013-05-19 15:34:56', '', 0, 'http://exchange.best-curs.info/?p=170', 2, 'nav_menu_item', '', 0),
(130, 1, '2013-04-26 16:42:14', '2013-04-26 12:42:14', '', 'Обмен', '', 'publish', 'open', 'closed', '', 'obmen', '', '', '2013-05-19 19:34:56', '2013-05-19 15:34:56', '', 0, 'http://exchange.best-curs.info/?p=130', 1, 'nav_menu_item', '', 0),
(171, 1, '2013-04-27 12:34:38', '2013-04-27 08:34:38', '', 'Кабинет', '', 'publish', 'open', 'closed', '', 'partneram', '', '', '2013-05-19 19:34:56', '2013-05-19 15:34:56', '', 0, 'http://exchange.best-curs.info/?p=171', 4, 'nav_menu_item', '', 0),
(173, 1, '2013-04-27 14:14:37', '2013-04-27 10:14:37', 'Уважаемые клиенты! Безопасность проведения транзакций может быть поставлена под угрозу, в связи с независящими от нашего сервиса обстоятельствами. Чтобы этого не произошло, рекомендуем ознакомиться со следующими правилами конвертации электронной валюты:\r\n<ul>\r\n	<li> Всегда требуйте подтверждения личности лица, на реквизиты которого вы собираетесь выполнить перевод средств. Сделать это можно посредством личного звонка на skype, icq либо посредством запроса информации о статусе кошелька оппонента на сайте платежной системы;</li>\r\n	<li>Будьте предельно внимательны при заполнении поля «Номер счета» адресата. Допустив ошибку, вы отправляете собственные средства в неизвестном направлении без возможности их возврата;</li>\r\n	<li>Никогда не предоставляете займы, используя «безотзывные» электронные системы оплаты. В данном случае шанс столкнуться с фактом мошенничества чрезвычайно велик;</li>\r\n	<li>Если вам предлагается сделать оплату способом, отличным от указанного в инструкции к использованию нашего сервиса, откажитесь от выполнения платежа и сообщите о случившемся нашему специалисту. То же касается выплат по заявкам, созданным не лично вами;</li>\r\n	<li>Откажитесь от проведения средств, собственниками которых являются третьи лица, через собственные банковские счета. Известны случаи, когда проведение таких транзакций за вознаграждение, приводило к тому, что владелец счета становился соучастником финансового преступления, не подозревая о злом умысле со стороны мошенников;</li>\r\n	<li>Всегда уточняйте у сотрудника обменного пункта информацию, приходящую на вашу почту.</li>\r\n</ul>\r\nНаш и подобные сервисы не предоставляют займов, не берут средства у пользователей в долг или под проценты, не принимают пожертвований. При получении сообщений подозрительного характера от нашего имени с похожих на наши либо иных реквизитов, воздержитесь от выполнения указанных там требований и сообщите о произошедшем в нашу <a href="/feedback/">службы поддержки</a>.\r\n\r\nС заботой о вашем финансовом благополучии.', 'Предупреждение', '', 'publish', 'open', 'closed', '', 'preduprezhdenie', '', '', '2013-04-27 14:14:37', '2013-04-27 10:14:37', '', 0, 'http://exchange.best-curs.info/?page_id=173', 0, 'page', '', 0),
(213, 1, '2013-05-19 19:34:15', '2013-05-19 15:34:15', '[exb_sitemap]', 'Карта сайта', '', 'publish', 'closed', 'closed', '', 'sitemap', '', '', '2013-05-19 19:34:15', '2013-05-19 15:34:15', '', 0, 'http://exchange.best-curs.info/sitemap/', 0, 'page', '', 0),
(214, 1, '2013-05-19 19:34:15', '2013-05-19 15:34:15', '[exb_tarifs]', 'Тарифы', '', 'publish', 'closed', 'closed', '', 'tarifs', '', '', '2013-05-19 19:34:15', '2013-05-19 15:34:15', '', 0, 'http://exchange.best-curs.info/tarifs/', 0, 'page', '', 0),
(215, 1, '2013-05-19 19:34:56', '2013-05-19 15:34:56', ' ', '', '', 'publish', 'open', 'closed', '', '215', '', '', '2013-05-19 19:34:56', '2013-05-19 15:34:56', '', 0, 'http://exchange.best-curs.info/?p=215', 7, 'nav_menu_item', '', 0),
(220, 1, '2014-12-04 23:32:32', '2014-12-04 19:32:32', ' ', '', '', 'publish', 'open', 'closed', '', '220', '', '', '2014-12-04 23:32:32', '2014-12-04 19:32:32', '', 0, 'http://exchange.best-curs.info/?p=220', 1, 'nav_menu_item', '', 0),
(221, 1, '2014-12-04 23:32:32', '2014-12-04 19:32:32', ' ', '', '', 'publish', 'open', 'closed', '', '221', '', '', '2014-12-04 23:32:32', '2014-12-04 19:32:32', '', 0, 'http://exchange.best-curs.info/?p=221', 3, 'nav_menu_item', '', 0),
(222, 1, '2014-12-04 23:32:32', '2014-12-04 19:32:32', ' ', '', '', 'publish', 'open', 'closed', '', '222', '', '', '2014-12-04 23:32:32', '2014-12-04 19:32:32', '', 0, 'http://exchange.best-curs.info/?p=222', 2, 'nav_menu_item', '', 0),
(226, 1, '2015-08-24 15:53:51', '2015-08-24 12:53:51', '[exchangestep]', 'Шаги обмена', '', 'publish', 'closed', 'closed', '', 'exchangestep', '', '', '2015-11-13 15:38:37', '2015-11-13 12:38:37', '', 0, 'http://exchange.best-curs.info/exchangestep/', 0, 'page', '', 0),
(235, 1, '2015-12-29 18:31:27', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2015-12-29 18:31:27', '0000-00-00 00:00:00', '', 0, 'http://exchange.best-curs.info/?p=235', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `eb_reviews_meta`
--

CREATE TABLE IF NOT EXISTS `eb_reviews_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` longtext NOT NULL,
  `meta_value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_scrtransaction`
--

CREATE TABLE IF NOT EXISTS `eb_scrtransaction` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bdate` datetime NOT NULL,
  `bidid` bigint(20) NOT NULL DEFAULT '0',
  `valsid` bigint(20) NOT NULL DEFAULT '0',
  `bsumm` varchar(250) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_standart_captcha`
--

CREATE TABLE IF NOT EXISTS `eb_standart_captcha` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `createdate` datetime NOT NULL,
  `sess_hash` varchar(150) NOT NULL,
  `num1` varchar(10) NOT NULL DEFAULT '0',
  `num2` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Дамп данных таблицы `eb_standart_captcha`
--

INSERT INTO `eb_standart_captcha` (`id`, `createdate`, `sess_hash`, `num1`, `num2`) VALUES
(29, '2015-12-29 18:56:57', '9ac5f5ee7c26d25ae236bf6f04f9fc0d', '3', '4'),
(28, '2015-12-29 18:23:45', 'f8496b6aac7b233fb151a20b02837bde', '1', '6'),
(27, '2015-12-29 18:23:45', '98b6e483a9899ecc5142f73d661d08d4', '2', '2');

-- --------------------------------------------------------

--
-- Структура таблицы `eb_termmeta`
--

CREATE TABLE IF NOT EXISTS `eb_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_terms`
--

CREATE TABLE IF NOT EXISTS `eb_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `eb_terms`
--

INSERT INTO `eb_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Новости', 'novosti', 0),
(2, 'Ссылки', '%d1%81%d1%81%d1%8b%d0%bb%d0%ba%d0%b8', 0),
(3, 'Верхнее меню', 'verhnee-menyu', 0),
(4, 'Нижнее меню', 'nizhnee-menyu', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `eb_term_meta`
--

CREATE TABLE IF NOT EXISTS `eb_term_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` longtext NOT NULL,
  `meta_value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_term_relationships`
--

CREATE TABLE IF NOT EXISTS `eb_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `eb_term_relationships`
--

INSERT INTO `eb_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(169, 3, 0),
(130, 3, 0),
(170, 3, 0),
(171, 3, 0),
(188, 3, 0),
(189, 3, 0),
(194, 3, 0),
(215, 3, 0),
(220, 4, 0),
(222, 4, 0),
(221, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `eb_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `eb_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `eb_term_taxonomy`
--

INSERT INTO `eb_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'link_category', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 8),
(4, 4, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `eb_transactionrezerv`
--

CREATE TABLE IF NOT EXISTS `eb_transactionrezerv` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `vdate` datetime NOT NULL,
  `valsid` bigint(20) NOT NULL DEFAULT '0',
  `vsumm` varchar(250) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `eb_transactionrezerv`
--

INSERT INTO `eb_transactionrezerv` (`id`, `vdate`, `valsid`, `vsumm`) VALUES
(18, '2013-06-24 17:45:59', 18, '1000'),
(3, '2013-04-27 19:08:04', 3, '1000'),
(4, '2013-04-27 19:08:13', 4, '1000'),
(5, '2013-04-27 19:08:35', 5, '1000'),
(6, '2013-04-27 19:08:45', 6, '1000'),
(7, '2013-04-27 19:08:55', 7, '1000'),
(8, '2013-04-27 19:09:05', 8, '1000'),
(9, '2013-04-27 19:09:24', 9, '1000'),
(11, '2013-04-27 19:09:48', 11, '1000'),
(12, '2013-04-27 19:09:57', 12, '1000'),
(13, '2013-04-27 19:10:09', 13, '1000'),
(14, '2013-04-28 22:20:15', 14, '1000'),
(15, '2013-04-28 22:20:24', 15, '1000'),
(16, '2013-04-28 22:20:32', 16, '1000'),
(17, '2013-05-06 00:37:10', 17, '1000'),
(19, '2014-03-10 00:00:21', 5, '1000');

-- --------------------------------------------------------

--
-- Структура таблицы `eb_transactionuser`
--

CREATE TABLE IF NOT EXISTS `eb_transactionuser` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bdate` datetime NOT NULL,
  `bidid` bigint(20) NOT NULL DEFAULT '0',
  `userid` bigint(20) NOT NULL DEFAULT '0',
  `bsumm` varchar(250) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_usermeta`
--

CREATE TABLE IF NOT EXISTS `eb_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

--
-- Дамп данных таблицы `eb_usermeta`
--

INSERT INTO `eb_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', 'Администратор'),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'superadmin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'eb_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(11, 1, 'eb_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_media_uploader,wp330_saving_widgets,wp340_customize_current_theme_link,wp350_media,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '0'),
(14, 1, 'eb_dashboard_quick_press_last_post_id', '235'),
(15, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(17, 1, 'nav_menu_recently_edited', '4'),
(18, 1, 'aim', ''),
(19, 1, 'yim', ''),
(20, 1, 'jabber', ''),
(36, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(37, 1, 'metaboxhidden_dashboard', 'a:3:{i:0;s:18:"dashboard_activity";i:1;s:21:"dashboard_quick_press";i:2;s:17:"dashboard_primary";}'),
(38, 1, 'eb_user-settings', 'editor=html&ed_size=760&hidetb=1&libraryContent=browse&mfold=o&post_dfw=off'),
(39, 1, 'eb_user-settings-time', '1445542975'),
(68, 1, 'second_name', ''),
(58, 1, 'wmz', ''),
(57, 1, 'user_phone', ''),
(52, 1, 'googleplus', ''),
(61, 1, 'user_skype', ''),
(65, 1, 'session_tokens', 'a:2:{s:64:"fd73e7fc0657a695767a9f95798bb8b2ebdaea242f1ca58b5da5cb2d577996f8";a:4:{s:10:"expiration";i:1451662285;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36";s:5:"login";i:1451403085;}s:64:"fc4f09e681e4549b581a5e0cc83d7727ba89661ad3d99a897a14968750976d5d";a:4:{s:10:"expiration";i:1451663845;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36";s:5:"login";i:1451404645;}}'),
(66, 1, 'user_browser', ''),
(67, 1, 'user_ip', ''),
(69, 1, 'admin_time_last', '1451415890');

-- --------------------------------------------------------

--
-- Структура таблицы `eb_users`
--

CREATE TABLE IF NOT EXISTS `eb_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  `user_hash` varchar(15) NOT NULL,
  `auto_login1` varchar(250) NOT NULL,
  `auto_login2` varchar(250) NOT NULL,
  `user_discount` varchar(10) NOT NULL DEFAULT '0',
  `ref_id` bigint(20) NOT NULL DEFAULT '0',
  `partner_pers` varchar(10) NOT NULL DEFAULT '0',
  `sec_lostpass` int(1) NOT NULL DEFAULT '1',
  `sec_login` int(1) NOT NULL DEFAULT '0',
  `email_login` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `eb_users`
--

INSERT INTO `eb_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `user_hash`, `auto_login1`, `auto_login2`, `user_discount`, `ref_id`, `partner_pers`, `sec_lostpass`, `sec_login`, `email_login`) VALUES
(1, 'superadmin', '$P$B8Fra5jQlj4x9QIbn83OvXQI5ZE2Mz/', 'superadmin', 'info@best-curs.info', '', '2012-05-16 17:07:12', '', 0, 'Администратор', 'LBOKCZXrxNZ3ZlO', '', '', '0', 0, '0', 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `eb_user_discounts`
--

CREATE TABLE IF NOT EXISTS `eb_user_discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sumec` varchar(20) NOT NULL DEFAULT '0',
  `discount` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `eb_user_discounts`
--

INSERT INTO `eb_user_discounts` (`id`, `sumec`, `discount`) VALUES
(1, '0', '0'),
(2, '100', '0.1'),
(3, '500', '0.2'),
(4, '1000', '0.3'),
(5, '5000', '0.4');

-- --------------------------------------------------------

--
-- Структура таблицы `eb_valuts`
--

CREATE TABLE IF NOT EXISTS `eb_valuts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `vname` tinytext NOT NULL,
  `vlogo` tinytext NOT NULL,
  `xname` tinytext NOT NULL,
  `vtype` tinytext NOT NULL,
  `numleng` int(5) NOT NULL DEFAULT '0',
  `xzt` int(5) NOT NULL DEFAULT '0',
  `helps` longtext NOT NULL,
  `txt1` tinytext NOT NULL,
  `txt2` tinytext NOT NULL,
  `rxzt` int(5) NOT NULL DEFAULT '0',
  `vactive` int(1) NOT NULL DEFAULT '1',
  `pvivod` int(1) NOT NULL DEFAULT '1',
  `show1` int(1) NOT NULL DEFAULT '1',
  `show2` int(1) NOT NULL DEFAULT '1',
  `maxnumleng` int(5) NOT NULL DEFAULT '100',
  `xml_value` varchar(250) NOT NULL,
  `firstzn` varchar(20) NOT NULL,
  `valut_reserv` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `eb_valuts`
--

INSERT INTO `eb_valuts` (`id`, `vname`, `vlogo`, `xname`, `vtype`, `numleng`, `xzt`, `helps`, `txt1`, `txt2`, `rxzt`, `vactive`, `pvivod`, `show1`, `show2`, `maxnumleng`, `xml_value`, `firstzn`, `valut_reserv`) VALUES
(3, 'Perfect Money', '/images/payment_icons/pfm.png', 'PMUSD', 'USD', 8, 0, 'Пример: U1234567.', '', '', 0, 1, 1, 1, 1, 100, 'PMUSD', '', '1000'),
(4, 'Perfect Money', '/images/payment_icons/pfm.png', 'PMEUR', 'EUR', 8, 0, 'Пример: E1234567.', '', '', 0, 1, 1, 1, 1, 100, 'PMEUR', '', '1000'),
(5, 'LiqPay', '/images/payment_icons/lq.png', 'LQUSD', 'USD', 11, 0, 'Номер счета LiqPay совпадает с номером мобильного телефона в международном формате. Пример: 71234567890.', '', '', 0, 1, 1, 1, 1, 100, 'LQUSD', '', '2000'),
(6, 'LiqPay', '/images/payment_icons/lq.png', 'LQEUR', 'EUR', 11, 0, 'Номер счета LiqPay совпадает с номером мобильного телефона в международном формате. Пример: 71234567890.', '', '', 0, 1, 1, 1, 1, 100, 'LQEUR', '', '1000'),
(7, 'LiqPay', '/images/payment_icons/lq.png', 'LQRUB', 'RUB', 11, 0, 'Номер счета LiqPay совпадает с номером мобильного телефона в международном формате. Пример: 71234567890.', '', '', 0, 1, 1, 1, 1, 100, 'LQRUB', '', '1000'),
(8, 'LiqPay', '/images/payment_icons/lq.png', 'LQUAH', 'UAH', 11, 0, 'Номер счета LiqPay совпадает с номером мобильного телефона в международном формате. Пример: 71234567890.', '', '', 0, 1, 1, 1, 1, 100, 'LQUAH', '', '1000'),
(9, 'Payza', '/images/payment_icons/pz.png', 'PAUSD', 'USD', 6, 0, '', '', '', 0, 1, 1, 1, 1, 100, 'PAUSD', '', '1000'),
(11, 'Альфа-Клик', '/images/payment_icons/ac.png', 'ACRUB', 'RUB', 20, 0, 'Номер вашего рублевого счета можно узнать, войдя в "Альфа-Клик". Он состоят из 20 цифр и начинается с "408".', '', '', 0, 1, 1, 1, 1, 100, 'ACRUB', '', '1000'),
(12, 'Сбербанк', '/images/payment_icons/sb.png', 'SBERRUB', 'RUB', 16, 0, 'Номер счета(карты) состоит из 16 или 18 цифр.', 'С карты', 'На карту', 0, 1, 1, 1, 1, 100, 'SBERRUB', '', '1000'),
(13, 'Qiwi', '/images/payment_icons/qw.png', 'QWRUB', 'RUB', 11, 0, 'Номер счета Qiwi совпадает с номером мобильного телефона в международном формате. Пример: +71234567890.', '', '', 0, 1, 1, 1, 1, 100, 'QWRUB', '', '1000'),
(14, 'Связной банк', '/images/payment_icons/szb.png', 'SVBRUB', 'RUB', 20, 0, 'Номер вашего рублевого счета можно узнать, войдя в "Интернет-банк Связной". Он состоят из 20 цифр и начинается с "408".', '', '', 0, 1, 1, 1, 1, 100, 'SVBRUB', '', '1000'),
(15, 'Приват24', '/images/payment_icons/prv24.png', 'P24USD', 'USD', 11, 0, '', '', '', 0, 1, 1, 1, 1, 100, 'P24USD', '', '1000'),
(16, 'Приват24', '/images/payment_icons/prv24.png', 'P24UAH', 'UAH', 11, 0, '', '', '', 0, 1, 1, 1, 1, 100, 'P24UAH', '', '1000'),
(17, 'WebMoney', '/images/payment_icons/wm.png', 'WMZ', 'USD', 13, 0, 'Пример: Z123456789000.', '', '', 0, 1, 1, 1, 1, 100, 'WMZ', '', '1000'),
(18, 'Яндекс.Деньги', '/images/payment_icons/yd.png', 'YAMRUB', 'RUB', 14, 0, 'Пример: 01234567890000', '', '', 0, 1, 1, 1, 1, 100, 'YAMRUB', '', '1000');

-- --------------------------------------------------------

--
-- Структура таблицы `eb_valuts_meta`
--

CREATE TABLE IF NOT EXISTS `eb_valuts_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` longtext NOT NULL,
  `meta_value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_vschets`
--

CREATE TABLE IF NOT EXISTS `eb_vschets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `valid` bigint(20) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '0',
  `visib` int(1) NOT NULL DEFAULT '0',
  `prosm` int(5) NOT NULL DEFAULT '0',
  `text_comment` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `eb_vtypes`
--

CREATE TABLE IF NOT EXISTS `eb_vtypes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `xname` tinytext NOT NULL,
  `vncurs` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `eb_vtypes`
--

INSERT INTO `eb_vtypes` (`id`, `xname`, `vncurs`) VALUES
(1, 'RUB', '70.7465'),
(2, 'EUR', '0.86979'),
(3, 'USD', '1'),
(4, 'UAH', '22.03077'),
(5, 'AMD', '415'),
(6, 'KZT', '150'),
(7, 'GLD', '0.0215'),
(8, 'BYR', '9500'),
(9, 'UZS', '1'),
(10, 'BTC', '0.032'),
(11, 'TRY', '1.9');

-- --------------------------------------------------------

--
-- Структура таблицы `eb_zapros_rezerv`
--

CREATE TABLE IF NOT EXISTS `eb_zapros_rezerv` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `valid` bigint(20) NOT NULL DEFAULT '0',
  `summk` varchar(250) NOT NULL DEFAULT '0',
  `comment` longtext NOT NULL,
  `zdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
