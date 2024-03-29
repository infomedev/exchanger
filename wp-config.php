<?php
/**
 * Основные параметры WordPress.
 *
 * Этот файл содержит следующие параметры: настройки MySQL, префикс таблиц,
 * секретные ключи, язык WordPress и ABSPATH. Дополнительную информацию можно найти
 * на странице {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Кодекса. Настройки MySQL можно узнать у хостинг-провайдера.
 *
 * Этот файл используется сценарием создания wp-config.php в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать этот файл
 * с именем "wp-config.php" и заполнить значения.
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'u0586517_exdp');

/** Имя пользователя MySQL */
define('DB_USER', 'u0586517_exdp1');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '7X3k9D4v');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется снова авторизоваться.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'PRI. /1kl~lw/va&e!PZ3a2A>5/+Q-:gx.5!8[$|8b(8LTysiRo9+)i7bN/@cdK6');
define('SECURE_AUTH_KEY',  'Zsa*ataoe,t?1_c%-YrE=||`to|y.MTAyVTlqx=Srw~2gw<B`0-0{Zt*&l.$@*L+');
define('LOGGED_IN_KEY',    'y?77#6X8F>FL+m-s4lj1v`E$}/%O4Z-;s$+>X|!-k:~U4i4VjOefEmqCc7a+g`[o');
define('NONCE_KEY',        'r8DcTIfu1}g3UN%M7+P@|Yn&z~Qc[Ewct7]vb^$#7ZZe.p5lsmL$xuZb69x.^|@j');
define('AUTH_SALT',        '|qW:-51-$~c}#|(7C]WW=hJ-3j+ EDrZ&^[5`o+-KWS._FQfnr`?n:jxsa`0.$uG');
define('SECURE_AUTH_SALT', 'X}@6q?0S&a>y3(ss&fe|*t+|TW^BA`+}QL9+!~96)4y)`^=$0v|>/kYU-]SFhsS*');
define('LOGGED_IN_SALT',   '|l@OMZpg<2qi?5_,p ,uBm|_<Q2,0T,](G+5com3H~SLw^- -WBJ%}JH.;F/&9Wt');
define('NONCE_SALT',       '-L`]n!5of?H)5pu_|Q16)2l$%|kVJyTkl^C,8#/e$i`Ms+! 4@,6jv>e{,+._b?/');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько блогов в одну базу данных, если вы будете использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'zoz8_';

/**
 * Язык локализации WordPress, по умолчанию английский.
 *
 * Измените этот параметр, чтобы настроить локализацию. Соответствующий MO-файл
 * для выбранного языка должен быть установлен в wp-content/languages. Например,
 * чтобы включить поддержку русского языка, скопируйте ru_RU.mo в wp-content/languages
 * и присвойте WPLANG значение 'ru_RU'.
 */
define('WPLANG', 'ru_RU');

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Настоятельно рекомендуется, чтобы разработчики плагинов и тем использовали WP_DEBUG
 * в своём рабочем окружении.
 */
define('WP_DEBUG', false);
define('DISALLOW_FILE_MODS', true);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
