pipeline{
    agent any
    stages {
        stage('Compile and Clean') {
          steps {
             sh "mvn clean compile"
           }
        }

       stage('deploy') {
          steps {
              sh "mvn package"
            }
         }
        
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t vitthng/foodboxspringapp .'
                }
            }
        }
        stage('Push Image To Hub'){
            steps{
                script{
                    sh 'docker login -u vitthng -p Gopvitthng@'
                    sh 'docker push vitthng/foodboxspringapp'
                }
            }
        }
        
    }
    
}
