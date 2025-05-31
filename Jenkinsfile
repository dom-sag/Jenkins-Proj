pipeline {
    agent any
    
    tools {
        // Intsall the Maven Version congired .
        maven m399
    }
    
    stages {
        stage('Echo Version') {
            steps {
                sh 'echo Print maven Verion'
                sh 'mvn -version'
                
            }
    }
    stage('Build') {
        steps {
            //Get some code from respository
            // git branch: 'main', url: 'https://https://github.com/dom-sag/Jenkins-Proj.git
            sh "mvn lean package -DksipTests=true"
        }
    }
   stage('Unit Test') {
     steps {
        script {
          for (int i = 0; i<60; i++) {
               echo "${i + 1}"
                sleep 1
             }
               sh "mvn test"
}
}
}
}
}
