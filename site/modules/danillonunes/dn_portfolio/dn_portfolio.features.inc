<?php
/**
 * @file
 * dn_portfolio.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function dn_portfolio_ctools_plugin_api() {
  list($module, $api) = func_get_args();
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}

/**
 * Implements hook_node_info().
 */
function dn_portfolio_node_info() {
  $items = array(
    'portfolio' => array(
      'name' => t('Portfolio entry'),
      'base' => 'node_content',
      'description' => t('A portfolio project.'),
      'has_title' => '1',
      'title_label' => t('Title'),
      'help' => '',
    ),
  );
  return $items;
}
