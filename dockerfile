FROM maven:3.5-jdk-8

WORKDIR /usr/src/app/

# this will cache mvn deps
COPY pom.xml .
RUN ["mvn", "verify", "clean", "--fail-never"]

ADD . .
RUN ["mvn", "package"]

EXPOSE 8080

CMD ["mvn", "spring-boot:run"]

# FROM java:8
# COPY from=builder /usr/src/app/target/us.fetchr.sample-0.0.1-SNAPSHOT.war /opt/build.war
# CMD ["java", "-war", "opt/build.war"]
