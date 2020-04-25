pipeline {
    agent any
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
        stage('Upload to Dockerhub') {
            steps {
                sh 'echo TODOO'
            }
        }
    }
}
