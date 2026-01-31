# Step 1: Use Tomcat as the base image
FROM tomcat:9.0-jdk11-openjdk-slim
 
# Step 2: Clean up the default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*
 
# Step 3: Copy the WAR file Maven just built into Tomcat
# We rename it to ROOT.war so the app loads at the main URL (/)
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
 
# Step 4: Open port 8080
EXPOSE 8080
 
# Step 5: Start Tomcat
CMD ["catalina.sh", "run"]
