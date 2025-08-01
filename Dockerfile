# Use the official Tomcat image as the base image

# Labels instead of deprecated MAINTAINER
LABEL maintainer="CloudContainer Technologies Private Limited"
LABEL description="This Dockerfile creates a custom Docker image"
LABEL author="Kiran Mohite"
LABEL email="mohitek2417@gmail.com"

# Use modern ENV syntax (key=value)
ENV APP_TYPE=JAVA \
    COMPANY_TYPE=IT \
    COMPANY_EMAIL=kiranmohite2417@gmail.com

# Copy the WAR file into the Tomcat webapps directory
COPY target/Pharmacy-Drug-Mangement-1.0.war /usr/local/tomcat/webapps/

# Expose port 8080 for the Tomcat server
EXPOSE 8080

# Set the default command to run Tomcat on container startup
CMD ["catalina.sh", "run"]
