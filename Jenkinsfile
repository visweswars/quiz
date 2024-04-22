pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'flutter pub get'
                sh 'flutter build apk' // or 'flutter build ios' for iOS
            }
        }
        stage('Test') {
            steps {
                sh 'flutter test'
            }
        }
        stage('Deploy') {
            steps {
                // Add deployment steps here (e.g., copying artifacts to a server)
            }
        }
    }
}
