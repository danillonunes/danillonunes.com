<?php
/**
 * Only include settings files that exists in the settings directory.
 *
 * Leaving this as FALSE and I wont't check if every setting file exists, to
 * avoid performance and i/o concerns.
 *
 * Please note that this can generate errors if I attempt to include a
 * inexistent file. Make sure all your settings files can be found on the
 * settings directory, even if they are empty.
 */
define('SETTINGS_SAFE_INCLUDES', FALSE);

/**
 * Settings directory.
 */
$settings_dir = dirname(__FILE__) . '/settings';

/**
 * Includes Drupal's default settings file.
 */
require_once dirname(__FILE__) . '/default.settings.php';

$environment = get_environment();

/**
 * List of additional settings files to be included.
 */
$settings_files = array();
$settings_files['common'] = 'common';
if ($environment) {
  $settings_files[$environment] = $environment;
}
$settings_files['secret'] = 'secret';

/**
 * Include additional settings files.
 */
foreach ($settings_files as $settings_file) {
  $settings_file_path = $settings_dir . '/' . $settings_file . '.settings.php';
  if (SETTINGS_SAFE_INCLUDES && file_exists($settings_file_path)) {
    require_once $settings_file_path;
  }
  else if (!SETTINGS_SAFE_INCLUDES) {
    require_once $settings_file_path;
  }
}

/**
 * Check in which environment we were.
 *
 * @return
 *   String with the detected environment.
 */
function get_environment() {
  $environment = '';

  if (isset($_SERVER['APPLICATION_ENV'])) {
    $environment = $_SERVER['APPLICATION_ENV'];
  }
  else {
    switch ($_SERVER["SERVER_ADDR"]) {
      case '127.0.0.1':
        $environment = 'development';
        break;
    }
    switch ($_SERVER['HTTP_HOST']) {
      case 'danillonunes.com':
        $environment = 'production';
        break;
    }
  }

  if (strpos($_SERVER["SCRIPT_FILENAME"], 'drush.php')) {
    $environment = 'drush';
  }

  return $environment;
}
