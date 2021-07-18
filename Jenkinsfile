pipeline {
    agent any
    stages {
        stage('build'){
            steps{
                sh 'mvn clean'
                sh 'mvn install'
                sh 'mvn package'
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
