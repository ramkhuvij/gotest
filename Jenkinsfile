node {
    def app

    stage('clone repository'){
        checkout scm
    }

    stage('Build docker image'){
        app = docker.build("gotest/version1")
    }

    stage('Test image'){
        app.inside{
            sh 'echo "test passed"'
        }
    }

    stage('push image'){
        docker.withRegistry('https://registry.hub.docker.com','docker-hub-credential'){
            app.push("gotest/version1")
            app.push("latest")
        }
    }
}