pipeline {
    agent any
    tools {
        maven 'localMaven'
        jdk 'localJDK'
    }
    stages{
        stage('Build'){
            steps {
                sh 'mvn clean package'
            }
            post {
                success {
                    echo 'Now Archiving...'
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }
        stage ('Deploy to Staging') {
            steps {
                build job: 'deploy-to-staging'
            }
        }
        stage ('Deploy to prod') {
            steps {
                timeout(time:5, unit:'DAYS'){
                    input message: 'Aprovado para Prodution Deploy?', submitter: 'pgomes'
                }
                build job: 'deploy-to-prod'
            }
            post {
                success {
                    echo 'Code deployed to prod'
                }
                failure {
                    echo 'Deploy failed'
                }
            }
        }
    }
}