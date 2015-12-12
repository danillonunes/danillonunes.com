<?php

/**
 * Set base url for production site.
 */
$base_url = 'https://danillonunes.com';
$cookie_domain = 'danillonunes.com';

/**
 * CloudFlare IP.
 */
if ($_SERVER['HTTP_VIA'] == '2.0 cloudflare') {
  $conf['reverse_proxy'] = TRUE;
  $conf['reverse_proxy_addresses'] = array($_SERVER['HTTP_X_REAL_IP']);
  $conf['reverse_proxy_header'] = 'HTTP_CF_CONNECTING_IP';
}

/**
 * Reinvigorate variable.
 */
$conf['reinvigorate_account'] = 'b7dpl-4y3vm2858r';

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
