pipeline {
    agent any
    stages {
        stage('Lint python app') {
            steps {
                sh 'pylint --disable=R,C flasgger-app/app.py'
            }
        }
        stage('Lint Dockerfile') {
                sh 'hadolint --ignore DL3013 Dockerfile'
        }
        stage('Upload to Dockerhub') {
            sh 'echo TODOO'
        }
    }
}
