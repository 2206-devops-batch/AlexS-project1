pipeline {
    agent none
    stages {
        steps {
                RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz  && tar xzvf docker-17.04.0-ce.tgz  && mv docker/docker /usr/local/bin \  && rm -r docker docker-17.04.0-ce.tgz
            }
        stage('Build') {
            agent {
                docker {
                    image 'python'
                }
            }
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
    }
}