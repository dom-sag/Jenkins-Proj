pipeline {
    agent any

    stages {
        stage('lint and format') {
            stages {
	        stage('linting'){
	           steps {
	               echo "this code is nested stage"
                }
            }
        }

                 stage('formating') {
                    steps {
                       echo 'this is formating...'
               
            }
        }
    }
}
}
