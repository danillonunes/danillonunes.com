<?php
/**
 * Build and rebuild the site.
 */
class Builder {
  private $makefile = 'danillonunes.make';
  private $path = 'drupal';

  private $local_path = array(
    'site' => 'site',
    'files' => 'site/files'
  );

  private $public_path = array(
    'site' => 'sites/default',
    'files' => 'files'
  );

  private $cwd;

  /**
   * Start the build process.
   */
  public function init() {
    $this->cwd = getcwd();
    $this->make($this->makefile, $this->path);
  }

  /**
   * Make the site.
   */
  private function make($makefile, $path) {
    $tmp_path = $this->get_make_tmp_path($path);

    $this->make_clean($path);

    system("drush make $makefile $tmp_path");

    $this->make_move($path);
  }

  /**
   * Move site to its place.
   */
  private function make_move($path) {
    $tmp_path = $this->get_make_tmp_path($path);
    $old_path = $this->get_make_old_path($path);

    system("mv $path $old_path");
    system("mv $tmp_path $path");

    system("rm -rf " . $this->public_path('site'));
    system("ln -s " . $this->local_path('site') . " " . $this->public_path('site'));
    system("ln -s " . $this->local_path('files') . " " . $this->public_path('files'));
    $this->make_clean($path);
  }

  /**
   * Clean temporary paths from old builds.
   */
  private function make_clean($path) {
    $tmp_path = $this->get_make_tmp_path($path);
    $old_path = $this->get_make_old_path($path);

    system("rm -rf $tmp_path");
    system("rm -rf $old_path");
  }

  /**
   * Get local path.
   */
  private function local_path($path) {
    return implode(array($this->cwd, $this->local_path[$path]), '/');
  }

  /**
   * Get public path.
   */
  private function public_path($path) {
    return implode(array($this->cwd, $this->path, $this->public_path[$path]), '/');
  }

  /**
   * Get temporary path to make the site.
   */
  private function get_make_tmp_path($path) {
    return "$path-tmp";
  }

  /**
   * Get temporary path to move the old site.
   */
  private function get_make_old_path($path) {
    return "$path-old";
  }
}

$build = new Builder;
$build->init();
