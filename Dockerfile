FROM tomcat
USER root
RUN cd /usr/local/
RUN mkdir project
COPY . /usr/local/project
RUN cp  /usr/local/project/target/jpetstore.war /usr/local/tomcat/webapps/
RUN cd /usr/local/tomcat/webapps/
RUN ls
