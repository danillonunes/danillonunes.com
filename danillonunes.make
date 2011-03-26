; danillonunes.net makefile
; ----------------

; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.

core = 7.x

; API version
; ------------
; Every makefile needs to declare it's Drush Make API version. This version of
; drush make uses API version `2`.

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
