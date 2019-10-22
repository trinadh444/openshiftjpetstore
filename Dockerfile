FROM tomcat
USER root
COPY target/*.war /usr/local/tomcat/webapps
RUN cd /usr/local/tomcat/webapps
RUN ls
