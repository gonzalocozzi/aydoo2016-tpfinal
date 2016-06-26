require 'rspec'
require 'spec_helper'
require_relative '../model/nave'

describe 'Nave' do

  it 'deberia almacenar vida desde su creacion' do
    nave = Nave.new 100, 0

    expect(nave.vida).to eq 100
  end

  it 'deberia almacenar masa desde su creacion' do
    nave = Nave.new 100, 20

    expect(nave.masa).to eq 20
  end

  it 'deberia tener 100 puntos de vida en su creacion' do
    nave = Nave.new

    expect(nave.vida).to eq 100
  end

  it 'deberia tener 100 puntos de masa en su creacion' do
    nave = Nave.new

    expect(nave.masa).to eq 100
  end

  it 'deberia contener un asteroide en un mapa desde su creacion' do
    nave = Nave.new 100, 20

    expect(nave.efectos.key?(Asteroide)).to eq true
  end

  it 'deberia contener una bomba en un mapa desde su creacion' do
    nave = Nave.new 100, 20

    expect(nave.efectos.key?(Bomba)).to eq true
  end

  it 'deberia contener una estrella en un mapa desde su creacion' do
    nave = Nave.new 100, 20

    expect(nave.efectos.key?(Estrella)).to eq true
  end

  it 'deberia contener un misil en un mapa desde su creacion' do
    nave = Nave.new 100, 20

    expect(nave.efectos.key?(Misil)).to eq true
  end

  it 'deberia contener una nave en un mapa desde su creacion' do
    nave = Nave.new 100, 20

    expect(nave.efectos.key?(Nave)).to eq true
  end

  it 'deberia no estar viva si su vida es nula' do
    nave = Nave.new 0, 20

    expect(nave.esta_vivo).to eq false
  end

  it 'deberia no estar viva si su masa es nula' do
    nave = Nave.new 10, 0

    expect(nave.esta_vivo).to eq false
  end

  it 'deberia almacenar como minimo vida en 0' do
    nave = Nave.new -5, 20

    expect(nave.vida).to eq 0
  end

  it 'deberia almacenar como minimo masa en 0' do
    nave = Nave.new 10, -20

    expect(nave.masa).to eq 0
  end

  it 'deberia perder 100 puntos de vida cuando colisiona con otra nave' do
    nave_1 = Nave.new 110, 20
    nave_2 = Nave.new 250, 15

    nave_1.colisiona_con nave_2

    expect(nave_1.vida).to eq 10
  end

  it 'deberia hacerle perder 100 puntos de vida a la otra nave cuando colisiona con otra nave' do
    nave_1 = Nave.new 110, 20
    nave_2 = Nave.new 250, 15

    nave_1.colisiona_con nave_2

    expect(nave_2.vida).to eq 150
  end

  it 'deberia perder 100 puntos de vida cuando colisiona con un misil' do
    nave = Nave.new 70, 20
    misil = Misil.new 100, 10

    nave.colisiona_con misil

    expect(nave.vida).to eq 0
  end

  it 'deberia perder 50 puntos de vida cuando colisiona con una bomba' do
    nave = Nave.new 50, 20
    bomba = Bomba.new 100, 10

    nave.colisiona_con bomba

    expect(nave.vida).to eq 0
  end

  it 'deberia perder masa en un 50% de la masa del asteroide cuando colisiona con un asteroide' do
    nave = Nave.new 50, 20
    asteroide = Asteroide.new 100, 10

    nave.colisiona_con asteroide

    expect(nave.masa).to eq 15
  end

  it 'deberia ganar el 100% de la vida de la estrella cuando colisiona con una estrella' do
    nave = Nave.new 50, 20
    estrella = Estrella.new 50, 10

    nave.colisiona_con estrella

    expect(nave.vida).to eq 100
  end

  it 'deberia poder agregar nuevos objetos espaciales y efectos asociados' do
    nave = Nave.new
    bomba = Bomba.new

    nave.agregar_colision bomba, "cualquier_efecto"

    expect(nave.efectos[Bomba]).to eq "cualquier_efecto"
  end

end
