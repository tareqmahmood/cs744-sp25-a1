# create directory in hdfs for spark logs
docker exec nn hdfs dfs -mkdir -p hdfs://nn:9000/spark-logs

# start history server in spark
docker exec master /spark-3.3.4-bin-hadoop3/sbin/start-history-server.sh
