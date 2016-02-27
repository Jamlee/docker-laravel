#!/bin/bash
#author jamlee webboy89860@gmail.com

#begin

if [ "$1" == "apache" ]; then
  name=`docker-compose ps| grep apache | awk '{print $1}'`
  docker exec -ti $name  /bin/bash
fi

if [ "$1" == "mysql" ]; then
  db_name=`docker-compose ps| grep db | awk '{print $1}'`
  docker exec -ti $db_name  /bin/bash
fi

if [ "$1" == "redis" ]; then
  redis_name=`docker-compose ps| grep redis | awk '{print $1}'`
  docker exec -ti $redis_name  /bin/bash
fi
