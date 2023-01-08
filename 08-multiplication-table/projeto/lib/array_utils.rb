class ArrayUtils

  def self.multiplos(qtd, multiplo)
    (1..qtd).to_a.map { |i| i * multiplo }
  end
 
  def self.tabuada(num)
    result = (1..num).to_a.map { |i| multiplos(10,i) }
  end
  
end
