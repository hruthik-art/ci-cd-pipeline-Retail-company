# Use the official Tomcat image as the base
FROM tomcat:9-jdk8-temurin

# Remove the default Tomcat webapps to keep the image clean (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your war file into the Tomcat webapps directory
# Tomcat will automatically "explode" (unzip) and deploy it
COPY ./target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
