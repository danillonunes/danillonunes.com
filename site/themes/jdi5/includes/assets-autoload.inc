<?php

/**
 * Dinamically add stylesheets based on theme_hook_suggestions.
 *
 * Add stylesheet files based on available theme_hook_suggestions. This allows
 * to add stylesheets dinamically based on each theme that is being called.
 *
 * For example, from theme('page') of front, which have 'page__front' on the
 * array of theme_hook_suggestions, a stylesheet file 'page--front.css' will be
 * added if it can be found. Stylesheet files are searched with
 * alpha_find_stylesheet(), which assegures that preprocessable files like
 * .sass or .scss can be added.
 *
 * Omega's grids and layouts are also considered, so for a grid named
 * 'alpha_default', a stylesheet named 'page--front--alpha-default-normal.css'
 * will be loaded with media query of the layout called 'normal'.
 *
 * @see alpha_find_stylesheet().
 */
function assets_autoload($variables, $hook) {
  if (is_array($variables) && !empty($variables['theme_hook_suggestions'])) {
    $theme = alpha_get_theme();
    $theme_name = $theme->theme;
    $theme_hooks = array_merge(array($hook), $variables['theme_hook_suggestions']);

    $grid_name = alpha_theme_get_setting('alpha_grid', 'alpha_default', $theme_name);
    $grids = alpha_retrieve_grids($theme_name);
    $grid = $grids[$grid_name];
    $layouts = $grid['layouts'];

    $css_suggestions = array();
    foreach ($theme_hooks as $theme_hook) {
      $filename = str_replace('_', '-', $theme_hook);

      $css_suggestions[$filename] = array(
        'data' => $filename,
        'options' => array(
          'group' => 4000
        )
      );

      foreach ($layouts as $layout) {
        $grid_sanitized = $grid['sanitized'];
        $layout_sanitized = $layout['sanitized'];
        $filename_layout_array = array($filename, "$grid_sanitized");
        $filename_layout = implode('--', $filename_layout_array);

        $css_suggestions[$filename_layout] = array(
          'data' => $filename_layout,
          'options' => array(
            'group' => 5000,
            'media' => $layout['media'],
            'browsers' => array('IE' => 'gte IE 9', '!IE' => TRUE),
            'weight' => $layout['weight'],
            'preprocess_media' => TRUE
          )
        );

        $filename_layout_array = array($filename, "$grid_sanitized-$layout_sanitized");
        $filename_layout = implode('--', $filename_layout_array);

        /**
         * Generate a CSS suggestion that will be added if the CSS file exists.
         * Most of those parameters are copied from Alpha.
         *
         * @see alpha_grid_css().
         */
        $css_suggestions[$filename_layout] = array(
          'data' => $filename_layout,
          'options' => array(
            'group' => 5000,
            'media' => $layout['media'],
            'browsers' => array('IE' => 'gte IE 9', '!IE' => TRUE),
            'weight' => $layout['weight'],
            'preprocess_media' => TRUE
          )
        );
      }
    }

    $css_path = drupal_get_path('theme', $theme_name) . '/css';
    foreach ($css_suggestions as $filename => $css_suggestion) {
      if ($file = alpha_find_stylesheet($css_path, $filename)) {
        $options = !empty($css_suggestion['options']) ? $css_suggestion['options'] : NULL;
        drupal_add_css($file, $options);
      }
    }
  }
}
