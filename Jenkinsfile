pipeline {
  agent { node { label 'Built-In Node' } }

   stages {
      stage('Clone Sources') {
        steps {
          checkout scm
        } 
      }
      stage('Build') {
         steps {
            echo 'Build process..'
		echo bat(returnStdout: true, script: 'set')
         }
      }
      stage('Test') {
         steps {
            echo 'Test process..'
	    bat 'exit 0'
         }
      }
      stage('Deploy') {
         steps {
            echo 'Deploy process..'           
         }
      }
      
   }
   post {   
		always {
			bat 'echo %PATH%'   
		}   
		success {   
			bat 'echo "BUILD_NUMBER=$BUILD_NUMBER success" >> report' 
		}   
		failure {
			bat 'echo "BUILD_NUMBER=$BUILD_NUMBER failed" >> report'   
		}   
		unstable {   
			echo 'I will only get executed if this is unstable'   
		}   
   }
}
