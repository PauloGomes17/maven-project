pipeline {
    agent any
    stages{
        stage('Build'){
            steps {
                def mvnHome = tool name: 'localMaven', type: 'maven'
                sh "${mvnHome}/bin/maven clean package"
            }
            post {
                success {
                    echo 'Now Archiving...'
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }
    }
}