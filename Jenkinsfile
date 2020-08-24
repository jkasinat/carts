pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        echo 'This is build job'
        sh 'mvn compile'
      }
    }

    stage('test') {
      steps {
        echo ' This is test job'
        sh 'mvn clean test'
      }
    }

    stage('package') {
      steps {
        echo ' Creation of artificats '
        sh 'mvn package -DskipTests'
      }
    }

  }
  tools {
    maven 'Maven3.6.3'
  }
}