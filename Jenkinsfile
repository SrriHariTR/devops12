pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Maven Build') {
            steps {
                bat 'mvn -B clean package'
            }
        }

        stage('Test') {
            steps {
                bat 'mvn -B test'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t maven-docker-app:latest .'
            }
        }

        stage('Docker Test') {
            steps {
                bat 'docker run --rm maven-docker-app:latest'
            }
        }
    }

    post {
        success {
            echo 'All pipeline stages completed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check Console Output.'
        }
    }
}
