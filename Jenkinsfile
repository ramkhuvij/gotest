node {
    def app

    stage('clone repository'){
        checkout scm
    }

    stage('Build docker image'){
        app = docker.build("gotest/version1")
    }
}