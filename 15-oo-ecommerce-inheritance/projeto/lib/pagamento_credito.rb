require_relative 'pagamento'

class PagamentoCredito < Pagamento

	attr_accessor :juros
	
	def initialize(quantidade: quantidade(), produto: produto(), preco: preco(), juros: juros())
		super(quantidade: , produto: , preco:)
		@juros = juros
	end

	def atualizar_valor
    calcular_valor
    @valor *= (@juros/100.0) + 1
  end

end