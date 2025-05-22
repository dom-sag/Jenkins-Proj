pipeline {
    agent any

   parameters {
    string(name: 'DOCKER_IMAGE_NAME', defaultValue: 'docker-ec2', description: 'Docker image name for EC2 deployment')
    string(name: 'EC2_HOST', defaultValue: 'ubuntu@54.210.254.30', description: 'EC2 instance public IP or hostname')

    }
     environment {
	     SSH_CREDENTIALS = "docker"
     }

	stages {
		
	       stage('Build Docker Image') {
			steps {
				script {
					sh "docker build -t ${params.DOCKER_IMAGE_NAME} . "
				}
			}
		}
		
	}

	
