pipeline {
  agent {
    docker {
      image 'schoolofdevops/carts-maven'
    }

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
        archiveArtifacts '**/target/*.jar'
      }
    }

  }
  tools {
    maven 'Maven3.6.3'
  }
}