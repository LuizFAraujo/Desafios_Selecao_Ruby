class ArrayUtils

  def self.compara(lista1, lista2)
    lista1.sort == lista2.sort
  end

  def self.divisiveis(num1, num2)
    arrResult = []
    arrAmbos = []

    # somente divisiveis pelos dois
    (0..50).each {|el| arrAmbos << el if (ehDivisivel(el, num1) && ehDivisivel(el, num2) && el > 0) }
    arrResult << arrAmbos

    # somente divisiveis por num1
    arrResult << getArrayDivisivel(arrAmbos, num1)

    # # somente divisiveis por num2
    arrResult << getArrayDivisivel(arrAmbos, num2)

    arrResult
  end

  def self.soma(lista)
    lista.reduce { |total, lista| total + lista }
  end

  def self.combinar(lista1, lista2)
    arrResult = []
    i = 0
    j = 0
    
    for i in 0..lista1.count-1
        for j in 0..lista2.count-1
            arrTemp = []
            arrTemp << lista1[i]
            arrTemp << lista2[j]
            arrResult << arrTemp
        end
    end

    arrResult
  end

  def self.getArrayDivisivel(arrAmbos, numDiv)
    arrTemp = []
    (0..50).each { |el| arrTemp << el if ( ehDivisivel(el, numDiv) && el > 0 ) }
    arrTemp - arrAmbos
  end
  
  def self.ehDivisivel(numTeste, numDiv)
    numTeste % numDiv == 0
  end
  
end
