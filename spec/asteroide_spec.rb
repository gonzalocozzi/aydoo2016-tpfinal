require 'rspec'
require_relative '../model/asteroide'

describe 'Asteroide' do

  it 'should almacenar vida en su creacion' do
    asteroide = Asteroide.new 100, 0

    expect(asteroide.vida).to eq 100
  end

  it 'should almacenar masa en su creacion' do
    asteroide = Asteroide.new 100, 15

    expect(asteroide.masa).to eq 15
  end

  it 'should contener una nave en un mapa desde su creacion' do
    asteroide = Asteroide.new 100, 15

    expect(asteroide.efectos.key?(Nave)).to eq true
  end

  it 'should contener una bomba en un mapa desde su creacion' do
    asteroide = Asteroide.new 100, 15

    expect(asteroide.efectos.key?(Bomba)).to eq true
  end

end
