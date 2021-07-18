pipeline {
    agent any
    triggers{
        pollSCM '* * * * *'
    }
    tools {
        maven 'maven'
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
        stage('Test'){
            steps{
                echo "Testing"
                sleep 10
            }
        }
    }
}
