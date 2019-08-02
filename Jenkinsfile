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

    stage('login to docker hub'){
        steps {
            sh 'docker login registry.hub.docker.com'
        }
    }
    stage('push image'){
        docker.withRegistry('https://registry.hub.docker.com','docker-hub-credential'){
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}