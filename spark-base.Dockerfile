# Dockerfile
FROM ubuntu:22.04

RUN apt-get update 
RUN apt-get install -y openjdk-8-jdk wget iputils-ping

# Java
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre

# If using pyspark
RUN apt-get install -y python3-pip
RUN pip3 install pyspark==3.3.4

# Spark
RUN wget https://archive.apache.org/dist/spark/spark-3.3.4/spark-3.3.4-bin-hadoop3.tgz && tar zvxf spark-3.3.4-bin-hadoop3.tgz
# Update spark config files
WORKDIR /spark-3.3.4-bin-hadoop3/conf/
COPY ./spark/spark-env.sh .
COPY ./spark/spark-defaults.conf .
