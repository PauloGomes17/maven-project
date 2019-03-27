FROM tomcat:8.5.38-jre8

ADD ./target/*.war /usr/local/tomcat/webapps

EXPOSE 18081

CMD [ "startup.sh", "run" ]