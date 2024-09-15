pipeline {
    agent {
        docker {
            image 'maven:3.8.4-openjdk-17'
            args '-v $HOME/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                script {
                    // Compile et package l'application avec Maven
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

