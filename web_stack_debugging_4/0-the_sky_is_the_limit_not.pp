# increase limit of open file fro nginix processes


exec {'increase_limit':
  command  => 'sudo sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 5000\"/g" /etc/default/nginx',
  provider => shell,
}

# Restart Nginx 
exec { 'restart_service':
  command  => 'sudo service nginx restart',
  provider => shell
}
