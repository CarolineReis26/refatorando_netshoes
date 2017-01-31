class ProdutoPesquisadoScreen < AndroidScreenBase
  # The screen identificator
   trait(:trait)                 { "* id:'#{tocar_produto_selecionado}'" }

  # Declare all the elements of this screen
  element(:tocar_produto_selecionado)         { 'product_name' }
  element(:realizar_compra)               { 'progress_button_text' }
  element(:adicionar_carrinho)            {'generic_dialog_positive'}
  element(:inclusao_efetuada)             {'btnCheckout'}
  element(:acessar_carrinho)              {'cart_icon'}

  def selecao_produto
    touch("* id:'#{tocar_produto_selecionado}'")
  end

  def compra_realizada
    touch("* id:'#{tocar_produto_selecionado}'")
    touch("* id:'#{realizar_compra}'")
  end

  def inclusao_carrinho
   touch("* id:'#{adicionar_carrinho}'") #if element_exists("* id:'#{adicionar_carrinho}'")
  end

  def confirmar_inclusao
    sleep(2)
    fail "Nao foi adicionado para o carrinho" if !element_exists("* id:'#{inclusao_efetuada}'")
  end

  def tocar_carrinho
    touch("* id:'#{acessar_carrinho}'")
  end
end
