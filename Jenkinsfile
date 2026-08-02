pipeline {

    agent any

    options {
        disableConcurrentBuilds()
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                url: 'https://github.com/<your-username>/<repo>.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Manager Approval') {
            steps {
                input message: 'Approve Terraform Apply?'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }
}
