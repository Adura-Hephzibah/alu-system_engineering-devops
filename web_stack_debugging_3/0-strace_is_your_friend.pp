# fix 500 internal server error
# after debugging saw a file ending with .phpp instead of .php
# see README for more detail

exec {'500_error_fix':
  command  => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
  provider => shell
}
