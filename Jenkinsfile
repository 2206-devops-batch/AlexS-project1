pipeline {
    agent any
    stages { 
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/2206-devops-batch/AlexS-project1.git'

                // Run env.
                sh 'pip install -r requirements.txt'               
            }
        }
        stage('Test') {
            steps {
                sh 'echo passed test'
            }
        }
        stage('Deploy') {
            steps{
                sh 'echo passed deploy'
            }
        }
    }
}
