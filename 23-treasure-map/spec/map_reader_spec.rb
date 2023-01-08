require 'spec_helper'

describe 'MapReader' do
  it '1: Recebe coordenadas e retorna posição de tesouro [[2,2]]' do
    instructions = "0222|2122"

    expect(MapReader.new.find_treasures(instructions)).to eq [[2,2]]
  end

  it '2: Recebe coordenadas e retorna posição de tesouro [[2,1]]' do
    instructions = "0131|2023|2131|0323"

    expect(MapReader.new.find_treasures(instructions)).to eq [[2,1]]
  end

  it '3: Recebe coordenadas e retorna posições de tesouros [[2,0], [2,2]]' do
    instructions = "1222|2022|2030"

    expect(MapReader.new.find_treasures(instructions)).to eq [[2,0], [2,2]]
  end

  it '4: Recebe coordenadas e retorna posições de tesouros [[1,1], [1,3], [2,1]]' do
    instructions = "0131|1121|1213|1323|"

    expect(MapReader.new.find_treasures(instructions)).to eq [[1,1], [1,3], [2,1]]
  end

  it '5: Recebe coordenadas e retorna posições de tesouros [[2,2]]' do
    instructions = "0104|0222|2242|1112|2124|3031|0444"

    expect(MapReader.new.find_treasures(instructions)).to eq [[2, 2]]
  end
end
