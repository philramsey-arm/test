pipeline {
  agent any
  stages {
    stage('Script') {
      steps {
        withCredentials([sshUserPrivateKey(credentialsId: "ac24c4d8-a49b-487a-a606-0329d2a0e251", keyFileVariable: 'keyfile')]) {
          sh '''#!/usr/bin/env bash
#cat avk.bash | ssh phiram01@dsg-hive-d9000-01.cambridge.arm.com
          ssh -i ${keyfile} phiram01@dsg-hive-d9000-01.cambridge.arm.com
          hostname
          exit
          '''
        }
      }
    }
  }
}