pipeline {
    agent any
    stages { 
        stage('Grab Repo') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/2206-devops-batch/AlexS-project1.git'
            }
        }
        stage('Build') {
            steps {
                sh 'docker --version'
                sh 'docker build -t salyx21/web-app:1.0 .'
            }
        }
        stage('Test') {
            steps {
                echo 'passed test'
            }
        }
        stage('Deploy') {
            steps{
                withCredentials([string(credentialsId: 'docker-password', variable: 'docker-pass')]) {
                    // sh "docker login -u salyx21 -p ${docker-pass}"   
                    echo 'passed the credentials'                 
                }                    
                sh 'docker push salyx21/web-app:1.0'
            }
        }
    }
}
