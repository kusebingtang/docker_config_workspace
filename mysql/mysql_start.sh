#!/bin/bash
cur_dir=`pwd`
docker stop lecture_mysql
docker start lecture_mysql
