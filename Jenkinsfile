pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                bat 'dotnet build src/MyWindowsService.sln --configuration Release'
            }
        }
        stage('Test') {
            steps {
                bat 'dotnet test src/UnitTests/UnitTests.csproj'
            }
        }
        stage('Deploy') {
            steps {
                powershell '.\\scripts\\deploy.ps1 -SourcePath "./bin/Release/net6.0/MyWindowsService.exe" -DestinationPath "C:/DeployedServices"'
            }
        }
    }
}
