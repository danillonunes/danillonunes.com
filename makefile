# Build danillonunes.net website

drupal : .gitmodules danillonunes.make
		drush build

install : drupal
		cd http && drush site-install --db-url=mysql://travis:@localhost/danillonunes --account-pass=danillonunes -y

clean :
		rm -rf drupal

test :
		test -d drupal
		test -f drupal/CHANGELOG.txt
