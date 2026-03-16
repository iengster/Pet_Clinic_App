FROM tomcat:8
RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY target/Pet_Clinic_App.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
