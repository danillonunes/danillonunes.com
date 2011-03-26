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

; Pathauto
projects[pathauto][version] = 1.0-beta1

; Token
projects[token][version] = 1.0-beta1

; Transliteration
projects[transliteration][version] = 3.0-alpha1

; Wysiwyg
projects[wysiwyg][version] = 2.0

; Contrib themes
; ------------

; Rubik
projects[rubik][version] = 4.0-beta5

; Tao
projects[tao][version] = 3.0-beta3

; Contrib libraries
; ------------

; CKEditor
libraries[ckeditor][download][type] = svn
libraries[ckeditor][download][url] = http://svn.ckeditor.com/CKEditor/releases/stable
libraries[ckeditor][directory_name] = ckeditor
