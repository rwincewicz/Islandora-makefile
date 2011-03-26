; $Id$
;
; Islandora drush make file
;

; Basic settings

core = 6.x
api = 2

; Core

projects[drupal][version] = 6.20

; Projects

projects[] = tabs 	
projects[] = imageapi
projects[] = views
projects[] = cck
projects[] = jquery_ui
projects[] = jquery_update

; Libraries

libraries[jquery_ui][download][type] = "get"
libraries[jquery_ui][download][url] = "http://jquery-ui.googlecode.com/files/jquery-ui-1.7.3.zip"
libraries[jquery_ui][directory_name] = "jquery.ui"
libraries[jquery_ui][destination] = "modules/jquery_ui"

; Islandora cloned from github

projects[islandora][type] = module
projects[islandora][download][type] = git
projects[islandora][download][url] = git://github.com/Islandora/islandora.git
