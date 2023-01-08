class ElementSwap_Utils

  # Converte em array de inteiros
  def getConverteValores(str)
    arrResult = []
    str = str.split("\n")
    str.each { |item| 
      arrTemp = item.split(":")
      tmp = arrTemp[1].split("<>")
      arrTemp.delete_at(1)
      tmp.each{ |el| arrTemp << el }
      arrResultTemp = arrTemp.map{ |el| el.to_i }
      arrResult << arrResultTemp
    }
    arrResult
  end

  def getSwap(arrInstr, arrLetras)
    if arrInstr.count > 2 then
      i_Str = arrInstr[0]
      i1_Str = arrInstr[1]
      i2_Str = arrInstr[2]

      vTmp = arrLetras[i_Str][i2_Str]
      arrLetras[i_Str][i2_Str] = arrLetras[i_Str][i1_Str]
      arrLetras[i_Str][i1_Str] = vTmp
    else
      i_Str = arrInstr[1]

      vTmp = arrLetras[1][i_Str]
      arrLetras[1][i_Str] = arrLetras[0][i_Str]
      arrLetras[0][i_Str] = vTmp
    end

    arrLetras
  end
 
end
