require_relative 'produto'

class Pagamento

  attr_accessor :quantidade, :produto, :preco
	attr_reader :valor

  def initialize(quantidade: quantidade(), produto: produto(), preco: preco())
    @quantidade = quantidade
    @preco = preco
    @produto = produto.nil? ? Produto.new().nome : Categoria.new(nome: produto).nome
  end

	def calcular_valor
		@valor = @quantidade * @preco
	end

	def aplicar_desconto(desconto)
		@valor -= desconto
	end
    
end
