pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/mustaqshaik322-ux/jenkins-demo.git'
            }
        }

        stage('Build & Deploy with Docker Compose') {
            steps {
                sh 'docker compose down || true'
                sh 'docker compose up -d --build'
            }
        }

        stage('Verify') {
            steps {
                sh 'docker ps'
            }
        }
    }
}
