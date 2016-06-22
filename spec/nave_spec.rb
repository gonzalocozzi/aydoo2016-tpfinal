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

  it 'should contener una bomba en un mapa desde su creacion' do
    nave = Nave.new 100, 20

    expect(nave.efectos.key?(Bomba)).to eq true
  end

  it 'should contener una estrella en un mapa desde su creacion' do
    nave = Nave.new 100, 20

    expect(nave.efectos.key?(Estrella)).to eq true
  end

  it 'should contener un misil en un mapa desde su creacion' do
    nave = Nave.new 100, 20

    expect(nave.efectos.key?(Misil)).to eq true
  end

  it 'should contener una nave en un mapa desde su creacion' do
    nave = Nave.new 100, 20

    expect(nave.efectos.key?(Nave)).to eq true
  end

  it 'should no estar viva si su vida es nula' do
    nave = Nave.new 0, 20

    expect(nave.esta_vivo).to eq false
  end

end
