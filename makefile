# Build danillonunes.net website

drupal : .gitmodules danillonunes.make
		drush build

clean :
		rm -rf drupal

test :
		make drupal
		test -d drupal
		test -f drupal/CHANGELOG.txt
		make clean