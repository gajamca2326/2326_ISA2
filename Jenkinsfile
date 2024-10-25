pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/<gajamca2326>/2326_ISA2.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t roll_no_image .'
                }
            }
        }
        stage('Cleanup Old Container') {
            steps {
                script {
                    sh 'docker rm -f roll_no || true'
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d --name roll_no roll_no_image'
                }
            }
        }
    }
}
