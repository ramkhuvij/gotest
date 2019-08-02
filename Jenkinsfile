node {
    def app

    stage('clone repository'){
        checkout scm
    }

    stage('Build docker image'){
        app = docker.build("ramkhuvij/gotest")
    }

    stage('Test image'){
        app.inside{
            sh 'echo "test passed"'
        }
    }
   
    stage('push image'){
        docker.withRegistry('https://registry.hub.docker.com','docker-hub-credential'){
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}