<?php

/**
 * Set base url for production site.
 */
switch ($_SERVER['HTTP_HOST']) {
  case 'danillonunes.net':
    $base_url = 'http://danillonunes.net';
    $cookie_domain = 'danillonunes.net';
    break;
  case 'dh.danillonunes.net':
    $base_url = 'http://dh.danillonunes.net';
    $cookie_domain = 'dh.danillonunes.net';
    break;
}

/**
 * Reinvigorate variable.
 */
$conf['reinvigorate_account'] = 'b7dpl-4y3vm2858r';

/**
 * Enable CDN.
 */
if (defined('CDN_ENABLED')) {
  $conf['cdn_status'] = CDN_ENABLED;
}
