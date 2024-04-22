```groovy
pipeline {
  agent any
  
  stages {
    stage('Checkout') {
      steps {
        // Checkout source code from repository
        git 'https://github.com/visweswars/quiz.git'
      }
    }
    
    stage('Install Dependencies') {
      steps {
        // Run flutter pub get command to install dependencies
        sh 'flutter pub get'
      }
    }

    stage('Build Android APK') {
      steps {
        // Build release APK
        sh 'flutter build apk --release'
        
        // Archive artifacts (optional)
        archiveArtifacts artifacts: '**/*.apk', fingerprint: true
      }
    }

    stage('Test') {
      steps{
      	// Run tests using flutter test command
      	sh 'flutter test'
      }      
    }

  }
}
```
