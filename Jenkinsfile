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
	#	stage('Checkout Code') {
	#		steps {
	#			git branch: 'main', url: "https://github.com/dom-sag/Jenkins-Proj.git"
	#		}
	#	}

		stage('Build Docker Image') {
			steps {
				script {
					sh "docker build -t ${params.DOCKER_IMAGE_NAME} . "
				}
			}
		}
		
	}

	#stage('Deploy Container on EC2') {
	#	steps {
	#		sshagent (credentials: [env.SSH_CREDENTIALS]) {
	#			sh """
	#			ssh -0 StrictHostKeyChecking=no ${params.EC2_HOST} '
         #                         docker stop ${params.DOCKER_IMAGE_NAME} || true &&
	#			  docker rm ${params.DOCKER_IMAGE_NAME} || true &&
         #                         docker run -d --name ${params.DOCKER_IMAGE_NAME} -p 80:3000 ${params.DOCKER_IMAGE_NAME}
	#			  '
          #                        """
	#		}
	#	}

	#}


	#}

#}
	
