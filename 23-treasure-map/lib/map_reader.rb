class MapReader

  def find_treasures(instructions)
    instructions = getDivInstrucoes(instructions)
    instructions = getLocaliza(instructions)
    instructions
  end

  def getDivInstrucoes(instructions)
    instrDiv = []
    instructions = instructions.split("|")
    instructions.each_with_index { |v, i| instructions[i] = getDivCoordenada(v) }
    instructions.each_with_index { |v, i| instructions[i] = getCompleteCoordenada(v) }
  end

  def getDivCoordenada(str)
    coordResult = []
    coordTmp = str[0,2]
    coordResult << coordTmp.split("")
    coordTmp = str[2,2]
    coordResult << coordTmp.split("")
    coordResult.each_with_index { |elem, i|
      coordResult[i] = elem.each_with_index { |v, i| elem[i] = v.to_i }
    }
  end

  def getCompleteCoordenada(array)
    arrResult = []
    pontoInicio = array[0]
    pontoFim = array[1]

    if pontoInicio[0] == pontoFim[0] then
      inicio = pontoInicio[1]
      fim = pontoFim[1]
      fixo = pontoInicio[0]
      coordFixa = "X"
    else
      inicio = pontoInicio[0]
      fim = pontoFim[0]
      fixo = pontoInicio[1]
      coordFixa = "Y"
    end

    arrResult << pontoInicio
    (inicio+1..fim-1).each { |i|
      arrTemp = coordFixa == "X" ? [fixo, i] : [i, fixo]
      arrResult << arrTemp
    }
    arrResult << pontoFim
  end

  def getLocaliza(array)
    arrResult = []
    array.each { |arrCoord| arrCoord.each { |v| arrResult << v} }
    arr = arrResult.group_by(&:itself).map { |key, value| [value.count, key] }
    arr.sort!.reverse!
    qtdeMaior = arr[0][0]
    arrResult = []
    arr.each_with_index { |elem, i|
      arrResult << elem[1] if elem[0] == qtdeMaior
      break qtdeMaior if elem[0] < qtdeMaior
    }
    arrResult.sort!
  end

end
