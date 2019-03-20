pipeline {
    agent any
    stages{
        stage('Build'){
            steps {
                withMaven(
                    maven : 'localMaven',
                    mavenSettingsConfig: 'my-maven-settings',
                    mavenLocalRepo: '.repository'){
                sh 'mvn clean package'
                }
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