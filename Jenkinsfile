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
		    withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-static', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
		    sh """
			mkdir ~/.aws
			echo "[default]" >~/.aws/credentials
			echo "[default]" >~/.boto
			echo "aws_access_key_id - ${AWS_ACCESS_KEY_ID}">>~/.boto
			echo "aws_secret_access_key - ${AWS_SECRET_ACCESS_KEY}">>~/.boto
			echo "aws_access_key_id - ${AWS_ACCESS_KEY_ID}">>~/.aws/credentials
			echo "aws_secret_access_key - ${AWS_SECRET_ACCESS_KEY}">>~/.aws/credentials
		    """
		    }
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
