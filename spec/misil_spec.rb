require 'rspec'
require_relative '../model/misil'

describe 'Misil' do

  it 'should almacenar vida en su creacion' do
    misil = Misil.new 100, 45

    expect(misil.vida).to eq 100
  end

  it 'should almacenar masa en su creacion' do
    misil = Misil.new 100, 45

    expect(misil.masa).to eq 45
  end

end
