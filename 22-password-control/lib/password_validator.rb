class PasswordValidator
  attr_accessor :pass
  
  def initialize(pass)
    @pass = pass
  end
  
  def check()
    return "Inválida" if @pass.length < 5
    pass = @pass.split("")
    return "Inválida" if getCheckRepeat(pass) == false
    return "Inválida" if getCheckOrder(pass) == false
    return "Válida"
  end

  def getCheckRepeat(arrStr)
    countArr = arrStr.count
    vTemp = nil
    for i in 0..countArr-2
      vTemp = arrStr[i]
      for j in i+1..countArr-1
        return true if vTemp == arrStr[j]
      end
    end
    return false
  end

  def getCheckOrder(arrStr)
    countArr = arrStr.count
    vTemp = nil
    for i in 0..countArr-2
      vTemp = arrStr[i]
      for j in i+1..countArr-1
        return false if vTemp > arrStr[j]
      end
    end
    return true
  end

end
