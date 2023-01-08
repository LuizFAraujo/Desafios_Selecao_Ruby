require 'spec_helper'

describe 'SpectatorsOrganizer' do
  it '1: Recebe um mapa de espectadores e retorna vazio.' do
    spectators = [[0, 0, 0],
                  [1, 2, 3],
                  [4, 5, 6],
                  [7, 8, 9]]

    expect(SpectatorsOrganizer.new.evaluate(spectators)).to eq([])
  end

  it '2: Recebe um mapa de espectadores e retorna as coordenadas.' do
    spectators = [[0, 0, 0, 0, 0, 0],
                  [1, 2, 3, 2, 1, 1],
                  [2, 4, 4, 3, 2, 2],
                  [5, 5, 5, 10, 4, 4],
                  [6, 6, 7, 6, 5, 5]]

    expect(SpectatorsOrganizer.new.evaluate(spectators)).to eq([[4, 3]])
  end

  it '3: Recebe um mapa de espectadores e retorna as coordenadas.' do
    spectators = [[0, 0, 0],
                  [2, 1, 2],
                  [1, 1, 1],
                  [2, 2, 2]]
    result = [[2, 0],[2, 1], [2, 2], [3, 0], [3, 2]]

    expect(SpectatorsOrganizer.new.evaluate(spectators)).to eq(result)
  end

  it '4: Recebe um mapa de espectadores e retorna as coordenadas.' do
    spectators = [[0, 0, 0, 0, 0, 0],
                  [1, 2, 5, 2, 1, 1],
                  [2, 6, 4, 3, 5, 2],
                  [5, 5, 5, 5, 4, 6],
                  [6, 6, 7, 6, 5, 5]]
    result = [[2, 2], [3, 1], [3, 2], [3, 4], [4, 1], [4, 4], [4, 5]]

    expect(SpectatorsOrganizer.new.evaluate(spectators)).to eq(result)
  end

  it '5: Recebe um mapa de espectadores e retorna as coordenadas.' do
    spectators = [[0, 0, 0, 0, 0, 0, 0, 0, 0],
                  [1, 2, 5, 2, 1, 1, 3, 2, 4],
                  [2, 2, 2, 3, 2, 1, 2, 1, 2],
                  [3, 4, 5, 3, 2, 6, 4, 2, 1],
                  [6, 6, 1, 3, 5, 5, 6, 9, 10],
                  [6, 6, 6, 3, 8, 9, 1, 8, 4],
                  [6, 7, 6, 1, 8, 9, 5, 7, 8]]
    result = [[2, 1], [2, 2], [2, 5], [2, 6], [2, 7], [2, 8], [3, 2], [3, 3],
              [3, 4], [3, 7], [3, 8], [4, 2], [4, 3], [4, 5], [5, 0], [5, 1],
              [5, 3], [5, 6], [5, 7], [5, 8], [6, 0], [6, 2], [6, 3], [6, 4],
              [6, 5], [6, 6], [6, 7], [6, 8]]

    expect(SpectatorsOrganizer.new.evaluate(spectators)).to eq(result)
  end
end
