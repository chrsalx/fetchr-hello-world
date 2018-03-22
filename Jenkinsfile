pipeline {
    agent any
    environment {
        COMPOSE_PROJECT_NAME = "${env.JOB_NAME}-${env.BUILD_ID}"
    }
    stages {
        stage('Checkout') { 
            steps {
                git url: 'https://github.com/chrsalx/fetchr-hello-world'
            }
        }
        stage('Build') { 
            steps {
                sh 'docker build -t test .'
            }
        }
        stage('Test') { 
            steps {
                sh 'echo "Test"'
            }
        }
        stage('Deploy') { 
            steps {
                sh 'echo "TBC"'
            }
        }
    }
    post {
        always {
            sh "docker-compose down -v"
        }
    }
}