<?php
/**
 * @file
 * Provides information for variables used by About module.
 */

/**
 * Implements hook_variable_info().
 */
function dn_about_variable_info($options) {
  $variables = array();

  $variables['about_title'] = array(
    'title' => t('About Title'),
    'description' => t('Title for the About block'),
    'type' => 'string',
  );

  $variables['about_text'] = array(
    'title' => t('About Text'),
    'description' => t('Text for the About block'),
    'type' => 'string',
  );

  return $variables;
}
