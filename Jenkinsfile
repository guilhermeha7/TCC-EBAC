pipeline {
    agent any
    stages {
        stage('Instalar Dependências - Testes Web') {
            steps {
                dir('testes-automatizados/web-ui') {
                    // Instala as dependências do primeiro projeto
                    bat 'npm install'
                }
            }
        }
        stage('Executar Testes - Testes Web') {
            steps {
                dir('testes-automatizados/web-ui') {
                    // Executa os testes do primeiro projeto
                    bat 'set NO_COLOR=1 && npx cypress run'
                }
            }
        }
        stage('Instalar Dependências - Testes de API') {
            steps {
                dir('testes-automatizados/api') {
                    // Instala as dependências do segundo projeto
                    bat 'npm install'
                }
            }
        }
        stage('Executar Testes - Testes de API') {
            steps {
                dir('testes-automatizados/api') {
                    // Executa os testes do segundo projeto
                    bat 'set NO_COLOR=1 && npx cypress run'
                }
            }
        }
    }
}
