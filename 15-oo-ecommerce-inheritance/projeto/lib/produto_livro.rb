require_relative 'produto'

class ProdutoLivro < Produto

  attr_accessor :nome, :preco, :estoque, :autor, :genero, :paginas
  
  def initialize(nome: nome(), preco: preco(), estoque: estoque(),
                 autor: autor(), genero: genero(), paginas: paginas())
    @nome = nome
    @preco = preco
    @estoque = estoque
    @autor = autor
    @genero = genero
    @paginas = paginas
  end

end
  
  