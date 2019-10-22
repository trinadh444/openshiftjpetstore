FROM tomcat
USER root
RUN apt-get update -y
RUN apt-get maven -y
RUN mvn clean install -Dmaven.test.skip=true
ls 
pwd
