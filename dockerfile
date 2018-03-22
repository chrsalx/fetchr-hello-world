FROM maven:3.5-jdk-8

WORKDIR /usr/src/app/

# this will cache mvn deps
# COPY pom.xml .
# RUN ["mvn", "verify", "clean", "--fail-never"]

ADD . .
# RUN ["mvn", "package"]

EXPOSE 8080

# TODO: find a way to cache packages for spring-boot:run"
CMD ["mvn", "spring-boot:run"]

