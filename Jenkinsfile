pipeline {
  agent any
  stages {
    stage('version') {
      steps {
        sh 'ruby --version'
      }
    }
    stage('login') {
      steps {
        sh 'login.rb'
      }
    }
  }
}