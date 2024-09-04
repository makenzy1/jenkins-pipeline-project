// This Jenkinsfile defines the CI/CD pipeline

// Jenkinsfile

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    echo 'Building...'
                    sh 'pip install -r requirements.txt'
                        }
                    }
                }
        stage('Test') {
            steps {
                script {
                    echo 'Testing...'
                    sh 'python -m unittest discover -s tests'
                       }
                    }
                }
        stage('Deploy') {
            steps {
                script {
                    echo 'Deploying...'
                    sh 'docker build -t jenkins-pipeline-project .'
                        }
                    }
                }
            }
        }