pipeline {
  agent none
  stages {
    stage('build') {
      agent {
        docker {
          image 'schoolofdevops/carts-maven'
        }

      }
      steps {
        echo 'This is build job'
        sh 'mvn clean compile'
      }
    }

    stage('test') {
      agent {
        docker {
          image 'schoolofdevops/carts-maven'
        }

      }
      steps {
        echo ' This is test job'
        sh 'mvn test'
      }
    }

    stage('package') {
      agent {
        docker {
          image 'schoolofdevops/carts-maven'
        }

      }
      steps {
        echo ' Creation of artificats '
        sh 'mvn -DskipTests package'
        archiveArtifacts '**/target/*.jar'
      }
    }

    stage('Docker Build and Publish') {
      steps {
        script {
          docker.withRegistry('https://index.docker.io/v1/', 'dockerlogin') {
            def dockerImage = docker.build("jrkasinat/carts:v${env.BUILD_ID}", "./")
            dockerImage.push()
            dockerImage.push("latest")
          }
        }

      }
    }

  }
  tools {
    maven 'Maven3.6.3'
  }
}