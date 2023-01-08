require 'spec_helper'

describe IntegerSearcher do
  it '1. Encontra maior inteiro possível na lista de números' do
    array = [[12, 48]]

    expect(IntegerSearcher.new(array).find_largest).to eq [4812]
  end

  it '2. Encontra maior inteiro possível na lista de números' do
    array = [[4, 32, 41]]

    expect(IntegerSearcher.new(array).find_largest).to eq [44132]
  end

  it '3. Encontra maior inteiro possível nas listas de números' do
    array = [
              [34, 97, 1, 23, 95, 347, 9, 12],
              [62, 35, 26, 61, 63, 345, 334, 2]
            ]

    expect(IntegerSearcher.new(array).find_largest).to eq [997953473423121, 63626135345334262]
  end

  it '4. Encontra maior inteiro possível nas listas de números' do
    start_time = Time.now
    array = [
              [10, 7, 76, 415, 22, 52, 26, 24, 62, 66, 1],
              [21, 98, 80, 52, 2342, 725, 24, 73, 60, 129],
              [12, 10, 671, 23, 38, 34, 73, 55, 3, 98],
              [92, 81, 74, 88, 99, 54, 62, 569, 27, 67],
              [917, 134, 2, 51, 1, 63, 15, 93, 151, 10],
              [52, 267, 11, 26, 77, 84, 27, 24, 98, 3],
              [16, 136, 166, 99, 823, 74, 27, 235, 26, 7]
            ]
    result = IntegerSearcher.new(array).find_largest

    expect(result).to eq [776666252415262422110, 988073725605224234221129,
                          98736715538343231210, 999288817467625695427,
                          939176351215151134110, 98847752327267262411,
                          99823774272623516616136]
    expect((Time.now - start_time)/60).to be < 1
  end

  it '5. Encontra menor inteiro possível na lista de números' do
    array = [[12, 48]]

    expect(IntegerSearcher.new(array).find_smaller).to eq [1248]
  end

  it '6. Encontra menor inteiro possível na lista de números' do
    array = [[4, 32, 41]]

    expect(IntegerSearcher.new(array).find_smaller).to eq [32414]
  end

  it '7. Encontra menor inteiro possível nas listas de números' do
    array = [
              [34, 97, 1, 23, 95, 347, 9, 12],
              [62, 35, 26, 61, 63, 345, 334, 2]
            ]

    expect(IntegerSearcher.new(array).find_smaller).to eq [112233434795979, 22633434535616263]
  end

  it '8. Encontra menor inteiro possível nas listas de números' do
    start_time = Time.now
    array = [
              [10, 7, 76, 415, 22, 52, 26, 24, 62, 66, 1],
              [21, 98, 80, 52, 2342, 725, 24, 73, 60, 129],
              [12, 10, 671, 23, 38, 34, 73, 55, 3, 98],
              [92, 81, 74, 88, 99, 54, 62, 569, 27, 67],
              [917, 134, 2, 51, 1, 63, 15, 93, 151, 10],
              [52, 267, 11, 26, 77, 84, 27, 24, 98, 3],
              [16, 136, 166, 99, 823, 74, 27, 235, 26, 7]
            ]
    result = IntegerSearcher.new(array).find_smaller

    expect(result).to eq [101222426415526266767, 129212342245260725738098, 
                          10122333438556717398, 
                          275456962677481889299, 101134151152516391793, 
                          11242626727352778498, 13616166235262774782399]
    expect((Time.now - start_time)/60).to be < 1
  end
end