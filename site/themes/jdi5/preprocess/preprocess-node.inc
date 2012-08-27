<?php
/**
 * @file
 * Preprocess node.
 */

/**
 * Implements THEMENAME_alpha_preprocess_HOOK() for node.
 */
function jdi5_alpha_preprocess_node(&$variables) {
  $variables['date'] = format_date($variables['created'], 'long');
}
