pipeline {

  agent {
    label 'SLAVE'
  }

  environment {
    NEXUS=credentials('Nexus')
    MAJOR_VERSION="1.0"
  }
  stages {

    stage('Build Package') {
      steps {
        sh '''
          mvn package
          cp target/*dependencies.jar shipping-service-${MAJOR_VERSION}-${BUILD_NUMBER}.jar
        '''
      }
    }

    stage('Upload To Nexus') {
      steps {
        sh '''
          curl -f -v -u $NEXUS --upload-file shipping-service-${MAJOR_VERSION}-${BUILD_NUMBER}.jar https://nexus.devopsb46.online/repository/user-service/shipping-service-${MAJOR_VERSION}-${BUILD_NUMBER}.jar
        '''
      }
    }

  }
}