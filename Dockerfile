# Use specific Apache Tomcat version as base image
FROM tomcat:9.0.107-jdk17-temurin

# Labels for metadata
LABEL maintainer="CloudContainer Technologies Private Limited"
LABEL description="This Dockerfile creates a custom Docker image for Pharmacy Drug Management"
LABEL author="Kiran Mohite"
LABEL email="mohitek2417@gmail.com"

# Environment variables
ENV APP_TYPE=JAVA \
    COMPANY_TYPE=IT \
    COMPANY_EMAIL=kiranmohite2417@gmail.com \
    CATALINA_HOME=/usr/local/tomcat

# Clean the default webapps to avoid conflicts (optional but recommended)
RUN rm -rf $CATALINA_HOME/webapps/*

# Copy the built WAR file into Tomcat webapps directory
COPY target/Pharmacy-Drug-Management.war $CATALINA_HOME/webapps/ROOT.war

# Expose port 8080 for Tomcat
EXPOSE 8080

# Set the default command to run Tomcat in foreground
CMD ["catalina.sh", "run"]

