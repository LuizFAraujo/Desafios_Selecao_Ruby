require 'spec_helper'

describe 'PersonalCode' do
  it '1: Recebe uma hash e retorna a string: CHEBRN61T1.' do
    data = {
      'name': 'Brendan',
      'surname': 'Eich',
      'birthdate': '01/12/1961'
    }

    expect(PersonalCode.new.generate(data)).to eq('CHEBRN61T1')
  end

  it '2: Recebe uma hash e retorna a string: MSOMCK28A7.' do
    data = {
      'name': 'Mickey',
      'surname': 'Mouse',
      'birthdate': '16/01/1928'
    }

    expect(PersonalCode.new.generate(data)).to eq('MSOMCK28A7')
  end
  
  it '3: Recebe uma hash e retorna a string CRUMRA67S1.' do
    data = {
      "name": "Marie", 
      "surname": "Curie", 
      "birthdate": "19/11/1867"
    }

    expect(PersonalCode.new.generate(data)).to eq('CRUMRA67S1')
  end

  it '4: Recebe uma hash e retorna a string BWODVD47A8.' do
    data = {
      "name": "David", 
      "surname": "Bowie", 
      "birthdate": "08/01/1947"
    }

    expect(PersonalCode.new.generate(data)).to eq('BWODVD47A8')
  end

  it '5: Recebe uma hash e retorna a string CPNLAX99A2.' do
    data = {
      "name": "Al", 
      "surname": "Capone", 
      "birthdate": "29/01/1899"
    }

    expect(PersonalCode.new.generate(data)).to eq('CPNLAX99A2')
  end
end
