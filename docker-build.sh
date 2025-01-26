docker build . -t hdfs-base -f hdfs-base.Dockerfile
docker build . -t spark-base -f spark-base.Dockerfile

docker build . -t hdfs-datanode -f hdfs-datanode.Dockerfile
docker build . -t spark-worker -f spark-worker.Dockerfile

if [ $(hostname -s) == "node0" ]; then
    docker build . -t hdfs-namenode -f hdfs-namenode.Dockerfile
    docker build . -t spark-master -f spark-master.Dockerfile
fi
