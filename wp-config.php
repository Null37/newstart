<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
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
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'null' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '8ipdp]tLRT-[8E/VdInB(h|+DdOS%.sA-tA>=n)eO#c>+hIy;LNo<ePa$#&6Yd`>' );
define( 'SECURE_AUTH_KEY',  '(GH!mY^ghrW|a[oc}%Bq=,-cp((r1<hPL03ChUR[Xk@GJ`b{a((/gX.9mey|eL~8' );
define( 'LOGGED_IN_KEY',    '(4jyj&OjO`Gt13MXWyUZv.X:SS6KQOD8:g5xo}ck0Glpv+t~3c&^b]ZX+C,Zc8@!' );
define( 'NONCE_KEY',        'Q0*wvHk,gOvV@d[M_sh$sSv7%ZnmS+7?l>WoB5^KIxK&*Z]R%~@xC.:b $;c0Dc~' );
define( 'AUTH_SALT',        'Jo ^}KthU6b!(6zmXzpz!ER(kf[<~8eMZ(aNvh0BfZ1/[tCnIDY4E2LT{28$_+6P' );
define( 'SECURE_AUTH_SALT', 'FboiC8(r9nE$r@5OdGNDeWfix^YL415vKe67v/:n{+{w/WI{!c><]++pRUGc-obU' );
define( 'LOGGED_IN_SALT',   'W*=72jn*_1l}Ijuw}OM@OcMP}9Em+Kq1.MvY1^fFntcDZ7Z8zmEOY(ob>>q$(w>5' );
define( 'NONCE_SALT',       '+^P+&#6xT*Yzc2iTuO(`Y/K6Kl:t!9kzYklf1Y4]*Ud@4h$Ql86:Flv0>@-PX.Ox' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

