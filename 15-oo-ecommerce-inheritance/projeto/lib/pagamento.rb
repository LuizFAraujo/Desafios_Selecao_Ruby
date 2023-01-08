require_relative 'produto'

class Pagamento

  attr_accessor :quantidade, :produto, :preco
	attr_reader :valor

  def initialize(quantidade: quantidade(), produto: produto(), preco: preco())
    @quantidade = quantidade
    @preco = preco.nil? ? produto.preco : preco
    @produto = produto.nil? ? Produto.new().nome : Categoria.new(nome: produto).nome
  end

	def calcular_valor
		@valor = @quantidade * @preco
    produto.remove_estoque(@quantidade)
	end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem/100
  end
    
end
