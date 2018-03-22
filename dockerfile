FROM maven:3.5-jdk-8

WORKDIR /usr/src/app/

ADD . .

EXPOSE 8080

# TODO: find a way to cache packages for spring-boot:run"
CMD ["mvn", "spring-boot:run"]

