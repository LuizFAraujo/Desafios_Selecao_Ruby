class IntegerSearcher_Utils

  def getValorMinMax(array)
    arrResult = []
    array.each { |arr| arrResult << getGrupoReduzido(arr) }
    arrResult
	end

  def getGrupoReduzido(array)
    array = getValoresSeparados(array)
    array = getGrupoPorIndex(array)
    array = getArrayLimpo(array)
    array = getPermutacaoGrupo(array)
    array = getArrayInteiro(array)
    array = getMinMaxArray(array)
    array = getMinMaxInteiro(array)
  end

	def getValoresSeparados(array)
		arrResult = []
		array.each{ |arr|
			arrNum = arr.to_s.split("")
			arrNum.each_with_index{ |n, i| arrNum[i] = n.to_i }
			arrResult << arrNum
		}
	  arrResult
	end

  def getGrupoPorIndex(array)
    array = array.group_by { |elem| elem[0] }
	  array.sort.reverse
  end
  
  def getArrayLimpo(array)
    arrLimpo = []
    array.each { |arrElem|
      arrTmp = []
	  	arrElem.shift(1)
	  	arrElem = arrElem[0]
      arrElem.each { |e| arrTmp << e.join.to_i }
      arrLimpo << arrTmp
	  }
    arrLimpo
  end

  def getPermutacaoGrupo(array)
    arrPermut = []
	  array.each { |arrElem|
      permTmp = []
      perm = arrElem.permutation(arrElem.count).to_a
      perm.each { |prm| permTmp << prm }
      arrPermut << permTmp
    }
    arrPermut
  end

  def getArrayInteiro(array)
    arrResult = []
	  array.each { |arrElem| 
      arrTmp = []
      arrElem.each { |elem| arrTmp << elem.join.to_i }
      arrResult << arrTmp
    }
    arrResult
  end

  def getMinMaxArray(array)
    arrResult = []
	  array.each { |elem| elem.sort! }
    arrGrp = []
	  array.each { |elem|
      arrTmp = []
      arrTmp << elem.first
      arrTmp << elem.last
      arrResult << arrTmp
    }
    arrResult
  end
  
  def getMinMaxInteiro(array)
    arrResult = []
    arrMin = []
    arrMax = []
    array.each { |elem|
      arrMin << elem[0]
      arrMax << elem[1]
    }
    arrMin.reverse!
    arrResult << arrMin
    arrResult << arrMax
    arrResult.each_with_index { |v, i| arrResult[i] = v.join.to_i }
    arrResult
  end

end