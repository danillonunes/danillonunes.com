# Build danillonunes.net website

drupal : .gitmodules danillonunes.make
		drush build

clean :
		rm -rf drupal
