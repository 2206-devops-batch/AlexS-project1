pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'python'
                }
            }
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/2206-devops-batch/AlexS-project1.git'

                //install python
                sh "pip install python"

                // Run env.
                sh """
                python -m venv .venv
                pip install -r requirements.txt
                """                
            }
        }
        stage('Test'){

        }
        stage('Deploy'){
            sh """
            docker-compose docker-compose.yaml up 
            """
        }
        post {
            success{

            }
        }
    }
}