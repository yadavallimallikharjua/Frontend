pipeline {
    environment {
        registry = "9492453554/myimage9"
        registryCredential = 'DOCKER_HUB'
        dockerImage = ''
    }
    agent any
    tools {
        maven 'MVN_version'
    }
    stages {
        stage('scm') {
            steps {
                git branch: 'main', url: 'https://github.com/yadavallimallikharjua/spring-petclinic.git'
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
                kubernetesDeploy(configs: "myimage9.yaml", kubeconfigId: "k8_config")
                }
            }
        }
    }
}
