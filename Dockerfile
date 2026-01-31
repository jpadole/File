FROM tomcat:9.0-jdk11-openjdk-slim
# Remove default Tomcat apps and copy our artifact
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]