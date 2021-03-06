FROM saitrinadh444/tomcat:8.5.41
USER root
RUN apt-get update
RUN apt-get install maven -y
RUN cd /usr/local/
RUN mkdir project
COPY . /usr/local/project/
RUN cd /usr/local/project/ && mvn clean install -Dmaven.test.skip=true
RUN cp /usr/local/project/target/jpetstore.war /usr/local/tomcat/webapps/
RUN cd /usr/local/tomcat/webapps/ && ls
