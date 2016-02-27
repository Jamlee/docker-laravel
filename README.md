# The laravel development environment using  *docker-compose*
Currently this project consists of:

- CentOS 6
- Apache 2.2
- MySQL 5.6
- PHP 5.6 ([Les RPM de Remi - Repository](http://rpms.famillecollet.com/))
- Redis 2.8.19

Prerequire tools:

- docker(1.10+)
- docker-compose(1.6+)


#0x1 Create project of laravel by yourself

You could run the command like follows to create a laravel project named `project` under the path `./webroot` :
    $ docker-compose up -d
    $ ./ctl apache #enter container
    $ laravel new project #create project

Note: 
> you can also change the project name `project` to others such as `blog` or `www` in the file `./httpd.conf`

#0x2 The more fast way to enter these container

just to use script `ctl`:

    $ ./ctl apache  #enter the apahce container
    $ ./ctl mysql   #enter the mysql  container
    $ ./ctl redis   #enter the redis container

