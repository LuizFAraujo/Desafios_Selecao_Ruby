require_relative 'stock_utils'

class Stock

  def evaluate(stock)
    values = Stock_Utils.new.getConverteValores(stock)
    values = Stock_Utils.new.getLucros(values)
    Stock_Utils.new.getResult(values)
  end

  def evaluate_stocks(stocks)
    values = Stock_Utils.new.getConverteValores(stocks)
    values = Stock_Utils.new.getLucros(values)
    values = Stock_Utils.new.getLucrosOrdenados(values)
    Stock_Utils.new.getResult(values)
  end
  
end
