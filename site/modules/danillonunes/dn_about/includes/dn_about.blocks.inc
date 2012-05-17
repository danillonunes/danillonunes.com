<?php
/**
 * @file
 * Contains functions to generate blocks.
 */

/**
 * Generate 'about' block.
 */
function dn_about_block_view_about() {
  $block = array();

  $block['subject'] = variable_get_value('about_title');
  $block['content']['about'] = array(
    '#markup' => check_markup(variable_get_value('about_text'), 'full_html'),
  );

  return $block;
}
