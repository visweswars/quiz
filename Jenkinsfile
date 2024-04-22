pipeline {
    agent any
    
    environment {
        FLUTTER_HOME = tool 'C:\flutter'
        PATH = "${env.FLUTTER_HOME}/bin:${env.PATH}"
    }
    
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
