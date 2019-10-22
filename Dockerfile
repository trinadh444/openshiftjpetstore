FROM tomcat
USER root
COPY target/jpetstore.war /usr/local/tomcat/webapps/
RUN cd /usr/local/tomcat/webapps/
RUN ls
