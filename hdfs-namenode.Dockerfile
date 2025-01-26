FROM hdfs-base

CMD /bin/bash -c "hdfs namenode -format -force && hdfs namenode -fs hdfs://nn:9000"
