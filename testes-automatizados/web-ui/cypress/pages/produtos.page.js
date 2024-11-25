class ProdutosPage {

    clicarNoProduto(id) {
        cy.get('.product-block > .block-inner > .image > .product-image > .image-hover').eq(id).click()
    }

}

export default new ProdutosPage()