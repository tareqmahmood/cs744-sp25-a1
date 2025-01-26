FROM spark-base
CMD /bin/bash -c "/spark-3.3.4-bin-hadoop3/sbin/start-master.sh && sleep infinity"
