import NavBarPage from '../pages/nav-bar.page'
import ProdutosPage from '../pages/produtos.page'
import ProdutoEscolhidoPage from '../pages/produto-escolhido'

Cypress.Commands.add('addProdutoAoCarrinho', (id, tamanho, cor, quantidade) => {
    NavBarPage.clicarEmComprar()
    ProdutosPage.clicarNoProduto(id)
    ProdutoEscolhidoPage.escolherCaracteristicas(tamanho,cor,quantidade)
    ProdutoEscolhidoPage.clicarEmComprar()
})