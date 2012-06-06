; danillonunes.net makefile
; ----------------

; Core version
; ------------

core = 7.x

; API version
; ------------

api = 2

; Core project
; ------------

projects[drupal][version] = 7.14

; Contrib modules
; ------------

projects[admin_menu][version] = 3.0-rc3

projects[backup_migrate][version] = 2.4

projects[captcha][version] = 1.0-beta2

projects[cdn][version] = 2.5

projects[context][version] = 3.0-beta3

projects[ctools][version] = 1.0

projects[entity][version] = 1.0-rc3

projects[environment_indicator][version] = 1.1

projects[features][version] = 1.0-rc2

projects[google_analytics][version] = 1.2

projects[hidden_captcha][version] = 1.0

projects[i18n][version] = 1.5

projects[jquery_update][version] = 2.2

projects[l10n_update][version] = 1.0-beta3

projects[media][version] = 1.1

projects[less][version] = 2.5

projects[libraries][version] = 1.0

projects[modernizr][version] = 2.1

projects[openidurl][version] = 1.5

projects[pathauto][version] = 1.1

projects[pathologic][version] = 1.4

projects[prefixfree][version] = 1.0-alpha1

projects[redirect][version] = 1.0-beta4

projects[reinvigorate][type] = module
projects[reinvigorate][download][type] = git
projects[reinvigorate][download][url] = http://git.drupal.org/sandbox/danillonunes/1555158.git
projects[reinvigorate][download][branch] = 7.x-1.0-alpha2

projects[respondjs][version] = 1.1

projects[smtp][version] = 1.0-beta1

projects[styles][version] = 2.0-alpha8

projects[strongarm][version] = 2.0-rc1

projects[token][version] = 1.1

projects[transliteration][version] = 3.1

projects[variable][version] = 1.2

projects[views][version] = 3.3

projects[vinculum][type] = module
projects[vinculum][download][type] = git
projects[vinculum][download][url] = http://git.drupal.org/project/vinculum.git
projects[vinculum][download][branch] = d6f19b33dd9a8906c59472fa512cc7c30ae81d4f

projects[xmlsitemap][version] = 2.0-rc1

; Contrib themes
; ------------

projects[rubik][version] = 4.0-beta6

projects[tao][version] = 3.0-beta4

projects[omega][version] = 3.1

; Contrib libraries
; ------------

libraries[lessphp][download][type] = file
libraries[lessphp][download][url] = http://leafo.net/lessphp/src/lessphp-0.3.4-2.tar.gz
libraries[lessphp][download][md5] = 4d54697564df5aeeeeeebb906a5f7f72

libraries[modernizr][download][type] = file
libraries[modernizr][download][url] = http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.5.3/modernizr.min.js
libraries[modernizr][download][md5] = 315ea433abb47b0872e116ce65b09a73

libraries[prefixfree][download][type] = git
libraries[prefixfree][download][url] = https://github.com/LeaVerou/prefixfree.git
libraries[prefixfree][download][branch] = e4a34d823eb6978a62f353fc4240132e1397e3b6

libraries[respondjs][download][type] = git
libraries[respondjs][download][url] = https://github.com/scottjehl/Respond.git
libraries[respondjs][download][branch] = 1.2.0
