pipeline{
        agent any
        stages{
            stage('Build Cluster'){
                steps{
                    sh ''' #!/bin/bash
                          bash setup.sh
                    '''      
                }
            }
            stage('Deploy MySQL Pod'){
                steps{
                    sh ''' #!/bin/bash
                          bash setup-mysql.sh
                    '''                      
                }
            }
        }
}
