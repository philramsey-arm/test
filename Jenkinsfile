pipeline {
  agent any
  stages {
    stage('Script') {
      steps {
        sh '''#!/usr/bin/env bash
whoami
#cat avk.bash | ssh phiram01@dsg-hive-d9000-01.cambridge.arm.com
ssh -i /home/phiram01/.ssh/id_rsa phiram01@dsg-hive-d9000-01.cambridge.arm.com
hostname
exit

'''
      }
    }

  }
}