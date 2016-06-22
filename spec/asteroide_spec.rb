require 'rspec'
require_relative '../model/asteroide'

describe 'Asteroide' do

  it 'should almacenar vida desde su creacion' do
    asteroide = Asteroide.new 100, 0

    expect(asteroide.vida).to eq 100
  end

  it 'should almacenar masa desde su creacion' do
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

  it 'should contener una estrella en un mapa desde su creacion' do
    asteroide = Asteroide.new 100, 15

    expect(asteroide.efectos.key?(Estrella)).to eq true
  end

  it 'should contener un misil en un mapa desde su creacion' do
    asteroide = Asteroide.new 100, 15

    expect(asteroide.efectos.key?(Misil)).to eq true
  end

  it 'should contener un asteroide en un mapa desde su creacion' do
    asteroide = Asteroide.new 100, 15

    expect(asteroide.efectos.key?(Asteroide)).to eq true
  end

  it 'should no estar vivo si su vida es nula' do
    asteroide = Asteroide.new 0, 15

    expect(asteroide.esta_vivo).to eq false
  end

  it 'should no estar vivo si su masa es nula' do
    asteroide = Asteroide.new 90, 0

    expect(asteroide.esta_vivo).to eq false
  end

end
