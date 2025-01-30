docker run -d \
	--name master \
	--network spark_net \
	-p 5000:5000 \
	-p 8080:8080 \
	-p 4040:4040 \
	-p 18080:18080 \
	-v /data:/data \
	-v ./src:/src \
	spark-master

docker service create \
	--name worker \
	--network spark_net \
	--replicas 3 \
	--mount type=bind,source=/data,target=/data \
	spark-worker
