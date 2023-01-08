require 'spec_helper'

describe 'PasswordValidator' do
  it '1: recebe senha com todas as validações corretas e retorna válida' do
    result = PasswordValidator.new('11345').check

    expect(result).to eq 'Válida'
  end

  it '2: recebe senha com todas as validações corretas e retorna válida' do
    result = PasswordValidator.new('123444789').check
    expect(result).to eq 'Válida'
  end

  it '3: recebe senha com todas as validações corretas e retorna válida' do
    result = PasswordValidator.new('22334455').check

    expect(result).to eq 'Válida'
  end

  it '4: recebe senha com menos de 5 caracteres e retorna inválida' do
    result = PasswordValidator.new('1223').check

    expect(result).to eq 'Inválida'
  end

  it '5: recebe senha com números fora de ordem crescente e retorna inválida' do
    result = PasswordValidator.new('52352566').check

    expect(result).to eq 'Inválida'
  end

  it '6: recebe senha sem números repetidos e retorna inválida' do
    result = PasswordValidator.new('345789').check

    expect(result).to eq 'Inválida'
  end
end
