pipeline {
    agent any

    stages {
        stage('Checkout') { 
            steps {
                git url: 'https://github.com/chrsalx/fetchr-hello-world'
            }
        }
        stage('Build') { 
            steps {
                sh 'mvn package'
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
}