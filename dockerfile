FROM jetty:jre8

COPY output.war /var/lib/jetty/webapps/app.war
RUN ls /var/lib/jetty/webapps

EXPOSE 8080