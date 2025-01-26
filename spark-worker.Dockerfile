FROM spark-base
CMD /bin/bash -c "/spark-3.3.4-bin-hadoop3/sbin/start-worker.sh spark://master:7077 && sleep infinity"
