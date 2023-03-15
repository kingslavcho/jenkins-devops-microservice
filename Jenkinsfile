//Scripted pipeline approach
//node {
// 	echo "Build1"
// 	echo "Test"
// 	echo "Integration Test"
// }

//Declarative pipeline
pipeline{
	agent any
	stages {
		stage("build"){
			steps{
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
}