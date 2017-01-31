class ValidarExclusaoScreen < AndroidScreenBase
  # The screen identificator
   trait(:trait)                 { "* id:'#{mensagem_exclusao}'" }

  # Declare all the elements of this screen
  element(:mensagem_exclusao)         { 'empty_view_title' }

  def valicao_exclusao
    sleep(0.5)
    fail 'O item não foi excluído' unless element_exists("* id:'#{mensagem_exclusao}'")
  end
end 
