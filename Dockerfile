FROM tomcat
USER root
RUN apt-get update
RUN apt-get install maven
RUN cd /usr/local/
RUN mkdir project
COPY . /usr/local/project
RUN cd /usr/local/project
RUN mvn clean install -Dmaven.test.skip=true
RUN cp  /usr/local/project/target/jpetstore.war /usr/local/tomcat/webapps/
RUN cd /usr/local/tomcat/webapps/
RUN ls
