pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from Git
                git 'https://github.com/visweswars/quiz.git'
            }
        }
        
        stage('Flutter Build') {
            steps {
                // Configure Flutter SDK (ensure it's installed in Jenkins Global Tool Configuration)
                def flutterHome = tool 'Flutter'
                env.PATH = "${flutterHome}/bin:${env.PATH}"
                
                // Install dependencies
                sh 'flutter pub get'
                
                // Build the Flutter app (Android APK)
                sh 'flutter build apk'
            }
        }
        
        stage('Unit Tests') {
            steps {
                // Run unit tests
                sh 'flutter test'
            }
        }
        
        stage('Deploy') {
            steps {
                // Add deployment steps here (e.g., copying APK to a server, deploying to app stores)
            }
        }
    }
    
    post {
        always {
            // Clean up any resources or temporary files
        }
        
        success {
            // Notify success
            echo 'Flutter app build and tests passed successfully!'
        }
        
        failure {
            // Notify failure
            echo 'Flutter app build or tests failed!'
        }
    }
}
