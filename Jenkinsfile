pipeline {
  agent {
    label 'SLAVE'
  }
  environment {
    NEXUS=credentials('Nexus')
    MAJOR_VERSION="1.0"
  }
  stages{
    stage('Build package') {
      steps {
        sh '''
      mvn package
      cp target/*dependencies.jar shipping-service-${MAJOR_VERSION}-${BUILD_NUMBER}.jar
      '''
      }
    }
    stage('Upload to Nexus') {
      steps {
        sh '''
      cd target
      curl -f -v -u $NEXUS --upload-file target/shipping-service-${MAJOR_VERSION}-${BUILD_NUMBER}.jar https://nexus.devops46.online/repository/shipping-service/shipping-service-${MAJOR_VERSION}-${BUILD_NUMBER}.jar

      '''
      }
    }
  }
}