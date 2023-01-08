class StringUtils
  def wavefy(string)
    string = string.downcase
    string = string.chars
    string.each_with_index { |v, i| string[i] = v.upcase if i.odd? }
    string = string.join()
  end
end
