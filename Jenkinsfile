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
                sh 'pip install -r requirements-dev.txt'
                sh 'python3 -m pytest unittest.py'
            }
        }
        stage('Deploy') {
            steps{
                withCredentials([string(credentialsId: 'dockerHubpass', variable: 'dockerHubpassword')]) {
                    sh "docker login -u salyx21 -p ${dockerHubpassword}"
                }                 
                sh 'docker push salyx21/web-app:1.1'
            }
        }
    }
}
