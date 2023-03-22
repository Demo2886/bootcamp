pipeline {
    agent any
    stages {	
		stage('Building image') {
			steps{
			script {
				docker.build("jokercat2886/boot:latest")
			}
			}
		}
	
		stage('Test image') {
			steps {
			sh "docker run -p 8000:8000 jokercat2886/boot:latest"
		sleep 5
		sh "curl -s -o /dev/null -w "%{http_code}" http://127.0.0.1:8000"
			}
		}	  
	}
}
