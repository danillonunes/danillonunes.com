# Build danillonunes.net website

drupal : .gitmodules danillonunes.make
		php build/build.php

clean :
		php build/build.php clean
