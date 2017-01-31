class CarrinhoScreen < AndroidScreenBase
  # The screen identificator
   trait(:trait)                 { "* id:'#{dentro_carrinho}'" }

  # Declare all the elements of this screen
  element(:lixeira_carrinho)        { 'ctvCartRemove' }
  element(:clicar_lixeira)          { 'material_dialog_positive' }
  element(:mensagem_exclusao)         { 'empty_view_title' }

  def valicao_exclusao
    sleep(0.5)
    element_exists("* id:'#{mensagem_exclusao}'")
  end

  def remocao_produto
    touch("* id:'#{lixeira_carrinho}'")
    touch("* id:'#{clicar_lixeira}'")
  end
end
