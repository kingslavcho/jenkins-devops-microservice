//Scripted pipeline approach
//node {
// 	echo "Build1"
// 	echo "Test"
// 	echo "Integration Test"
// }

//Declarative pipeline
pipeline{
	// agent any
	// agent { docker { image 'maven:3.6.3-jdk-8'}}
	agent { docker { image 'node:13.8'}}
	stages {
		stage("build"){
			steps{
				sh 'node --version'
				echo "Build1"
			}
		}
		stage("test"){
			steps{
				echo "Test"
			}
		}
		stage("integration test"){
			steps{
				echo "Integration Test"
			}
		}
	} 
	
	post {
		always {
			echo 'I am awsome. I run always'
		}
		success {
			echo 'I run when successful'
		}
		failure {
			echo 'I run when i fail'
		}
		// unstable {

		// }
		// changed{

		// }

	}
}