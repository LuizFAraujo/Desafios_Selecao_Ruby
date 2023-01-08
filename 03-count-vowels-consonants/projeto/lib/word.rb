class Word
  def vowels_count(phrase)
    vogais =  ["a","á","à","â","ä","ã"]
    vogais += ["e","é","è","ê","ë"]
    vogais += ["i","í","ì","î","ï"]
    vogais += ["o","ó","ò","ô","ö","õ"]
    vogais += ["u","ú","ù","û","ü"]
    vogais += ["y","ý","ÿ"]
    count_x(vogais, phrase)
  end

  def consonants_count(phrase)
    consoantes =  ["b","c","ç","d","f","g","h","j","k","l","m"]
    consoantes += ["n","p","q","r","s","t","v","w","x","z"]
    count_x(consoantes, phrase)
  end

  def count_x(tipo, frase)
    return frase.downcase.count(tipo.join)
  end

end