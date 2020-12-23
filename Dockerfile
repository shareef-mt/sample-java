FROM tomcat:8.0
RUN cd /var/lib/jenkins/workspace/mt_job/webapp/
RUN pwd
ADD target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
