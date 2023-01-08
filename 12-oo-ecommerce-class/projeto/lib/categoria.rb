class Categoria

  attr_accessor :nome
  
  def initialize(nome: nome = 'Geral')
    @nome = nome
  end

end