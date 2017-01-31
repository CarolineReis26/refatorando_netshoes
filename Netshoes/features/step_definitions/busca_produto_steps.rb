Dado(/^que estou na home$/) do
  @busca_produto_screen = page(BuscaProdutoScreen).await(timeout: 3)
  @busca_produto_screen.validar_screen
end

Quando(/^tocar para realizar pesquisa$/) do
  @busca_produto_screen.tocar_pesquisar
end

Quando(/^informar o produto$/) do
  @busca_produto_screen.informar_produto
end

Quando(/^tocar no produto selecionado$/) do
  @produto_pesquisado_screen = page(ProdutoPesquisadoScreen)
  @produto_pesquisado_screen.selecao_produto
end

Quando(/^tocar em realizar compra$/) do
  @produto_pesquisado_screen.compra_realizada
end

Quando(/^adicionar a compra ao carrinho$/) do
  @produto_pesquisado_screen.inclusao_carrinho
end

Entao(/^confirmar a inclusão do produto no carrinho$/) do
  @produto_pesquisado_screen.confirmar_inclusao
end

Quando(/^tocar no carrinho$/) do
    @produto_pesquisado_screen.tocar_carrinho
end

Quando(/^tocar para remover produto$/) do
  @carrinho = page(CarrinhoScreen)
  @carrinho.remocao_produto
end

Entao(/^confirmar a exclusão do produto$/) do
  @carrinho = page(CarrinhoScreen)
  fail 'O item não foi excluído' unless @carrinho.valicao_exclusao
end
