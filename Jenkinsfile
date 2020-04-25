pipeline {
    agent any
    environment {
        registry = "xuren71/devops-capstone"
        registryCredential = 'dockerhub'
    }
    stages {
        stage('Lint python app') {
            steps {
                sh 'pylint --disable=R,C,E flasgger-app/app.py'
            }
        }
        stage('Lint Dockerfile') {
            steps {
                sh 'hadolint --ignore DL3013 Dockerfile'
            }
        }
        stage('Build Docker image') {
            steps {
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage('Push image to Dockerhub') {
            steps {
                script {
                    docker.withRegistry( '', registryCredential ) {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Deploy image to EKS') {
            steps {
                sh 'kubectl set image deployment/udacity-deployment udacity=xuren71/devops-capstone' + ":$BUILD_NUMBER"
            }
        }
    }
}
