require_relative 'element_swap_utils'

class ElementSwap

  def switch(letters, instructions)
    instr = ElementSwap_Utils.new.getConverteValores(instructions)
    instr.each{ |instrucao| letters = ElementSwap_Utils.new.getSwap(instrucao, letters) }
    letters
  end

end

