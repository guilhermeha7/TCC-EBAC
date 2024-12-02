class ProdutosEscolhidoPage {

    escolherCaracteristicas(tamanho, cor, qtd) {
        cy.get(`.button-variable-item-${tamanho}`).click()
        cy.get(`.button-variable-item-${cor}`).click()
        cy.get('.input-text').clear().type(`${qtd}`)
    }

    clicarEmComprar() {
        cy.get('.single_add_to_cart_button').click()
    }

    clicarEmVerCarrinho() {
        cy.get('.woocommerce-message > .button').click()
    }

}

export default new ProdutosEscolhidoPage()