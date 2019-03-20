pipeline {
    agent any
    stages{
        stage('Build'){
            steps {
                sh 'maven clean package'
            }
            post {
                sucess {
                    echo 'Now Archiving...'
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }
    }
}