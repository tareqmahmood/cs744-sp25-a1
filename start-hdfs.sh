docker run -d \
	--name nn \
	--network spark_net \
	-p 9870:9870 \
	-v /data:/data \
	-v ./src:/src \
	-v /proj/uwmadison744-s25-PG0/wikidata/enwiki-pages-articles:/enwiki-pages-articles \
	hdfs-namenode


docker service create \
	--name dn \
	--network spark_net \
	--replicas 3 \
	--mount type=bind,source=/data,target=/data \
	hdfs-datanode
