FROM tomcat:9.0.76


RUN ln -snf /usr/share/zoneinfo/Asia/Seoul /etc/localtime
RUN rm -rf /usr/local/tomcat/webapps/ROOT/*
COPY context.xml /usr/local/tomcat/conf/context.xml
COPY dbtest.jsp /usr/local/tomcat/webapps/ROOT/dbtest.jsp
COPY mysql-connector-j-8.0.33.jar /usr/local/tomcat/lib/mysql-connector-j-8.0.33.jar


COPY login.jsp /usr/local/tomcat/webapps/ROOT/login.jsp
COPY main.jsp /usr/local/tomcat/webapps/ROOT/main.jsp
COPY index.html /usr/local/tomcat/webapps/ROOT/index.html
COPY assets /usr/local/tomcat/webapps/ROOT/assets

EXPOSE 8080
CMD ["catalina.sh", "run"]
