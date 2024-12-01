            #language: pt

            Funcionalidade: Login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Dado que eu esteja na tela de login

            Esquema do Cenário: Deve fazer login usando usuário e senha válidos
            Quando o usuário inserir um <nomeUsuario> e uma <senha> válidos de uma conta ativa
            E clicar no botão "Login"
            Então o login deve ser bem-sucedido
            Exemplos:
            | nomeUsuario           | senha      |
            | "joaoteste@teste.com" | "teste123" |
            | "joaoteste123"        | "teste123" |
            | "11122233344"         | "teste123" |

            Esquema do Cenário: Deve exibir uma mensagem de erro caso o usuário ou a senha estejam incorretos
            Quando o usuário inserir um <nomeUsuario> inválido ou uma <senha> inválida
            E clicar no botão "Login"
            Então deve exibir a <mensagem> de erro
            Exemplos:
            | usuario                       | senha      | mensagem                                                                                                                                   |
            | "qrhuewr"                     | "teste123" | "Erro: O usuário qrhuewr não está registrado neste site. Se você não está certo de seu nome de usuário, experimente o endereço de e-mail." |
            | "teste@teste.com"             | "rewqerw"  | "Erro: A senha fornecida para o e-mail teste@teste.com está incorreta. Perdeu a senha?"                                                    |
            | "testeewrqrqwereqw@teste.com" | "teste123" | "Endereço de e-mail desconhecido. Verifique novamente ou tente seu nome de usuário."                                                       |

            Cenário: Deve bloquear o login caso o usuário errar a senha 3 vezes
            Quando o usuário errar a senha 3 vezes
            Então o login deve ser bloqueado por 15 minutos