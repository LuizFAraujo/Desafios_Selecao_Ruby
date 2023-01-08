class Stock_Utils

  # Converte a string [[ação, [valores]]].
  def getConverteValores(str)
    str = str.split("\n")
    str.map { |elem|
      arrTemp = elem.split(":")
      arrInteiro = arrTemp[1].split.map { |el| el.to_i }
      arrTemp[1] = arrInteiro
      arrTemp
    }
  end

  # Retorna o lucro, ou menor prejuízo, individual.
  def getLucro(arr)
    result = nil
    i = 0    
    begin

      j = i+1
      begin
        resultTemp = arr[j] - arr[i]
        result = result.nil? ? resultTemp : (resultTemp > result ? resultTemp : result)
        j += 1
      end while j < arr.count

      i += 1
    end while i < arr.count-1

    result
  end

  # Retorna ação/lucro.
  def getLucros(arr)
    arr.map { |item|
      resultTemp = getLucro(item[1])
      resultTemp = [item[0], resultTemp]
    }
  end

  # Retorna [[ação, [valor]]], ordenados.
  def getLucrosOrdenados(arr)
    lenArr = arr.count
    
    if lenArr > 1 then
      (0..lenArr-1).each{ |i|
        ((i+1)..lenArr-1).each{ |j|

          if arr[j][1] < arr[i][1] then
            temp = arr[i]
            arr[i] = arr[j]
            arr[j] = temp
          end

        }
      }
    end

    arr
  end

  # Retorna valor formatado.
  def getResult(arr)
    result = []
    arr.each { |el| result << el.join(":") }
    return result if result.count > 1
    return result[0]
  end
 
end
