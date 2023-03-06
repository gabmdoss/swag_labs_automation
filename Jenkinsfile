pipeline {
  agent any
  stages {
    stage('Dependencies'){
        steps{
            sh 'bundle install'
        }
    }
    stage('Testing') {
      steps {
        sh 'cucumber'
      }
    }
  }
  post {
    always {
      allure includeProperties: false, jdk: '', results: [[path: 'swag_labs_automation/logs']]
    }
  }
}