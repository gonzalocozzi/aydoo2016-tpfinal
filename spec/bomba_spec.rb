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

  it 'should contener un misil en un mapa desde su creacion' do
    bomba = Bomba.new 185, 50

    expect(bomba.efectos.key?(Misil)).to eq true
  end

  it 'should contener una bomba en un mapa desde su creacion' do
    bomba = Bomba.new 185, 50

    expect(bomba.efectos.key?(Bomba)).to eq true
  end

  it 'should no estar viva si su vida es nula' do
    bomba = Bomba.new 0, 50

    expect(bomba.esta_vivo).to eq false
  end

  it 'should no estar viva si su masa es nula' do
    bomba = Bomba.new 30, 0

    expect(bomba.esta_vivo).to eq false
  end

  it 'should almacenar como minimo vida en 0' do
    bomba = Bomba.new -30, 0

    expect(bomba.vida).to eq 0
  end

  it 'should almacenar como minimo masa en 0' do
    bomba = Bomba.new 30, -20

    expect(bomba.masa).to eq 0
  end

  it 'should perder 100 puntos de vida cuando colisiona con una nave' do
    bomba = Bomba.new 150, 50
    nave = Nave.new 250, 15

    bomba.colisiona_con nave

    expect(bomba.vida).to eq 50
  end

end
