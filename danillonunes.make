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

projects[] = drupal

; Contrib modules
; ------------

projects[backup_migrate][version] = 2.1

projects[pathauto][version] = 1.0-beta1

projects[token][version] = 1.0-beta1

projects[translation_management][version] = 1.0-beta1

projects[transliteration][version] = 3.0-alpha1

projects[wysiwyg][version] = 2.0

; Contrib themes
; ------------

projects[rubik][version] = 4.0-beta5

projects[tao][version] = 3.0-beta3

; Contrib libraries
; ------------

libraries[ckeditor][download][type] = svn
libraries[ckeditor][download][url] = http://svn.ckeditor.com/CKEditor/releases/stable
libraries[ckeditor][directory_name] = ckeditor
