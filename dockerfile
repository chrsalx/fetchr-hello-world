FROM maven:3.5-jdk-8

WORKDIR /usr/src/app/

# this will cache mvn deps
# COPY pom.xml .
# RUN ["mvn", "verify", "clean", "--fail-never"]

ADD . .
# RUN ["mvn", "package"]

EXPOSE 8080

CMD ["mvn", "spring-boot:run"]

