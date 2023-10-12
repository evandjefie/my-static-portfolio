pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    KUBECONFIG = credentials('minikubeconfig')
  }
  stages {
    stage('clone') {
      steps {
        sh 'git clone https://github.com/evandjefie/my-static-portfolio.git app'
      }
    }    
    stage('Test kubectl') {
      steps {
        sh 'kubectl version --client'
      }
    }
    stage('Deploy App') {
      steps {
        sh '''
          cd app      
          kubectl apply -f k8s/static-app-dpl.yaml
          kubectl apply -f k8s/static-app-svc.yaml
        '''
      }
    }
  }
  // post {
  //   always {
  //       sh '''
  //         cd app
  //         kubectl delete -f k8s/static-app-dpl.yaml
  //         kubectl delete -f k8s/static-app-svc.yaml
  //       '''
  //       }
  // }
}