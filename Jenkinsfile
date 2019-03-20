pipeline {
    agent any
    stages{
        stage('Build'){
            def mvnHome = tool name: 'localMaven', type: 'maven'
            steps {
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