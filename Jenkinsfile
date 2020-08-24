pipeline {
  agent any
  
  tools {
    maven 'Maven3.6.3'
  }
  
  
  stages {
    stage('build') {
      steps {
        echo 'This is build job'
        sh 'mvn clean compile'
           } 
    }

    stage('test') {
      steps {
        echo ' This is test job'
        sh 'mvn test'
            }
    }

    stage('package') {
      steps {
        echo ' Creation of artificats '
        sh 'mvn -DskipTests package'
            }
    }

  }
  
}
