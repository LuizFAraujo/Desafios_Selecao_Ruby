require_relative 'categoria'

class Produto

  attr_accessor :nome, :categoria, :preco, :estoque

  def initialize(nome: 'Sem nome', categoria: categoria() , preco: , estoque: )
    @preco = preco
    @estoque = estoque
    @nome = nome
    @categoria = categoria.nil? ? Categoria.new() : categoria
  end

  def adiciona_estoque(quantidade)
    @estoque += quantidade
  end

  def remove_estoque(quantidade)
    @estoque -= quantidade
  end
  
end
