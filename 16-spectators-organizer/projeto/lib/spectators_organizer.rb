class SpectatorsOrganizer

  def evaluate(spectators)
    lenSpectators = spectators.count
    
    if lenSpectators > 1 then
      arrLinhaFrente = []
      arrResultFinal = []

      for i in 1..lenSpectators-1
        arrLinhaFrente = getArrayMaior(arrLinhaFrente, spectators[i-1])
        arrLinhaAtras = spectators[i]

        for j in 0..arrLinhaAtras.count-1
          valueAtras = arrLinhaAtras[j]
          valueFrente = arrLinhaFrente[j]

          if (valueAtras <= valueFrente) then
            arrResultTemp = [i, j]
            arrResultFinal << arrResultTemp
          end

        end
      end
      return result = arrResultFinal
    else
      return []
    end
  end


  # Compara e retorna um array com os maiores valores
  def getArrayMaior(arrMaiores, arrCompara)
    len = arrMaiores.count
    if len > 0 then
      for i in 0..len-1
        arrMaiores[i] = arrMaiores[i] >= arrCompara[i] ? arrMaiores[i] : arrCompara[i]
      end
      return arrMaiores
    else
      return arrCompara
    end
  end

end

