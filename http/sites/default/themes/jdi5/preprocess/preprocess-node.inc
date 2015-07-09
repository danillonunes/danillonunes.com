<?php
/**
 * @file
 * Preprocess node.
 */

/**
 * Implements THEMENAME_alpha_preprocess_HOOK() for node.
 */
function jdi5_alpha_preprocess_node(&$variables) {
  $variables['display_submitted'] = FALSE;
  $variables['date'] = format_date($variables['created'], 'long');

  unset($variables['content']['links']['node']);
  unset($variables['content']['links']['comment']['#links']['comment-add']);
}
