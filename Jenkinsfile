pipeline {
    agent any

    parameters{
	    string(name: "docker-ec2", description: "docker ec2 instance")
	    string(name: "54.210.254.30", defaultvalue: "ubuntu@54.210.254.30", description: "ec2 host")

    }
     environment {
	     SSH_CREDENTIALS = "docker"
     }

	stages {
		stage('Checkout Code') {
			steps {
				git url: "
		

	stage('build Docker Image') {
		steps {
			script {
				sh "docker build -t ${params.DOCKER_IMAGE_NAME} ."
			}
		}

	}
	stage('Deploy Container on EC2') {
		steps {
			sshagent
