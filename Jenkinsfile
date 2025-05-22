pipeline {
    agent any

    parameters{
	    string(name: 'DOCKER_IMAGE_NAME', defaultvalue: 'docker-ec2', description: 'docker ec2 instance')
	    string(name: 'EC2_HOST', defaultvalue: 'ubuntu@54.210.254.30', description: 'ec2 host')

    }
     environment {
	     SSH_CREDENTIALS = "docker"
     }

	stages {
		stage('Checkout Code') {
			steps {
				git url: "https://github.com/dom-sag/Jenkins-Proj.git"
			}
		}

		stage('Build Docker Image') {
			steps {
				script {
					sh "docker build -t ${params.DOCKER_IMAGE_NAME} . "
				}
			}
		}
		
		

	stage('Deploy Container on EC2') {
		steps {
			sshagent (credentials: [env.SSH_CREDENTIALS]) {
				sh """
				ssh -0 StrictHostKeyChecking=no ${params.EC2_HOST} '
                                  docker stop ${params.DOCKER_IMAGE_NAME} || true &&
				  docker rm ${params.DOCKER_IMAGE_NAME} || true &&
                                  docker run -d --name ${params.DOCKER_IMAGE_NAME} -p 80:3000 ${params.DOCKER_IMAGE_NAME}
				  '
                                  """
			}
		}

	}


	}

}
	
