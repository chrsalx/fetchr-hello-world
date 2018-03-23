# hello-world

#Sample Tool Stack : Jenkins , Vagrant , Ansible

This is sample Spring Boot application

To test the sample application execute the following commands:

mvn package
mvn spring-boot:run

to hit the localhost after:
http://localhost:8080

Your Task

Your next task is to take the recently built hello-world service:

Read the documentation for the Hello World service and test them to make sure they work as expected.
Once you understand their usage, use preferred tools and technology to create automation that stands up local dev environment of the stack.


create an efficient docker image based on best practices for the hello world service. Be prepared to explain your approach.


Make the dev environment automation available via a public github repo with any instructions on how to run your dev environment in an accompanying README.md file. Please send it as this will be discussed during the interview.

    -v /var/run/docker.sock:/var/run/docker.sock\
    -v $(which docker):/usr/bin/docker\

docker run -d\
    --name jenkins-builder
    -v /var/app/jenkins_home:/var/jenkins_home\
    -p 8080:8080\
    -p 50000:50000\
    -t jenkins-builder