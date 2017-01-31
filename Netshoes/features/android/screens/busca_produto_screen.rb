class BuscaProdutoScreen < AndroidScreenBase
  # The screen identificator
   trait(:trait)                 { "* id:'#{validar_home}'" }

  # Declare all the elements of this screen
  element(:validar_home)         { 'generic_dialog_positive' }
  element(:button)              { 'button1' }
  element(:button_pesquisa)            {'search_button'}
  element(:text_pesquisa)           {'search_src_text'}

  def validar_screen
    touch("* id:'#{validar_home}'")
    touch("* id:'#{button}'")
  end

  def tocar_pesquisar
    touch("* id:'#{button_pesquisa}'")
  end

  def informar_produto
    produto = 'bolsa'
    enter_text "* id:'#{text_pesquisa}'", produto
    press_enter_button
  end
end
