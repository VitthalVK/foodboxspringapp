pipeline{
    agent any
    tools{
        maven 'maven_3_0_5'
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/VitthalVK/foodboxspringbootApi.git']]])
                sh 'mvn clean install'
            }
        }
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

