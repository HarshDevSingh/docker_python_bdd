pipeline {
agent { dockerfile true }
  stages {
    stage("build") {
      steps {
        sh """
          docker build python-bdd .
        """
      }
    }
    stage("run") {
      steps {
        sh """
          docker run python-bdd
        """
      }
    }
  }
}