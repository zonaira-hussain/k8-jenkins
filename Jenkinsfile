pipeline{
        agent any
        stages{
            stage('Build Cluster'){
                steps{
                    bash setup.sh
                }
            }
            stage('Deploy MySQL Pod'){
                steps{
                    bash setup-mysql.sh 
                }
            }
        }
}
