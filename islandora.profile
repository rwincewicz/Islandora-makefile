'Islandora',
    'description' => 'Base install profile for Islandora Drupal sites.',
  );
}
 
/**
* Return an array of the modules to be enabled when this profile is installed.
*
* @return
*  An array of modules to be enabled.
*/
function fusebase_profile_modules() {
  return array(
    // Enable required core modules first.
    'block',
    'book',
    'comment',
    'dblog',
    'filter',
    'help',
    'menu',
    'node',
    'path',
    'search',
    'system',
    'taxonomy',
    'update',
    'upload',
    'user',
 
    // Then, enable any contributed modules here.
    'views',
    'tabs',
    'fedora_repository',
 
    // Helper modules.
    'token',
 
    // Image modules.
    'imageapi',
 
    // WYSIWYG and supporting modules and libraries.
    'imce',
 
    // Jquery UI and Jquery update needed by most sites we build.
    'jquery_ui',
    'jquery_ui_dialog',
  
    // CCK and support for file and image uploads.
    'content',
    'content_permissions',
    'fieldgroup',
    'filefield',
    'imagefield',
    'number',
    'optionwidgets',
    'text',
 
    // Views.
    'views',
    'views_ui',
  );
}

// Clear caches.

  drupal_flush_all_caches();

// Make a 'superuser' role and edit permissions

  db_query("INSERT INTO {role} (rid, name) VALUES (3, 'superuser')");
  db_query("INSERT INTO {permission} (rid, perm, tid) VALUES (3, 'collapsible format selection, show format selection for blocks, show format selection for comments, show format selection for nodes, show format tips, show more format tips link, administer blocks, access comments, administer comments, post comments, post comments without approval, access content, administer nodes, create page content, delete any page content, delete own page content, delete revisions, edit any page content, edit own page content, revert revisions, view revisions, search content, view uploaded files, administer users',0)");
}
?>
