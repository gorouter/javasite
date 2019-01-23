FROM wisbyme/javaos:1.8

MAINTAINER ljjun <wisbyme@gmail.com>

ENV TZ=Asia/Shanghai

RUN set -x \
  && yum update -y \
  && yum install -y wget \
  && wget --tries=0 --quiet http://mirrors.shu.edu.cn/apache/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz -O /tmp/tomcat-last.tar.gz \
  && mkdir -p /usr/java/tomcat \
  && tar -C /usr/java/tomcat/ -zxvf /tmp/tomcat-last.tar.gz \

  && set -eux \
  && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
  && echo $TZ > /etc/timezone \
  
  && yum clean all
  
ENV CATALINA_HOME /usr/java/tomcat
ENV PATH ${PATH}:${CATALINA_HOME}/bin

EXPOSE 8080
CMD ["/usr/java/tomcat/bin/catalina.sh","run"]
