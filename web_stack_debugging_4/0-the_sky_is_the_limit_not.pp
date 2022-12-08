# increase limit of open file fro nginix processes


exec {'increase_limit':
  provider => shell,
  command  => 'sudo sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 5000\"/g" /etc/default/nginx',
}

# Restart Nginx 
exec { 'restart_service':
  command  => 'sudo service nginx restart',
  provider => shell
}
