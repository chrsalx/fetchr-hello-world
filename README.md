# hello-world

# Prerequisites:
- Ansible: 2.4.3.0
- Docker: 18.03.0-ce

# How to run deployment process:
- Clone repo: `$ git clone https://github.com/chrsalx/fetchr-hello-world.git`
- Run in shell: `$ ansible-playbook -i ./hosts  playbook.yml --ask-sudo-pass`
- Input sudo password for your machine
- Wait for ansible to finish (server may take a while to run)
- Go to http://localhost:9000

# How does it work?

The ansible script first builds the docker image that will be used to run Jenkins, using a base image from docker and sharing a backup of the Jenkins configuration
with the container once it's run.

Once the Jenkins server is running, ansible sends a request to trigger a new pipeline which proceeds to clone the repo and build the the .war file which is then retrieved
by a polling task run by ansible.

Once ansible knows the project is compiled, it builds the docker image using the source and runs it. Killing the Jenkins container in the process as it wont be needed anymore.