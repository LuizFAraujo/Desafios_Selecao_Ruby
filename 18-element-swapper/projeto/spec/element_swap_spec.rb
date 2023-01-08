require 'spec_helper'

describe ElementSwap do
  it '1: Troca posição de elementos de acordo com instruções' do
    letters = [['A', 'C'],
               ['B', 'D']]
    instructions = <<~INSTRUCTIONS
    0:0<>1
    INSTRUCTIONS
    result = ElementSwap.new.switch(letters, instructions)

    expect(result).to eq [['C', 'A'],
                          ['B', 'D']]
  end

  it '2: Troca posição de elementos de acordo com instruções' do
    letters = [['A', 'C'],
               ['B', 'D']]
    instructions = <<~INSTRUCTIONS
    ^v:0
    INSTRUCTIONS
    result = ElementSwap.new.switch(letters, instructions)

    expect(result).to eq [['B', 'C'],
                          ['A', 'D']]
  end

  it '3: Troca posição de elementos de acordo com instruções' do
    letters = [['K', 'V', 'H', 'C'],
               ['D', 'E', 'F', 'A']]
    instructions = <<~INSTRUCTIONS
    1:2<>3
    ^v:1
    INSTRUCTIONS
    result = ElementSwap.new.switch(letters, instructions)

    expect(result).to eq [['K', 'E', 'H', 'C'],
                          ['D', 'V', 'A', 'F']]
  end

  it '4: Troca posição de elementos de acordo com instruções' do
    letters = [['Y', 'Q', 'S', 'R', 'O'],
               ['X', 'E', 'P', 'A', 'Z']]
    instructions = <<~INSTRUCTIONS
    0:1<>4
    ^v:4
    0:4<>0
    INSTRUCTIONS
    result = ElementSwap.new.switch(letters, instructions)

    expect(result).to eq  [['Z', 'O', 'S', 'R', 'Y'],
                           ['X', 'E', 'P', 'A', 'Q']]
  end

  it '5: Troca posição de elementos de acordo com instruções' do
    letters = [['C', 'K', 'M', 'E', 'V', 'G'],
               ['D', 'Q', 'N', 'A', 'B', 'Z']]
    instructions = <<~INSTRUCTIONS
    1:2<>3
    0:4<>0
    ^v:3
    ^v:4
    1:3<>4
    INSTRUCTIONS
    result = ElementSwap.new.switch(letters, instructions)

    expect(result).to eq [['V', 'K', 'M', 'N', 'B', 'G'],
                          ['D', 'Q', 'A', 'C', 'E', 'Z']]
  end
end
