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

/**
 * Implements hook_css_alter().
 */
function jdi5_css_alter(&$css) {
  /**
   * Remove conditional tags for IE.
   *
   * This code is necessary to make Omega and Respond.js works together.
   * Source: http://drupal.org/node/1272812#comment-5946156
   */
  foreach ($css as $key => $value) {
    if (preg_match('/^ie::(\S*)/', $key)) {
      unset($css[$key]);
    } else {
      $css[$key]['browsers']['IE'] = TRUE;
    }
  }
}
