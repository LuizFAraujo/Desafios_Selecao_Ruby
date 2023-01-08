require_relative 'categoria'

class Produto

  attr_accessor :nome, :categoria, :preco, :estoque

  def initialize(nome: 'Sem nome', categoria: categoria(), preco: preco(), estoque: estoque())
    @preco = preco
    @estoque = estoque
    @nome = nome
    @categoria = categoria.nil? ? Categoria.new().nome : Categoria.new(nome: categoria).nome
  end

  def adiciona_estoque(quantidade)
    self.estoque += quantidade
  end

  def remove_estoque(quantidade)
    self.estoque -= quantidade
  end

end
