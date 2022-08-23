pipeline{
    agent any
      stages{
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t reponame/foodboxspringbootApi .'
                }
            }
        }
        stage('Push Image To Hub'){
            steps{
                script{
                    sh 'docker login -u docker_user_Id -p password'
                    sh 'docker push reponame/foodboxspringbootApi'
                }
            }
        }
        
    }
} 

