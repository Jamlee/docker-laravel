# The laravel development environment using  *docker-compose*

this project base on [docker-compse-lamp] (https://github.com/tkyk/docker-compose-lamp)

Currently this project consists of:

- CentOS 6
- Apache 2.2
- MySQL 5.6
- PHP 5.6 ([Les RPM de Remi - Repository](http://rpms.famillecollet.com/))
- redis 2.8.19


Before you run `docker-compose up`,you must run a data container named `dataphp_dataPhp_1`.it can keep the data of mysql not to be remove with `docker-compose rm`.

    docker run -ti --name dataphp_dataPhp_1 -v /var/lib/mysql  ubuntu  /bin/bash

just run `docker-compose up` and open the url http://127.0.0.1. 

#create project of laravel

then you could run the command like follows to create a laravel project named `project` under the path `./webroot` to create a laravel5 project:

    laravel new project

you can also change the project name `project` to others such as `blog` or `www` in the file ./httpd.conf,and if you want to enter the container whom run apache inside,you can run ./entry to enter it faster.

Finally,enjoy it!
