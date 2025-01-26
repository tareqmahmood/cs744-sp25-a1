FROM hdfs-base

CMD hdfs datanode -fs hdfs://nn:9000
