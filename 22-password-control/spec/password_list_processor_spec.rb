require 'spec_helper'

describe 'PasswordListProcessor' do
  it '1: recebe duas senhas válidas' do
    list = ["12245", "34667"]

    expect(PasswordListProcessor.new(list).process).to eq 2
  end

  it '2: recebe três senhas inválidas' do
    list = ["1334", "345678", "998776"]

    expect(PasswordListProcessor.new(list).process).to eq 0
  end

  it '3: recebe três senhas válidas' do
    list = ["1334", "345678", "1233467", "2489756", "9573749", "1123689", "155679"]

    expect(PasswordListProcessor.new(list).process).to eq 3
  end

  it '4: recebe seis senhas válidas' do
    list = ["1223456", "366789", "987764534", "6234662", "34577", "1778899",
            "11223344", "3456789", "1223", "5135315", "55555", "9087654"]

    expect(PasswordListProcessor.new(list).process).to eq 6
  end
end
