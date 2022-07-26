pipeline {
    agent any
    environment {
        registry = "9492453554/myimage11"
        registryCredential = 'DOCKER_HUB'
        dockerImage = ''
    }
    stages {
        stage('scm') {
            steps {
                git branch: 'mahaprastanam', url: 'https://github.com/yadavallimallikharjua/spring-petclinic.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package '
            }
        }
        stage('Build image') {
            steps {
                script {
                    dockerImage = docker.build registry 
                }
            }
        }
        stage('push our image') { 
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Deploy App') {
            steps {
                script {
                kubernetesDeploy(configs: "myimage11.yaml", kubeconfigId: "k8_config")
                }
            }
        }
    }
}
