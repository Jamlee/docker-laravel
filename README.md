# The laravel development environment using  *docker-compose*

this project base on [docker-compse-lamp] (https://github.com/tkyk/docker-compose-lamp)


#0x1 Quickly start

Currently this project consists of:

- CentOS 6
- Apache 2.2
- MySQL 5.6
- PHP 5.6 ([Les RPM de Remi - Repository](http://rpms.famillecollet.com/))
- Redis 2.8.19

Prerequire tools:

- docker(1.6+)
- docker-compose(1.2+)
- [pipework](https://github.com/jpetazzo/pipework)

Prequire configiration:

please add a record to a hosts file.

     sudo echo "127.0.0.1  laravel.dev" >> /etc/hosts




Before you run the command  `docker-compose up`,you must create a data container.it can keep the data of mysql not to be removed with `docker-compose rm`.

    docker-compose -f data.yml up && docker-compose up

Then open url http://localhost or http://laravel.dev after those services started,you will get some useful information.

note:
     if you execute `docker-compose -f data.yml up` again,you will lost your data of mysql. so you just need to do it once.**I have perpared a initial laravel project for you**.
     

#0x2 Create project of laravel by yourself

You could run the command like follows to create a laravel project named `project` under the path `./webroot` :

    cd ./webroot
    laravel new project

Note: you can also change the project name `project` to others such as `blog` or `www` in the file `./httpd.conf`,and if you want to enter the container whom run apache inside,you can run `./ctl apache` to enter it faster.

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
    ./ctl redis   #enter the redis container

while you use the script to start or restart your container,you will assign a static ip to the container .the default ip of container is `192.1.68.99.11`. if you want to know more,please read source code of `./ctl`.
