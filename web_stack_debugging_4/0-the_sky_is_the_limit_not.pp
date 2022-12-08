# increase the open file limit for nginx processes

exec { 'increase limit':
  command  => 'sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 5000\"/g" /etc/default/nginx',
  provider => shell
}

# restart nginx
exec { 'restart nginx':
  command  => 'sudo service nginx restart',
  provider => shell
}
