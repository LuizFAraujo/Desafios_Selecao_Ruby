require_relative "password_validator"

class PasswordListProcessor
  attr_accessor :list
  
  def initialize(list)
    @list = list
  end
  
  def process()
    qtdOk = 0
    @list.each { |vPass| 
      strCheck = PasswordValidator.new(vPass).check
      qtdOk += 1 if strCheck == "Válida"
    }
    qtdOk
  end

end

