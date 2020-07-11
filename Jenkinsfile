pipeline {
	 agent any
	 stages {
		stage('Lint HTML') {
              		steps {
                  		sh 'tidy -q -e *.html'
              		}
		}
		stage('AWS Credentials') {
		  steps {
		    withAWS(region:'us-east-1',credentials:'aws-static')
		  }
		}
 		
	 	stage('Create EC2 instance in AWS.') {
			       steps {
			       	     sh 'echo "Create instances in AWS"'
				     ansiblePlaybook playbook: 'main.yaml', inventory: 'inventory'
				}
		}
	}
}
