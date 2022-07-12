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
                sh 'docker build -t salyx21/web-app:1.3 .'
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
                sh 'docker push salyx21/web-app:1.3'
            }
        }
    }

    post {
        always {
            discordSend description: '', enableArtifactsList: true, footer: '', image: '', link: 'http://ec2-3-144-181-33.us-east-2.compute.amazonaws.com:8080/', result: currentBuild.currentResult, scmWebUrl: '', showChangeset: true, thumbnail: '', title: 'KubBot 2.0', webhookURL: 'https://discord.com/api/webhooks/996223837597335582/8QzuGRa-j8JfmaUVpEmd7ibGIj6ydH7ULeYwg2ISiz_5OJ3iHJUsRGGTi5Gp8wCT3dD5'
        }
    }
}
