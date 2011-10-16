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

projects[drupal][version] = 7.8

; Contrib modules
; ------------

projects[backup_migrate][version] = 2.1

projects[captcha][version] = 1.0-alpha3

projects[cdn][version] = 2.0-beta1

projects[ctools][version] = 1.0-beta1

projects[disqus][version] = 1.8

projects[environment_indicator][version] = 1.0

projects[features][version] = 1.0-beta3

projects[globalredirect][version] = 1.3

projects[google_analytics][version] = 1.2

projects[hidden_captcha][version] = 1.0

projects[i18n][version] = 1.0-beta8

projects[jquery_update][version] = 2.2

projects[l10n_update][version] = 1.0-beta2

projects[media][version] = 1.0-rc2

projects[media_browser_plus][version] = 1.0-beta2

projects[mollom][version] = 1.0

projects[openidurl][version] = 1.5

projects[pathauto][version] = 1.0-rc2

projects[pathologic][version] = 1.2

projects[redirect][version] = 1.0-beta3

projects[smtp][type] = module
projects[smtp][download][type] = git
projects[smtp][download][url] = http://git.drupal.org/project/smtp.git
projects[smtp][download][branch] = 7.x-1.x

projects[styles][version] = 2.0-alpha8

projects[strongarm][version] = 2.0-beta2
projects[strongarm][patch][] = http://drupal.org/files/issues/strongarm-lang_pref-998070_0.patch

projects[token][version] = 1.0-beta2

projects[translation_management][version] = 1.0-beta1

projects[transliteration][version] = 3.0-alpha1

projects[variable][version] = 1.0

projects[views][version] = 3.0-rc1

; projects[wysiwyg][version] = 2.0

projects[xmlsitemap][version] = 2.0-beta2

; Contrib themes
; ------------

projects[zen][version] = 3.1

; Contrib libraries
; ------------

; libraries[ckeditor][download][type] = svn
; libraries[ckeditor][download][url] = http://svn.ckeditor.com/CKEditor/releases/stable
; libraries[ckeditor][directory_name] = ckeditor
