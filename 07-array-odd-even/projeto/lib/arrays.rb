class Arrays
  
  def self.converte_impares_por(lista, numero)
    a1 = []
    lista.map {|el| a1 << el if el.odd?}
    a2 = a1.map {|el| el * numero} 
    arrResult = [a1,a2]
  end

  def self.converte_pares_por(lista, numero)
    a1 = []
    lista.map {|el| a1 << el if el.even?}
    a2 = a1.map {|el| el * numero} 
    arrResult = [a1,a2]
  end

end
