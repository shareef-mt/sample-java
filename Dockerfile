FROM tomcat:8
# Take the war and copy to webapps of tomcat
RUN cd /var/lib/jenkins/workspace/mt_job/
RUN pwd
COPY target/*.war /usr/local/tomcat/webapps/
