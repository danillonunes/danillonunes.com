# Build danillonunes.net website

drupal : danillonunes.make
		drush make danillonunes.make drupal

clean :
		rm -rf drupal

test :
		test -d drupal
		test -f drupal/CHANGELOG.txt
