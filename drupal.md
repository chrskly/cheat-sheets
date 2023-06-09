# Drupal

## Set/unet maintenance mode
Drupal 7: drush vset maintenance_mode 1
Drupal 6: drush vset site_offline 1

## Password reset

Drupal5 : UPDATE users SET pass = MD5('givememypasswordback') WHERE uid=1;


