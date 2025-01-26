# Dockerfile
FROM ubuntu:22.04

RUN apt-get update 
RUN apt-get install -y openjdk-8-jdk wget iputils-ping

# Java
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre

# HDFS
RUN wget https://dlcdn.apache.org/hadoop/common/hadoop-3.3.6/hadoop-3.3.6.tar.gz && tar zvxf hadoop-3.3.6.tar.gz
# Add hadoop to path
ENV PATH="/hadoop-3.3.6/bin:${PATH}"
ENV PATH="/hadoop-3.3.6/sbin:${PATH}"
ENV HADOOP_HOME=/hadoop-3.3.6
# Update hadoop config files
WORKDIR /hadoop-3.3.6/etc/hadoop
COPY ./hadoop/core-site.xml .
COPY ./hadoop/hdfs-site.xml .
