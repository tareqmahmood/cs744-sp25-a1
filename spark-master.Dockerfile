FROM spark-base
RUN pip3 install jupyterlab pandas

CMD /bin/bash -c "/spark-3.3.4-bin-hadoop3/sbin/start-master.sh && sleep infinity"
