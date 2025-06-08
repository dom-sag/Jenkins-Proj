pipeline {
    agent any

    parameters {
        DOCKERHUB_CRDENTIALS = credentials('docker_creds')
        IMAGE_NAME = "https://hub.docker.com/repository/docker/domsag/dock-testing/"
        IMAGE_TAG = "env.${BUILD_NUMBER}"
    }

    stages {
        stage('Checkout code') {
            steps {
                checkout scm

            }
        }

        stage ('Build docker image') {
            steps {
                script {
                    docker.build("${IMAGE_NAME}.${IMAGE_TAG}")

                }
            }
        }

        stage('Push to Docker hub') {

            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1', DOCKERHIB_CREDENTIALS) {
                    // docker.image("${IMAGE_NAME}:${IMAGE_TAG}").push()
                }
            }
        }
    }
}

post {
    success {
        echo "image pushed to docker hub"
    }

    failure {
        echo "build failed"
    }
}
}
