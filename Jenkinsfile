pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/2206-devops-batch/AlexS-project1.git'

                // Run env.
                sh "python -m venv .venv"

                //Run pip install
                sh "pip install -r requirements.txt"                
            }
        }
    }
}