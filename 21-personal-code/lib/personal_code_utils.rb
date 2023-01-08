require_relative 'alfabeto_utils'

class PersonalCode_Utils

  def getSiglaStr(str)
    siglaResult = []
    arrStr = str.split("")
    limiteSigla = 3
    strConsoantesCount = Alfabeto_Utils.new.getConsoantesCount(str)
    vogais = Alfabeto_Utils.new.getVogais()
    consoantes = Alfabeto_Utils.new.getConsoantes()
    siglaResult = getPartialSiglaStr(arrStr, consoantes, limiteSigla)
    if strConsoantesCount < 3 then
      siglaResult += getPartialSiglaStr(arrStr, vogais, limiteSigla - siglaResult.length)
      if str.length < 3 then
        (1..limiteSigla).each {
          siglaResult << "x"
          break if siglaResult.count == limiteSigla
        }
      end
    end
    siglaResult.join
  end

  def getPartialSiglaStr(array, elementos, limite)
    arrResult = []
    array.each { |elem|
      arrResult << elem if elementos.include? elem
      break if arrResult.count == limite
    }
    arrResult
  end

  def getSiglaNascto(str)
    strMes = ["A", "B", "C", "D", "E", "H", "L", "M", "P", "R", "S", "T"]
    arrStr = str.split("/")
    resultSigla = arrStr[2][2,2]
    resultSigla += strMes[arrStr[1].to_i-1]
    resultSigla += getAlgarismoUnico(arrStr[0])
  end

  def getAlgarismoUnico(strNum)
    strNum = strNum.split("")
    begin 
      strNum.each_with_index { |v, i| strNum[i] = v.to_i}
      strNum = strNum.sum.to_s
      strNum = strNum.split("")
      lenNum = strNum.count
    end while lenNum > 1
    strNum.join
  end

end   