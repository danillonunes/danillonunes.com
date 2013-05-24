; danillonunes.net makefile
; ----------------

build[path] = drupal
build[cache][path] = .build/cache

; Core version
; ------------

core = 7.x

; API version
; ------------

api = 2

; Core project
; ------------

projects[drupal][version] = 7.22

; Contrib modules
; ------------

projects[admin_menu][version] = 3.0-rc4

projects[backup_migrate][version] = 2.7

projects[backup_migrate_files][type] = module
projects[backup_migrate_files][download][type] = git
projects[backup_migrate_files][download][url] = http://git.drupal.org/project/backup_migrate_files.git
projects[backup_migrate_files][download][branch] = 51562f652b6935ce005dddddd2529b4f7392998e

projects[boost][version] = 1.0-beta2

projects[captcha][version] = 1.0-beta2

projects[cdn][version] = 2.6

projects[cloudflare][version] = 1.0-beta2

projects[context][version] = 3.0-beta6

projects[ctools][version] = 1.3

projects[entity][version] = 1.1

projects[entitycache][version] = 1.1
; Prevent error with test suite due to rename of test class. See to issue:
; Rename of NodeAccessRecordsUnitTest to NodeAccessRecordsTestCase in node.test
; breaks entitycache.test and core testing
projects[entitycache][patch][1559070] = http://drupal.org/files/entitycache-testcase-renaming.patch

projects[environment_indicator][version] = 1.1

projects[features][version] = 1.0

projects[google_analytics][version] = 1.3

projects[hidden_captcha][version] = 1.0

projects[honeypot][version] = 1.14

projects[i18n][version] = 1.8

projects[jquery_update][version] = 2.2

projects[l10n_update][version] = 1.0-beta3

projects[media][version] = 1.3

projects[less][version] = 2.6

projects[libraries][version] = 1.0

projects[modernizr][version] = 2.1

projects[openidurl][version] = 1.5

projects[pathauto][version] = 1.2

projects[pathologic][version] = 2.10

projects[prefixfree][version] = 1.0-alpha1

projects[redirect][version] = 1.0-rc1

projects[reinvigorate][type] = module
projects[reinvigorate][download][type] = git
projects[reinvigorate][download][url] = http://git.drupal.org/sandbox/danillonunes/1555158.git
projects[reinvigorate][download][branch] = 7.x-1.0-alpha2

projects[respondjs][version] = 1.2

projects[smtp][version] = 1.0

projects[styles][version] = 2.0-alpha8

projects[strongarm][version] = 2.0

projects[token][version] = 1.5

projects[transliteration][version] = 3.1

projects[variable][version] = 2.2

projects[views][version] = 3.7

projects[vinculum][type] = module
projects[vinculum][download][type] = git
projects[vinculum][download][url] = http://git.drupal.org/project/vinculum.git
projects[vinculum][download][branch] = d6f19b33dd9a8906c59472fa512cc7c30ae81d4f

projects[wysiwyg][version] = 2.2
projects[wysiwyg][patch][1853550] = http://drupal.org/files/wyiwyg-support_v4_ckeditor-1853550-42.patch

projects[xmlsitemap][version] = 2.0-rc2

; Contrib themes
; ------------

projects[omega][version] = 3.1
; Fix conflict between Omega and Less
projects[omega][patch][1627478] = http://drupal.org/files/preprocess-aggregation-1627478-14.patch

; Contrib libraries
; ------------

libraries[ckeditor][download][type] = file
libraries[ckeditor][download][url] = http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.0.1/ckeditor_4.0.1_full.zip
libraries[ckeditor][download][md5] = d47c37acf2d03ffe6ad39f55e00b099b

libraries[lessphp][download][type] = file
libraries[lessphp][download][url] = http://leafo.net/lessphp/src/lessphp-0.3.8.tar.gz
libraries[lessphp][download][md5] = 5cdda4ca825678077a669a67c835c6c7

libraries[modernizr][download][type] = file
libraries[modernizr][download][url] = http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.5.3/modernizr.min.js
libraries[modernizr][download][md5] = 315ea433abb47b0872e116ce65b09a73

libraries[prefixfree][download][type] = git
libraries[prefixfree][download][url] = https://github.com/LeaVerou/prefixfree.git
libraries[prefixfree][download][branch] = e4a34d823eb6978a62f353fc4240132e1397e3b6

libraries[respondjs][download][type] = git
libraries[respondjs][download][url] = https://github.com/scottjehl/Respond.git
libraries[respondjs][download][branch] = 1.2.0
