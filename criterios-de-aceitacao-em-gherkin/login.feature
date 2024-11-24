            #language: pt

            Funcionalidade: Login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Dado que eu esteja na tela de login

            Esquema do Cenário: Deve fazer login com sucesso
            Quando eu inserir um <nomeUsuario> e uma <senha> válidos de um usuário ativo
            E clicar no botão "Login"
            Então o usuário deve ser autenticado com sucesso
            Exemplos:
            | nomeUsuario           | senha      |
            | "joaoteste@teste.com" | "teste123" |
            | "joaoteste123"        | "teste123" |
            | "11122233344"         | "teste123" |

            Esquema do Cenário: Deve exibir uma mensagem de erro caso o usuário ou a senha estejam incorretos
            Quando eu inserir um <usuario> ou uma <senha> inválidos
            E clicar no botão "Login"
            Então deve exibir a <mensagem> de erro
            Exemplos:
            | usuario                       | senha      | mensagem                                                                                                                                   |
            | "qrhuewr"                     | "teste123" | "Erro: O usuário qrhuewr não está registrado neste site. Se você não está certo de seu nome de usuário, experimente o endereço de e-mail." |
            | "teste@teste.com"             | "rewqerw"  | "Erro: A senha fornecida para o e-mail teste@teste.com está incorreta. Perdeu a senha?"                                                    |
            | "testeewrqrqwereqw@teste.com" | "teste123" | "Endereço de e-mail desconhecido. Verifique novamente ou tente seu nome de usuário."                                                       |

            Cenário: Deve bloquear a entrada para a conta caso eu erre a senha 3 vezes
            Quando eu errar a senha 3 vezes
            Então a entrada para minha conta deve ser bloqueada por 15 minutos