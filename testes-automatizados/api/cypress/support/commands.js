// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add('login', (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add('drag', { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add('dismiss', { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite('visit', (originalFn, url, options) => { ... })

Cypress.Commands.add('criarCupom', (urlRequisicao, usuario, senha, prefixoCupom, porcentagemCupom) => {
    cy.request({
        method: 'POST',
        url: urlRequisicao,
        auth : {
            username: usuario,
            password: senha
        },
        body: {
            "code": prefixoCupom+porcentagemCupom,
            "amount": porcentagemCupom,
            "discount_type": "fixed_product",
            "description": `Cupom de desconto de ${porcentagemCupom}% de desconto`
        }
    })
})