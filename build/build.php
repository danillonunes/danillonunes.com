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
    global $argv;

    if (isset($argv[1])) {
      switch ($argv[1]) {
        case 'clean':
          $this->make_clean($this->path);
          break;
      }
    }
    else {
      $this->make($this->makefile, $this->path);
    }
  }

  /**
   * Make the site.
   */
  private function make($makefile, $path) {
    $tmp_path = $this->get_make_tmp_path($path);

    $this->make_tmp_clean($path);

    $this->run("drush make $makefile $tmp_path", TRUE);

    $this->make_move($path);
  }

  /**
   * Move site to its place.
   */
  private function make_move($path) {
    $tmp_path = $this->get_make_tmp_path($path);
    $old_path = $this->get_make_old_path($path);

    $this->safe_mv($path, $old_path);
    $this->safe_mv($tmp_path, $path);

    $this->safe_rm($this->public_path('site'));
    $this->run("ln -s " . $this->local_path('site') . " " . $this->public_path('site'));
    $this->run("ln -s " . $this->local_path('files') . " " . $this->public_path('files'));
    $this->make_tmp_clean($path);
  }

  /**
   * Clean temporary paths from old builds.
   */
  private function make_tmp_clean($path) {
    $tmp_path = $this->get_make_tmp_path($path);
    $old_path = $this->get_make_old_path($path);

    $this->safe_rm("$tmp_path");
    $this->safe_rm("$old_path");
  }

  /**
   * Clean build path.
   */
  private function make_clean($path) {
    $this->safe_rm("$path");
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

  /**
   * Remove a file or directory if it exists.
   */
  private function safe_rm($path) {
    if (is_dir($path)) {
      $this->run("rm -rf $path");
    }
  }

  /**
   * Move a file or directory if it exists.
   */
  private function safe_mv($path, $destination) {
    if (is_dir($path)) {
      $this->run("mv $path $destination");
    }
  }

  /**
   * Run a given command with support to error exit.
   */
  private function run($command, $error = FALSE) {
    system($command, $status);

    if ($error && $status) {
      exit($status);
    }
  }
}

$build = new Builder;
$build->init();
