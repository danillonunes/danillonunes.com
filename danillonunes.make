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
projects[pathauto][subdir] = contrib

; Token
projects[token][version] = 1.0-beta1
projects[token][subdir] = contrib

; Transliteration
projects[transliteration][version] = 3.0-alpha1
projects[transliteration][subdir] = contrib

; Wysiwyg
projects[wysiwyg][version] = 2.0
projects[wysiwyg][subdir] = contrib

; Contrib themes
; ------------

; Tao
projects[tao][version] = 3.0-beta3
projects[tao][subdir] = contrib

; Rubik
projects[rubik][version] = 4.0-beta5
projects[rubik][subdir] = contrib

; Contrib libraries
; ------------

; CKEditor
libraries[ckeditor][download][type] = svn
libraries[ckeditor][download][url] = http://svn.ckeditor.com/CKEditor/releases/stable
libraries[ckeditor][directory_name] = ckeditor
