pipeline {
    agent any
    tools {
        maven 'maven'
    }
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}/bin/mvn"
                '''
            }
        }
        stage('SCM Checkout') {
            steps {
            // Get source code from Gitlab repository
                checkout([$class: 'GitSCM', branches: [[name: '*/patch-1']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: '']], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'github-cred', url: 'https://github.com/shareef242/sample-java.git']]])
            }
        }
        //stage('SCM Checkout') {
         //  git branch: 'dev', credentialsId: '39504cb7-8286-4f57-94fe-e2544d0b86a1', 
          // url: 'https://github.com/shareef242/sample-java.git'
        //}
        stage('Mvn Package') {
            steps {
                sh 'mvn -B -DskipTests clean package -e'
            }
        }      
    }
}
