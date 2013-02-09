<?php
/**
 * @file
 * dn_article.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function dn_article_ctools_plugin_api() {
  list($module, $api) = func_get_args();
  if ($module == "strongarm" && $api == "strongarm") {
    return array("version" => "1");
  }
}

/**
 * Implements hook_node_info().
 */
function dn_article_node_info() {
  $items = array(
    'article' => array(
      'name' => t('Artigo'),
      'base' => 'node_content',
      'description' => t('Use <em>artigos</em> para conteúdo temporal como notícias, comunicados de imprensa e posts de blog.'),
      'has_title' => '1',
      'title_label' => t('Título'),
      'help' => '',
    ),
  );
  return $items;
}
