pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                url: 'https://github.com/mustaqshaik322-ux/jenkins-demo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t node-app:v1 ./app'
            }
        }

        stage('Stop Old Containers') {
            steps {
                sh '''
                docker compose down || true
                docker rm -f node-container || true
                '''
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker compose up -d --build'
            }
        }

        stage('Test') {
            steps {
                sh 'curl http://localhost:3000 || true'
            }
        }
    }
}
