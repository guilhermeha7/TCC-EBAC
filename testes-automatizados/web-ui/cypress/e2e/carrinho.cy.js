/// <reference types="cypress"/>
import ProdutoEscolhidoPage from '../pages/produto-escolhido'

describe('Funcionalidade: Carrinho', () => {
  it('Deve adicionar 3 produtos ao carrinho', () => {
    cy.visit('/')

    //Adição do 1º Produto ao Carrinho
    cy.addProdutoAoCarrinho(2,'S','Blue','2')
    cy.get('.woocommerce-message').should('contain','foram adicionados no seu carrinho')

    //Adição do 2º Produto ao Carrinho
    cy.addProdutoAoCarrinho(4,'32','Black','1')
    cy.get('.woocommerce-message').should('contain','foi adicionado no seu carrinho')

    //Adição do 3º Produto ao Carrinho
    cy.addProdutoAoCarrinho(0,'XS','Black','3')
    cy.get('.woocommerce-message').should('contain','foram adicionados no seu carrinho')

    //Abrir Carrinho
    ProdutoEscolhidoPage.clicarEmVerCarrinho()
    cy.get('.page-title').should('contain','Carrinho')
  })
})