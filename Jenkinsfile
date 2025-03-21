pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Construyendo la aplicación...'
                sh 'docker build -t my-app:latest .'
            }
        }
        stage('Test') {
            steps {
                echo 'Ejecutando pruebas...'
                sh 'docker run my-app:latest python -m pytest'  
            }
        }
        stage('Deploy') {
            steps {
                echo 'Desplegando la aplicación...'
                sh 'docker run -d -p 5000:5000 --name my-app my-app:latest'
            }
        }
    }

    post {
        success {
            echo '¡Pipeline completado con éxito!'
        }
        failure {
            echo 'Pipeline fallido. Revisa los logs.'
        }
    }
}