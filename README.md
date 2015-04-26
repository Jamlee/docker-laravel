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

Before you run the command  `docker-compose up`,you must run a data container.it can keep the data of mysql not to be remove with `docker-compose rm`.

    docker-compose -f data.yml up && docker-compose up

Please open url http://localhost after those services starting,you can get some useful information.

note:
     while you execute `docker-compose -f data.yml up` again,you will lost your data of mysql.so you just need do once.
     

#0x2 Create project of laravel

You could run the command like follows to create a laravel project named `project` under the path `./webroot` :

    laravel new project

Note: you can also change the project name `project` to others such as `blog` or `www` in the file ./httpd.conf,and if you want to enter the container whom run apache inside,you can run `./ctl apache` to enter it faster.

Next,add a record to a hosts file.

     sudo echo "127.0.0.1  laravel.dev" >> /etc/hosts


Finally,open the url http://laravel.dev and enjoy it!

#0x3 The more fast way to use this

create data container:

    docker-compose -f data.yml up

just to use script `ctl`:
	
    ./ctl start   #start all of servies
    ./ctl stop    #stop all of servies
    ./ctl rm      #rm all container but exculde data contianer `dataphp`
    ./ctl restart #rm ,start
    ./ctl apache  #enter the apahce container
    ./ctl mysql   #enter the mysql  container
    ./ctl redis   $enter the redis container

while you use the script to start or restart your container,you will give the container a static ip by changing the script.the default ip of container is `192.1.68.99.11`. please read source of `ctl`.
