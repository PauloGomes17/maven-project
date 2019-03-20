pipeline {
    agent any
    stages{
        stage('Build'){
            def mvnHome = tool name: 'localMaven', type: 'maven'
            sh "${mvnHome}/bin/mvn clean package"
            post {
                success {
                    echo 'Now Archiving...'
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }
    }
}