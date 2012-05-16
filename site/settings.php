<?php

/**
 * Settings directory.
 */
$settings_dir = dirname(__FILE__) . '/settings';

/**
 * Includes Drupal's default settings file.
 */
require_once $settings_dir . '/default.settings.php';

$environment = get_environment();

/**
 * List of additional settings files to be included.
 */
$settings_files = array(
  'common',
  $environment,
  'secret'
);

/**
 * Include additional settings files.
 */
foreach ($settings_files as $settings_file) {
  $settings_file_path = $settings_dir . '/' . $settings_file . '.settings.php';
  require_once $settings_file_path;
}

/**
 * Check in which environment we were.
 *
 * @return
 *   String with the detected environment.
 */
function get_environment() {
  $environment = '';

  switch ($_SERVER["SERVER_ADDR"]) {
    case '127.0.0.1':
      $environment = 'development';
      break;
  }

  switch ($_SERVER['HTTP_HOST']) {
    case 'danillonunes.net':
    case 'dh.danillonunes.net':
      $environment = 'production';
      break;
  }

  if (strpos($_SERVER["SCRIPT_FILENAME"], 'drush.php')) {
    $environment = 'drush';
  }

  return $environment;
}
