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

/**
 * Add Memcache settings.
 */
$conf['cache_backends'][] = 'sites/all/modules/memcache/memcache.inc';
$conf['lock_inc'] = 'sites/all/modules/memcache/memcache-lock.inc';
$conf['memcache_stampede_protection'] = TRUE;
$conf['cache_default_class'] = 'MemCacheDrupal';

// The 'cache_form' bin must be assigned to non-volatile storage.
$conf['cache_class_cache_form'] = 'DrupalDatabaseCache';

// Don't bootstrap the database when serving pages from the cache.
$conf['page_cache_without_database'] = TRUE;
$conf['page_cache_invoke_hooks'] = FALSE;
