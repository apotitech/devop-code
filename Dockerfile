# Pull base image 
FROM tomcat:8-jre8 

# Maintainer 
LABEL MAINTAINER "Apoti Eri - Lionel" 
COPY ./webapp/target/school.war /usr/local/tomcat/webapps
