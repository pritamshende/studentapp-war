FROM centos 
RUN yum install java-openjdk -y
ADD https://downloads.apache.org/tomcat/tomcat-8/v8.5.90/bin/apache-tomcat-8.5.90.zip.sha512
COPY ./student.war /opt/apache-tomcat/webapps/student.war
##RUN curl -o https://downloads.apache.org/tomcat/tomcat-8/v8.5.90/bin/apache-tomcat-8.5.90.zip.sha512
RUN tar -xzf apache-tomcat-8.5.82.tar.gz -c /opt
WORKDIR /opt
RUN mv /opt/apache-tomcat* /opt/apache-tomcat
EXPOSE 8080
##CMD ["opt/apache-tomcat/bin/catalina.sh" , "run"]
ENTRYPOINT ["opt/apache-tomcat/bin/catalina.sh" , "run"]