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

projects[drupal][version] = 7.2

; Contrib modules
; ------------

projects[backup_migrate][version] = 2.1

projects[ctools][version] = 1.0-alpha4

projects[disqus][version] = 1.8

projects[environment_indicator][version] = 1.0

projects[features][version] = 1.0-beta2

projects[globalredirect][version] = 1.3

projects[l10n_update][version] = 1.0-beta1

projects[pathauto][version] = 1.0-beta1

projects[smtp][type] = module
projects[smtp][download][type] = git
projects[smtp][download][url] = http://git.drupal.org/project/smtp.git
projects[smtp][download][branch] = 7.x-1.x

projects[token][version] = 1.0-beta2

projects[translation_management][version] = 1.0-beta1

projects[transliteration][version] = 3.0-alpha1

projects[views][version] = 3.0-beta3

; projects[wysiwyg][version] = 2.0

projects[zen][version] = 3.0

; Contrib themes
; ------------

projects[rubik][version] = 4.0-beta5

projects[tao][version] = 3.0-beta3

; Contrib libraries
; ------------

; libraries[ckeditor][download][type] = svn
; libraries[ckeditor][download][url] = http://svn.ckeditor.com/CKEditor/releases/stable
; libraries[ckeditor][directory_name] = ckeditor
