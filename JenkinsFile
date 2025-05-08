pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Print YAML') {
            steps {
                echo 'Printing contents of testing.yaml...'
                sh 'cat testing.yaml'
            }
        }
    }
}
