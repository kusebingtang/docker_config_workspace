#!/bin/bash
cur_dir=`pwd`
docker stop lecture_mysql
docker rm lecture_mysql
sudo docker run --name lecture_mysql \
-v ${cur_dir}/conf/my.cnf:/etc/mysql/my.cnf:rw \
-v ${cur_dir}/logs:/var/log/mysql:rw \
-v ${cur_dir}/data:/var/lib/mysql \
-v /etc/localtime:/etc/localtime:ro \
-p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql:latest
