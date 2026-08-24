FROM tomcat:9-jre11

ENV JAVA_OPTS="-Xms128m -Xmx256m -Djava.security.egd=file:/dev/./urandom"

RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY ExamGrid.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
