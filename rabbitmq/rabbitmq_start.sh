#!/bin/bash
cur_dir=`pwd`
docker stop rabbitmq-management
docker start rabbitmq-management

