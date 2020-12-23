FROM tomcat:8.0
WORKDIR /var/lib/jenkins/workspace/mt_job/webapp/
COPY target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
