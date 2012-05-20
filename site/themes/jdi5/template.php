<?php

/**
 * @file
 * Contains (pre)process and another theme related functions.
 */

include_once 'includes/assets-autoload.inc';

/**
 * Implements hook_preprocess().
 */
function jdi5_preprocess($variables, $hook) {
  assets_autoload($variables, $hook);
}
