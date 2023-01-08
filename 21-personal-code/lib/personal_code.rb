require_relative 'personal_code_utils'

class PersonalCode

  def generate(data)
    nome = data.values[0].downcase
    sobrenome = data.values[1].downcase
    nascto = data.values[2]

    sigla = PersonalCode_Utils.new.getSiglaStr(sobrenome)
    sigla += PersonalCode_Utils.new.getSiglaStr(nome)
    sigla += PersonalCode_Utils.new.getSiglaNascto(nascto)
    sigla.upcase
  end

end
