## Web stack debugging #3

* curl localhost gives 500 Internal error
* cat /var/log/apache2/error.log doesn't show any error
* open /etc/php5/apache2/php.ini and set log_errors to 'On' That was on line 500
* ps auxf
* strace -p < pid of apache2 > strace will wait, so curl localhost in another terminal
* strace will show error
* cat /var/log/apache2/error.log to see details
* fix error

### Resource
> [to see error](https://stackoverflow.com/questions/4731364/internal-error-500-apache-but-nothing-in-the-logs)

> for puppet code [Resource Type Reference](https://puppet.com/docs/puppet/5.5/type.html)