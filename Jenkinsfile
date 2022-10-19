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
      docker.image('valisoa/nginx').withRun('-p 9001:80 nginx'){ c ->
        sh 'docker ps'
        sh 'curl localhost"
      }
    }
}
