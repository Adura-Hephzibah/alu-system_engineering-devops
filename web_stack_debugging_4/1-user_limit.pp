# open a file without any error message

exec {'change hard nofile':
  command  => 'sed -i "s/nofile 5/nofile 5000/g; s/nofile 4/nofile 4000/g" /etc/security/limits.conf',
  provider => shell
}
