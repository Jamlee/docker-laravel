# The laravel development environment using  *docker-compose*

this project base on [project] (https://github.com/tkyk/docker-compose-lamp)

Currently this project consists of:

- CentOS 6
- Apache 2.2
- MySQL 5.6
- PHP 5.6 ([Les RPM de Remi - Repository](http://rpms.famillecollet.com/))a
- redis 2.8.19


Before you run `docker-compose up`,you must run a data container named `dataphp_dataPhp_1`.it can keep the data of mysql not to be remove with `docker-compose rm`.

    docker run -ti --name dataphp_dataPhp_1 -v /var/lib/mysql  ubuntu  /bin/bash

then you should run the command like follows:

    laravel new jam

you also change the project name `jam` to others in the file ./httpd.conf.
