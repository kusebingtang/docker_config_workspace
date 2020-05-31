cur_dir=`pwd`
docker stop redis-server
docker rm redis-server

docker run --name redis-server \
-p 6379:6379 \
-v ${cur_dir}/data:/data \
-v ${cur_dir}/conf/redis.conf:/etc/redis/redis.conf \
-d redis:latest \
redis-server /etc/redis/redis.conf
