import NavBarPage from '../support/pages/nav-bar.page'
import ProdutosPage from '../support/pages/produtos.page'
import ProdutoEscolhidoPage from '../support/pages/produto-escolhido.page'

Cypress.Commands.add('addProdutoAoCarrinho', (id, tamanho, cor, quantidade) => {
    NavBarPage.clicarEmComprar()
    ProdutosPage.clicarNoProduto(id)
    ProdutoEscolhidoPage.escolherCaracteristicas(tamanho,cor,quantidade)
    ProdutoEscolhidoPage.clicarEmComprar()
})