FROM tomcat
USER root
COPY target/*.war usr/local/tomcat/webapps
