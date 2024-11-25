/// <reference types="cypress"/>
import NavBarPage from '../pages/nav-bar.page'
import ProdutosPage from '../pages/produtos.page'
import ProdutoEscolhidoPage from '../pages/produto-escolhido'

describe('Funcionalidade: Carrinho', () => {

  it('Deve adicionar 3 produtos ao carrinho', () => {
    cy.visit('/')

    //Adição do Primeiro Produto ao Carrinho
    NavBarPage.clicarEmComprar()
    ProdutosPage.clicarNoProduto(2)
    ProdutoEscolhidoPage.escolherCaracteristicas('S','Blue','2')
    ProdutoEscolhidoPage.clicarEmComprar()
    cy.get('.woocommerce-message').should('contain','foram adicionados no seu carrinho')

    //Adição do Segundo Produto ao Carrinho
    NavBarPage.clicarEmComprar()
    ProdutosPage.clicarNoProduto(4)
    ProdutoEscolhidoPage.escolherCaracteristicas('32','Black','1')
    ProdutoEscolhidoPage.clicarEmComprar()
    cy.get('.woocommerce-message').should('contain','foi adicionado no seu carrinho')

    //Adição do Terceiro Produto ao Carrinho
    NavBarPage.clicarEmComprar()
    ProdutosPage.clicarNoProduto(0)
    ProdutoEscolhidoPage.escolherCaracteristicas('XS','Black','3')
    ProdutoEscolhidoPage.clicarEmComprar()
    cy.get('.woocommerce-message').should('contain','foram adicionados no seu carrinho')

    //Abrir Carrinho
    ProdutoEscolhidoPage.clicarEmVerCarrinho()
    cy.get('.page-title').should('contain','Carrinho')
  })
})