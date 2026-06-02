pipeline {
    agent any

 HEAD
    stages {

        stage('Checkout') {

    environment {
        APP_NAME = "node-mysql-app"
    }

    stages {

        stage('Checkout Code') {
 126c9eb (Updated CI/CD pipeline)
            steps {
                git branch: 'main',
                url: 'https://github.com/mustaqshaik322-ux/jenkins-demo.git'
            }
        }

 HEAD
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

        stage('Cleanup Old Containers') {
            steps {
                sh '''
                echo "Stopping old containers..."

                docker compose down || true

                docker rm -f node-compose-container || true

                docker container prune -f || true
                docker image prune -f || true
                '''
            }
        }

        stage('Build') {
            steps {
                sh '''
                echo "Building images..."
                docker compose build
>>>>>>> 126c9eb (Updated CI/CD pipeline)
                '''
            }
        }

        stage('Deploy') {
            steps {
<<<<<<< HEAD
                sh 'docker compose up -d --build'
            }
        }

        stage('Test') {
            steps {
                sh 'curl http://localhost:3000 || true'
            }
        }
    }
=======
                sh '''
                echo "Starting containers..."
                docker compose up -d
                '''
            }
        }

        stage('Health Check') {
            steps {
                sh '''
                echo "Checking application..."

                sleep 10
                curl -f http://localhost:3000 || exit 1
                '''
            }
        }
    }

    post {
        success {
            echo "✅ Deployment SUCCESS"
        }

        failure {
            echo "❌ Deployment FAILED"
        }
    }
>>>>>>> 126c9eb (Updated CI/CD pipeline)
}
