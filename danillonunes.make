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
