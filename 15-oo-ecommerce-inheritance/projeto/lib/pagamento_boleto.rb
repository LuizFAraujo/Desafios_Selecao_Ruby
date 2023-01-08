require_relative 'pagamento'

class PagamentoBoleto < Pagamento

  def initialize(quantidade: quantidade(), produto: produto(), preco: preco())
		super(quantidade: , produto: , preco: )
	end

end