# Web stack debugging #4


## Approach for task 0
> In sandbox run this command - ```ab -c 100 -n 2000 localhost/```
> Check error log with this command - ``` cat /var/log/nginx/error.log```
> You see too many file open error
> Increase limit in /etc/default/nginx

## Helpful links
* [Maximum open files](https://stackoverflow.com/questions/27849331/how-to-set-nginx-max-open-files)
* [article](https://medium.com/@tyastropheus/nginx-failure-under-high-volume-requests-a-post-mortem-draft-770bfe255f05)