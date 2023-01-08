class Alfabeto_Utils
  
  def getVogaisCount(frase)
    vogais = getVogais
    count_x(vogais, frase)
  end
  
  def getConsoantesCount(frase)
    consoantes = getConsoantes
    count_x(consoantes, frase)
  end
  
  def count_x(tipo, frase)
    frase = frase.downcase
    return frase.count(tipo.join())
  end
  
  def getVogais()
    vogaisA = ["a","á","à","â","ä","ã"]
    vogaisE = ["e","é","è","ê","ë"]
    vogaisI = ["i","í","ì","î","ï"]
    vogaisO = ["o","ó","ò","ô","ö","õ"]
    vogaisU = ["u","ú","ù","û","ü"]
    vogaisY = ["y","ý","ÿ"]
    vogais = vogaisA + vogaisE + vogaisI + vogaisO + vogaisU + vogaisY
  end

  def getConsoantes()
    consoantesA = ["b","c","ç","d","f","g","h","j","k","l","m"]
    consoantesB = ["n","p","q","r","s","t","v","w","x","z"]
    consoantes = consoantesA + consoantesB
  end

end   