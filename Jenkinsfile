pipeline{
            //This line is to tell Jenkins which agent should run the pipeline
            agent { label '<agent-label>' } 
            stages{
                stage('Guthub') {
                    steps {
                        git 'https://github.com/visweswars/quiz.git'
                    }
                }
                stage('Fetch'){ 
                    steps{
                        sh"${env.SOURCE}; dart pub get" 
                    }
                } 
                stage('Build'){
                    steps{
                        sh"${env.SOURCE}; dart run lib/main.dart"
                    }
                }
                stage('Lint'){
                    steps{
                        sh"${env.SOURCE}; dart analyze"
                    }
                }
                stage('Test'){
                    steps{
                        sh"${env.SOURCE}; flutter test"
                    }
                }
                stage('Clean'){
                    steps{
                        cleanWs deleteDirs: true, notFailBuild: true            
                    }
                } 
            }
        }        
