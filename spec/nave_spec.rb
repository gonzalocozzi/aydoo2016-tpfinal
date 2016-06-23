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

  it 'should no estar viva si su masa es nula' do
    nave = Nave.new 10, 0

    expect(nave.esta_vivo).to eq false
  end

  it 'should almacenar como minimo vida en 0' do
    nave = Nave.new -5, 20

    expect(nave.vida).to eq 0
  end

  it 'should almacenar como minimo masa en 0' do
    nave = Nave.new 10, -20

    expect(nave.masa).to eq 0
  end

  it 'should perder 100 puntos de vida cuando colisiona con otra nave' do
    nave_1 = Nave.new 110, 20
    nave_2 = Nave.new 250, 15

    nave_1.colisiona_con nave_2

    expect(nave_1.vida).to eq 10
  end

  it 'should perder 100 puntos de vida cuando colisiona con otra nave' do
    nave = Nave.new 70, 20
    misil = Misil.new 100, 10

    nave.colisiona_con misil

    expect(nave.vida).to eq 0
  end

end
