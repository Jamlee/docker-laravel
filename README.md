# The laravel development environment using  *docker-compose*

this project base on [docker-compse-lamp] (https://github.com/tkyk/docker-compose-lamp)


#0x1 Quickly start

Currently this project consists of:

- CentOS 6
- Apache 2.2
- MySQL 5.6
- PHP 5.6 ([Les RPM de Remi - Repository](http://rpms.famillecollet.com/))
- Redis 2.8.19

Prerequre tools:

- docker
- docker-compose
- [pipework](https://github.com/jpetazzo/pipework)

Before you run the command  `docker-compose up`,you must run a data container named `dataphp`.it can keep the data of mysql not to be remove with `docker-compose rm`.

    docker run --name dataphp -v /var/lib/mysql  ubuntu && docker-compose up

Please open url http://localhost after those services starting,you can get some useful information.

#0x2 Create project of laravel

You could run the command like follows to create a laravel project named `project` under the path `./webroot` to create a laravel5 project:

    laravel new project

Note: you can also change the project name `project` to others such as `blog` or `www` in the file ./httpd.conf,and if you want to enter the container whom run apache inside,you can run `./etl enter` to enter it faster.

Next,add a record to a hosts file.

     sudo echo "127.0.0.1  laravel.dev" >> /etc/hosts


Finally,open the url http://laravel.dev and enjoy it!

#0x3 The more fast way to use this

create data container:

    docker run -ti --name dataphp -v /var/lib/mysql  ubuntu

just to use script `ctl`:
	
    ./ctl start   #start all of servies
    ./ctl stop    #stop all of servies
    ./ctl rm      #rm all container but exculde data contianer `dataphp`
    ./ctl restart #rm ,start
    ./ctl enter   #enter the main container

while you use the script,you can also give the container a static ip by changing the script.the default ip of container is `192.168.99.11`
