pipeline {
    agent any
    triggers{
        pollSCM '* * * * *'
    }
    tools {
        maven 'M2_HOME'
    }
    stages {
        stage('build'){
            steps{
                sh 'mvn clean'
                sh 'mvn install'
                sh 'mvn package'
                sh 'mvn test'
            }
        }
        stage('Deploy to Tomcat'){
            steps{
                deploy adapters: [tomcat9(credentialsId: 'DeployerID', path: '', url: 'http://192.168.0.38:8080')], contextPath: null, war: '**/*.war'
            }
        }
    }
}
