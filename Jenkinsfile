pipeline {
    agent any  
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    bat "docker build -t gajamca2326/2326_isa2 ."
                }
            }
        }
        stage('Delete Existing Container') {
            steps {
                script {
                    bat "docker rm -f 2326 || exit 0"
                }
            }
        }
        stage('Create and Run Docker Container') {
            steps {
                script {
                    bat "docker run -d --name 2326  gajamca2326/2326_isa2"
                }
            }
        }
    }
}

