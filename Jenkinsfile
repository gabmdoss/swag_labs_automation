pipeline {
  agent any
  stages {
    stage('version') {
      steps {
        sh 'ruby --version'
      }
    }
    stage('preparing'){
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