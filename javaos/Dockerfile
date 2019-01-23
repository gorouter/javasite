FROM wisbyme/centos163

MAINTAINER ljjun <wisbyme@gmail.com>

RUN set -x \
  && yum update -y \
  && yum install -y wget \
  && wget --tries=0 --quiet https://raw.githubusercontent.com/programs/javadist/master/jre8.tar.gz -O /tmp/jre-last.tar.gz \
  && tar -C /usr/java/jdk/ -zxvf /tmp/jre-last.tar.gz \
  && yum clean all
  
ENV JAVA_HOME /usr/java/jdk
ENV CLASSPATH ${JAVA_HOME}/lib/dt.jar:${JAVA_HOME}/lib/tools.jar
ENV PATH ${PATH}:${JAVA_HOME}/bin

WORKDIR /opt
