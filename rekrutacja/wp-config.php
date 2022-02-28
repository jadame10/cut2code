<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'c2c' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Z7ysVzjz$y8D6Z{N`<[DUfix~j&$JA0VtJG)2jIJXW^E]@hu!DG;F960vGd5}/CB' );
define( 'SECURE_AUTH_KEY',  'vDjJ[nhmsuYE(w~(=jd L9K<R2^I${`3O|{p,*P7i[b mG[aSvf~p]cU#KRb8inp' );
define( 'LOGGED_IN_KEY',    ':Ec6VN<A&L_Jl]Dm 41^D#!CN.NAZ@o&;=s5[NQn:x/[D9ABP?4M@O`=]v8Oj:j_' );
define( 'NONCE_KEY',        '*K:;!qO!cV>jSP_@}U4uew>iD<{f<]8,=z%d{nj4J0W.-Rd6nnP30N}[U`7N^M.v' );
define( 'AUTH_SALT',        '?L:&47e}<#!tCm]SdB!.f;U+uAd|[Z!UE;w?7/HHZ.cz=]r5[=TKoMD<m}8vX,7)' );
define( 'SECURE_AUTH_SALT', '<+jBJ9^=n%ncJCvN~VP~]U3=ks~Y{MIaPp$?kAC:rXekL@!pOK>{/%r6(7q_Etzi' );
define( 'LOGGED_IN_SALT',   'vXa.5:[4WdaD2IQ^5:rnHhxjh-&.b<Tjm7&NEBKZ,UHi49$O0fu]prw:D,~/.#7$' );
define( 'NONCE_SALT',       'dUvJh)g/^s+mzGIU)=~S6=LEJw[uuW67[;OQF=~*JdMV65YI@OHW~EU Xc$`A1MZ' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
