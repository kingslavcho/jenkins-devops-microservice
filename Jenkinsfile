//Scripted pipeline approach
//node {
// 	echo "Build1"
// 	echo "Test"
// 	echo "Integration Test"
// }

//Declarative pipeline
pipeline{
	agent any
	// agent { docker { image 'maven:3.6.3-jdk-8'}}
	// agent { docker { image 'node:13.8'}}
	environment {
		dockerHome = tool 'Mydocker'
		mavenHome = tool 'myMaven'
		PATH = "$dockerHome/bin:$mavenHome/bin:$PATH"
	}
	stages {
		stage("checkout"){
			steps{
				sh 'mvn --version'
				sh 'docker version'
				echo "Build1"
				echo "$PATH"
				echo "Build number - $env.BUILD_NUMBER"
				echo "BUILD_ID - $env.BUILD_ID"
				echo "JOB_NAME - $env.JOB_NAME"
				echo "BUILD_TAG - $env.BUILD_TAG"
				echo "BUILD_URL - $env.BUILD_URL"
			}
		}
		stage("Compile"){
			steps {
				sh "mvn clean compile"
			}
		}

		stage("test"){
			steps{
				sh "mvn test"
			}
		}
		
		stage("integration test"){
			steps{
				sh "mvn failsafe:integration-test failsafe:verify"
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