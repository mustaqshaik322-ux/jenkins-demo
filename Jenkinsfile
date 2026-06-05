pipeline {
agent any

environment {
    IMAGE_NAME = "node-app:v1"
    CONTAINER_NAME = "node-container"
}

stages {

    stage('Checkout') {
        steps {
            git branch: 'main',
                url: 'https://github.com/mustaqshaik322-ux/jenkins-demo.git'
        }
    }

    stage('Build Docker Image') {
        steps {
            sh 'docker build -t $IMAGE_NAME .'
        }
    }

    stage('Stop Old Container') {
        steps {
            sh 'docker rm -f $CONTAINER_NAME || true'
        }
    }

    stage('Run Container') {
        steps {
            sh 'docker run -d --name $CONTAINER_NAME -p 3000:3000 $IMAGE_NAME'
        }
    }

    stage('Verify') {
        steps {
            sh 'docker ps'
        }
    }
}

post {
    always {
        sh 'docker image prune -af || true'
    }
}

}

