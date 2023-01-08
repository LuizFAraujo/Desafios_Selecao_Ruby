class Chars

  def unique_quantity(textSeq)
    arrTemp = []
    countCarac = 0
    textSeq.split(" ").each { |e| arrTemp << e.chars.sort.join.squeeze }
    arrTemp.each { |e| countCarac += e.length }
    countCarac
  end

end
