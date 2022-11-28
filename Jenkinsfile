pipeline {
    agent any
    tools {nodejs "node"}

    stages {
        stage('Build') {
            steps {
                echo 'Hello World'
                sh 'npm install'
                sh 'node server.js'
                
            }
        }
    }
}
