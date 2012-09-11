# Build danillonunes.net website
drupal :
		make pre-build && make build && make post-build

pre-build :
		php build/build.php pre-build

build : .gitmodules danillonunes.make
		php build/build.php build

post-build :
		php build/build.php post-build
