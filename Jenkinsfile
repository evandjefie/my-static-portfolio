pipeline {
	agent any
	stages{
    stage('clone'){
      checkout scm
    }
		stage('deploy') {
			steps {
				withCredentials([[
					$class: 'AmazonWebServicesCredentialsBinding',
					credentialsId: 'aws-jenkins-test',
					accessKeyVariable: 'AWS_ACCESS_KEY_ID',
					secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
						sh 'aws s3 sync my-static-portfolio/ s3://evd-00-my-static-portfolio'						
					} 

		    }
		  }
  }
}
