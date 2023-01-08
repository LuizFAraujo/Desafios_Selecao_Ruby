require 'spec_helper'

describe 'GameShow' do
  it '1: Recebe 5 caixas com tempo de 1 minuto e retorna [[5,5]]' do
    numbers = [2,3,4,5,6]
    minutes = 1

    expect(GameShow.new.find_highest_number(numbers, minutes)).to eq ([[5, 5]])
  end

  it '2: Recebe 5 caixas com tempo de 2 minutos e retorna [[1,4]]' do
    numbers = [2,3,4,5,6]
    minutes = 2

    expect(GameShow.new.find_highest_number(numbers, minutes)).to eq ([[1, 4]])
  end

  it '3: Recebe 5 caixas com tempo de 4 minutos e retorna [[2, 2],[4, 2]]' do
    numbers = [1,2,3,4,5]
    minutes = 4

    expect(GameShow.new.find_highest_number(numbers, minutes)).to eq ([[2, 2],[4, 2]])
  end

  it '4: Recebe 10 caixas com tempo de 6 minutos e retorna [[5, 49]]' do
    numbers = [10,30,45,9,7,50,71,60,90,12]
    minutes = 6

    expect(GameShow.new.find_highest_number(numbers, minutes)).to eq ([[5, 49]])
  end

  it '5: Recebe 10 caixas com tempo de 6 minutos e retorna [[2, 53],[4, 53]]' do
    numbers = [10,30,45,9,7,50,71,60,90,90]
    minutes = 6

    expect(GameShow.new.find_highest_number(numbers, minutes)).to eq ([[2, 53],[4, 53]])
  end

  it '6: Recebe 12 caixas com tempo de 15 minutos e retorna [[9, 196]]' do
    numbers = [113,254,332,456,0,0,450,120,97,90,200,160]
    minutes = 15

    expect(GameShow.new.find_highest_number(numbers, minutes)).to eq ([[9, 196]])
  end

  it '7: Recebe 12 caixas com tempo de 30 minutos e retorna 6 caixas com número 186' do
    numbers = [113,254,332,456,0,0,450,120,97,90,200,160]
    minutes = 30

    expect(GameShow.new.find_highest_number(numbers, minutes)).to eq ([[1, 186], [3, 186], [5, 186], [7, 186], [9, 186], [11, 186]])
  end
end