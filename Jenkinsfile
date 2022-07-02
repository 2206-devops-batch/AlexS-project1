pipeline {
    agent none
    stages {       
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/2206-devops-batch/AlexS-project1.git'

                // Run env.
                sh 'python -m venv .venv'               
            }
        }
        stage('Test') {
            steps {
                echo "passed test"
            }
        }
        stage('Deploy') {
            steps {
                sh 'python webapp.py'
            }
        }
    }
}
