pipeline {
  agent any
  stages{
    stage('clone') {
      steps {
        sh 'git clone -b features https://github.com/evandjefie/my-static-portfolio.git app'
      }
    }	
    stage('deploy') {
      steps {
        withCredentials([[
          $class: 'AmazonWebServicesCredentialsBinding',
          credentialsId: 'aws-jenkins-test',
          accessKeyVariable: 'AWS_ACCESS_KEY_ID',
          secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
            sh 'aws s3 sync app/ s3://evd-00-my-static-portfolio'
          } 
      }
    }
  }
}
