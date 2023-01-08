require_relative 'categoria'

class Produto
  
  attr_accessor :nome, :categoria, :preco , :estoque
  
  def initialize(nome: nome(), categoria: categoria(), preco: preco(), estoque: estoque())
    @nome = nome
    @preco = preco
    @estoque = estoque
    @categoria = categoria.nil? ? Categoria.new().nome : Categoria.new(nome: categoria).nome
  end

end


#  p refatorar
# def initialize(nome:, categoria: 'Geral', preco:, estoque:)
#     @nome = nome
#     @categoria = categoria
#     @preco = preco
#     @estoque = estoque
# end