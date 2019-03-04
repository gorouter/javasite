FROM wisbyme/javaos:1.8

LABEL maintainer="ljjun<wisbyme@gmail.com>"

RUN set -x \
  && yum update -y \
  && yum install -y wget \
  && wget --tries=0 --quiet http://mirrors.shu.edu.cn/apache/tomcat/tomcat-8/v8.5.37/bin/apache-tomcat-8.5.37.tar.gz -O /tmp/tomcat-last.tar.gz \
  && tar -C /usr/java/ -zxvf /tmp/tomcat-last.tar.gz \
  && tomcatname=`ls -l /usr/java/ | grep 'apache-tomcat' | awk '{print $NF}'` \
  && mv /usr/java/${tomcatname} /usr/java/tomcat \
  && yum clean all
  
ENV CATALINA_HOME /usr/java/tomcat
ENV PATH ${PATH}:${CATALINA_HOME}/bin

EXPOSE 8080
CMD ["/usr/java/tomcat/bin/catalina.sh","run"]
