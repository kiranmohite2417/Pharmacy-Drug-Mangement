# # Use the official Tomcat image as the base image
FROM tomcat:9.0-jdk11

MAINTAINER "CloudContainer Technologies Private Limited"

LABEL Description="This Dockerfile create custom docker image"
LABEL Author="Kiran Mohite"
LABEL Email="mohitek2417@gmail.com"

ENV APP_TYPE JAVA
ENV COMPANY_TYPE IT
ENV COMPANY_EMAIL kiranmohite2417@gmail.com

# Copy the WAR file into the Tomcat webapps directory
COPY target/Pharmacy-Drug-Mangement-1.0.war /usr/local/tomcat/webapps/
# Expose port 8080 for the Tomcat server
EXPOSE 8080

# Set the default command to run Tomcat on container startup
CMD ["catalina.sh", "run"]

