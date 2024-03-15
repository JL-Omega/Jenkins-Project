pipeline {
    agent any

    environment {
        IMAGE_NAME        = 'protem'
        IMAGE_TAG         = '1.0.0'
        DOCKER_IMAGE_NAME = "${IMAGE_NAME}:${IMAGE_TAG}"
        DOCKER_HUB_USERNAME = credentials('docker_hub_usernsme')
        DOCKER_HUB_PASSWORD = credentials('docker_hub_password')
    }

    stages {
        stage("build-image") {
            steps {
                sh "docker build -t ${DOCKER_IMAGE_NAME} ."
            }
        }

        stage("test-image") {
            steps {
                sh """
                docker rm -f protem || true
                docker run --name protem -d -p 8085:80 ${DOCKER_IMAGE_NAME}
                sleep 10
                curl http://localhost:8085 | grep -i 'Protem'
                """
            }
        }
        
        stage("release-image") {
            steps {
                sh """
                docker login -u ${DOCKER_HUB_USERNAME} -p ${DOCKER_HUB_PASSWORD}
                docker tag ${DOCKER_IMAGE_NAME} ${DOCKER_HUB_USERNAME}/${DOCKER_IMAGE_NAME}
                docker push ${DOCKER_HUB_USERNAME}/${DOCKER_IMAGE_NAME}
                 """
            }
        }

        stage("deploy-app") {
            steps {
                echo 'Deploy'
                echo 'Good'
                echo 'bien'
            }
        }
    }
}