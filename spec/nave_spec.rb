require 'rspec'
require_relative '../model/nave'

describe 'Nave' do

  it 'should almacenar vida desde su creacion' do
    nave = Nave.new 100, 0

    expect(nave.vida).to eq 100
  end

  it 'should almacenar masa desde su creacion' do
    nave = Nave.new 100, 20

    expect(nave.masa).to eq 20
  end

  it 'should contener un asteroide en un mapa desde su creacion' do
    nave = Nave.new 100, 20

    expect(nave.efectos.key?(Asteroide)).to eq true
  end

end
