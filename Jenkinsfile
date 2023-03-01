pipeline {
  agent any
  stages {
    stage('Dependencies'){
        steps{
            sh 'bundle install'
        }
    }
    stage('login') {
      steps {
        sh 'cucumber'
      }
    }
  }
}