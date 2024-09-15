pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Compile et package l'application
                    sh 'mvn clean package'
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Construire l'image Docker
                    sh 'docker build -t hello-world-image .'
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    // Exécuter un conteneur Docker à partir de l'image
                    sh 'docker run -d -p 8080:8080 hello-world-image'
                }
            }
        }
    }
}
