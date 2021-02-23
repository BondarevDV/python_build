pipeline {
    agent { label 'docker' }
    parameters{
        string(name: "NAME_IMAGE", defaultValue: "test-bdv", description: "Name image ", trim: true)
        string(name: "NUMBER_IMAGE", defaultValue: "last", description: "Number image ", trim: true)
    }
    stages{
        stage("Build image"){

            steps {
                        script { docker.build("${params.NAME_IMAGE}:${params.NUMBER_IMAGE}") }
            }
        }
        stage('Back-end-build') {
            // agent {
            //     docker { image "${params.NAME_IMAGE}:${params.NUMBER_IMAGE}" }
            // }
            steps {
                sh 'python3 --version'
            }
        }
    }
}