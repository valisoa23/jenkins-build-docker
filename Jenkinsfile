node{
  def app
    stage('Clone'){
      checkout scm
    }
    stage ('Initialize'){
      def dockerHome = tool 'myDocker'
      env.PATH = "${dockerHome}/bin:${env.PATH}"
    }
    stage('Build image'){
      app = docker.build("valisoa/nginx")
    }
    stage('Run image'){
      docker.image('valisoa/nginx').withRun('-p 8080:80'){ c ->
        sh 'docker ps'
        sh 'curl localhost'
      }
    }
}
