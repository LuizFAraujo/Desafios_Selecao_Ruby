class Numbers

  def sum_text(numbers_text)
    soma = []
    numbers_text.each_line {|i| soma << i.to_i}
    soma.sum    
  end
  
end

