pipeline {
  agent { label "linux" }
  stages {
    stage("build") {
      steps {
        sh """
          docker build -t python-bdd .
        """
      }
    }
    stage("run") {
      steps {
        sh """
          docker run --rm python-bdd
        """
      }
    }
  }
}