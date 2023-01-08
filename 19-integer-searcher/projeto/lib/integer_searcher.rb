require_relative 'integer_searcher_utils'

class IntegerSearcher
  attr_accessor :array

  def initialize(array)
    @array = array
  end

	def find_smaller()
    arrResult = []
    arr = IntegerSearcher_Utils.new.getValorMinMax(@array)
    arr.each { |elem| arrResult << elem[0] }
    arrResult
  end

	def find_largest()
    arrResult = []
    arr = IntegerSearcher_Utils.new.getValorMinMax(@array)
    arr.each { |elem| arrResult << elem[1] }
    arrResult
  end

end