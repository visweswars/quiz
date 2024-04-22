pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from Git
                git 'https://github.com/visweswars/quiz.git'
            }
        }
        
        stage('Build') {
            steps {
                // Install dependencies
                sh 'flutter pub get'
                
                // Build the Flutter app
                sh 'flutter build'
            }
        }
        
        stage('Run') {
            steps {
                // Run the Flutter app
                sh 'flutter run'
            }
        }
    }
}
