#!/bin/bash
cur_dir=`pwd`
docker stop rabbitmq-management
docker rm rabbitmq-management

docker run -d --name rabbitmq-management \
-p 5672:5672 -p 15672:15672 \
-v ${cur_dir}/data:/var/lib/rabbitmq \
rabbitmq:3.7.26-management
