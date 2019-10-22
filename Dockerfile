FROM tomcat
USER root
RUN apt-get update -y
RUN apt-get install maven -y
RUN mvn clean install -Dmaven.test.skip=true
RUN ls
RUN pwd
RUN cd target
RUN pwd
RUN cd /usr/local/tomcat
RUN pwd
RUN cd webapps
RUN pwd
