#!/bin/bash
#author jamlee webboy89860@gmail.com

case $1 in
  apache)
    name=`docker-compose ps| grep apache | awk '{print $1}'`
    docker exec -ti $name  /bin/bash
  ;;
  mysql)
    db_name=`docker-compose ps| grep db | awk '{print $1}'`
    docker exec -ti $db_name  /bin/bash
  ;;

  redis) 
    redis_name=`docker-compose ps| grep redis | awk '{print $1}'`
    docker exec -ti $redis_name  /bin/bash
  ;;
 
  *)
    cat <<EOF

    """""""""""""""""""""""""""""""""""""""""""""""
    "
    " DOCKER DEV ENV  HELPER
    "
    """"""""""""""""""""""""""""""""""""""""""""""

    please input one of following keyword:

        apache, mysql, redis 

    for example:
        ./ctl apache #enter apache




EOF
  ;;

esac
