require 'rspec'
require_relative '../model/misil'

describe 'Misil' do

  it 'should almacenar vida desde su creacion' do
    misil = Misil.new 100, 45

    expect(misil.vida).to eq 100
  end

  it 'should almacenar masa desde su creacion' do
    misil = Misil.new 100, 45

    expect(misil.masa).to eq 45
  end

  it 'should contener un asteroide en un mapa desde su creacion' do
    misil = Misil.new 100, 20

    expect(misil.efectos.key?(Asteroide)).to eq true
  end

  it 'should contener una bomba en un mapa desde su creacion' do
    misil = Misil.new 100, 20

    expect(misil.efectos.key?(Bomba)).to eq true
  end

  it 'should contener una estrella en un mapa desde su creacion' do
    misil = Misil.new 100, 20

    expect(misil.efectos.key?(Estrella)).to eq true
  end

  it 'should contener una nave en un mapa desde su creacion' do
    misil = Misil.new 100, 20

    expect(misil.efectos.key?(Nave)).to eq true
  end

  it 'should contener un misil en un mapa desde su creacion' do
    misil = Misil.new 100, 20

    expect(misil.efectos.key?(Misil)).to eq true
  end

  it 'should no estar vivo si su vida es nula' do
    misil = Misil.new 0, 20

    expect(misil.esta_vivo).to eq false
  end

  it 'should no estar vivo si su masa es nula' do
    misil = Misil.new 60, 0

    expect(misil.esta_vivo).to eq false
  end

  it 'should almacenar como minimo vida en 0' do
    misil = Misil.new -15, 20

    expect(misil.vida).to eq 0
  end

  it 'should almacenar como minimo masa en 0' do
    misil = Misil.new -15, -20

    expect(misil.masa).to eq 0
  end

  it 'should perder 100 puntos de vida cuando colisiona con una nave' do
    misil = Misil.new 110, 20
    nave = Nave.new 250, 15

    misil.colisiona_con nave

    expect(misil.vida).to eq 10
  end

  it 'should perder 100 puntos de vida cuando colisiona con otro misil' do
    misil_1 = Misil.new 200, 20
    misil_2 = Misil.new 110, 20

    misil_1.colisiona_con misil_2

    expect(misil_1.vida).to eq 100
  end

end
