node{
  def app
    stage('Clone'){
      checkout scm
    }
    stage('Build image'){
      app = docker.build("valisoa/nginx")
    }
    stage('Run image'){
      docker.image('valisoa/nginx').withRun('-p 80:80'){ c ->
        sh 'docker ps'
        sh 'curl localhost'
      }
    }
}
