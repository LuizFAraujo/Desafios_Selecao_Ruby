class Arrays

  def self.multiplica_antecessor_predecessor(array)
    arrResult = []
		array.each_with_index { |valor, index|
			case valor
				when array.first
					arrResult << valor * array[1]
				when array.last
					arrResult << valor * array[-2]
				else
					arrResult << array[index - 1] * array[index + 1]
			end
    }
	arrResult
  end
  
end
