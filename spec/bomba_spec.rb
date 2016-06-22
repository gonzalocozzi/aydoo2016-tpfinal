require 'rspec'
require_relative '../model/bomba'

describe 'Bomba' do

  it 'should almacenar vida desde su creacion' do
    bomba = Bomba.new 185, 50

    expect(bomba.vida).to eq 185
  end

  it 'should almacenar masa desde su creacion' do
    bomba = Bomba.new 185, 50

    expect(bomba.masa).to eq 50
  end

  it 'should contener un asteroide en un mapa desde su creacion' do
    bomba = Bomba.new 185, 50

    expect(bomba.efectos.key?(Asteroide)).to eq true
  end

  it 'should contener una nave en un mapa desde su creacion' do
    bomba = Bomba.new 185, 50

    expect(bomba.efectos.key?(Nave)).to eq true
  end

  it 'should contener una estrella en un mapa desde su creacion' do
    bomba = Bomba.new 185, 50

    expect(bomba.efectos.key?(Estrella)).to eq true
  end

end
