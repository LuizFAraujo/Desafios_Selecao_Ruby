class GameShow

  def find_highest_number(numbers, minutes)
    result = []
    (1..minutes).each {
      array = getGiraRodada(numbers)
      result = getResult(array)
    }
    result
  end

  def getResult(array)
    result = []
    maxV = array.sort.reverse[0]
    array.each.with_index { |v, i|
      if v == maxV then
        result << [i+1, v]
      end
    }
    result
  end
  
  def getGiraRodada(array)
    arrCount = array.count
    array.each_with_index { |v, i| array[i]= v/2 }
    
    # caixa impar, index par
    vTemp = arrCount.odd? ? array[arrCount-1] : array[arrCount-2]
    (arrCount-1).downto(0) { |i|
      next if i.odd?
      if i > 0 then
        array[i] = array[i] + array[i-2]
      else
        array[i] = array[i] + vTemp
      end
    }
    
    # caixa par, index impar
    vTemp = array[1]
    0.upto(arrCount-1) { |i|
      next if i.even?
      if i < (arrCount-2) then
        array[i] = array[i] + array[i+2]
      else
        array[i] = array[i] + vTemp
      end
    }

    array
  end

end
