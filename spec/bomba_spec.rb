require 'rspec'
require 'spec_helper'
require_relative '../model/bomba'

describe 'Bomba' do

  it 'deberia almacenar vida cuando se instancia el objeto' do
    bomba = Bomba.new 185, 50

    expect(bomba.vida).to eq 185
  end

  it 'deberia almacenar masa cuando se instancia el objeto' do
    bomba = Bomba.new 185, 50

    expect(bomba.masa).to eq 50
  end

  it 'deberia tener 100 puntos de vida cuando se instancia el objeto' do
    bomba = Bomba.new

    expect(bomba.vida).to eq 100
  end

  it 'deberia tener 100 puntos de masa cuando se instancia el objeto' do
    bomba = Bomba.new

    expect(bomba.masa).to eq 100
  end

  it 'deberia contener un asteroide en un mapa cuando se instancia el objeto' do
    bomba = Bomba.new 185, 50

    expect(bomba.efectos.key?(Asteroide)).to eq true
  end

  it 'deberia contener una nave en un mapa cuando se instancia el objeto' do
    bomba = Bomba.new 185, 50

    expect(bomba.efectos.key?(Nave)).to eq true
  end

  it 'deberia contener una estrella en un mapa cuando se instancia el objeto' do
    bomba = Bomba.new 185, 50

    expect(bomba.efectos.key?(Estrella)).to eq true
  end

  it 'deberia contener un misil en un mapa cuando se instancia el objeto' do
    bomba = Bomba.new 185, 50

    expect(bomba.efectos.key?(Misil)).to eq true
  end

  it 'deberia contener una bomba en un mapa cuando se instancia el objeto' do
    bomba = Bomba.new 185, 50

    expect(bomba.efectos.key?(Bomba)).to eq true
  end

  it 'deberia no estar viva cuando su vida es nula' do
    bomba = Bomba.new 0, 50

    expect(bomba.esta_vivo).to eq false
  end

  it 'deberia no estar viva cuando su masa es nula' do
    bomba = Bomba.new 30, 0

    expect(bomba.esta_vivo).to eq false
  end

  it 'deberia almacenar como minimo vida en 0' do
    bomba = Bomba.new -30, 0

    expect(bomba.vida).to eq 0
  end

  it 'deberia almacenar como minimo masa en 0' do
    bomba = Bomba.new 30, -20

    expect(bomba.masa).to eq 0
  end

  it 'deberia perder 100 puntos de vida cuando colisiona con una nave' do
    bomba = Bomba.new 150, 50
    nave = Nave.new 250, 15

    bomba.colisiona_con nave

    expect(bomba.vida).to eq 50
  end

  it 'deberia perder el 50% de su vida cuando colisiona con un misil' do
    bomba = Bomba.new 150, 50
    misil = Misil.new 100, 100

    bomba.colisiona_con misil

    expect(bomba.vida).to eq 75
  end

  it 'deberia perder 100 puntos de vida cuando colisiona con otra bomba' do
    bomba_1 = Bomba.new 100, 50
    bomba_2 = Bomba.new 150, 50

    bomba_1.colisiona_con bomba_2

    expect(bomba_1.vida).to eq 0
  end

  it 'deberia hacerle perder 100 puntos de vida a la otra nomba cuando colisiona con otra bomba' do
    bomba_1 = Bomba.new 100, 50
    bomba_2 = Bomba.new 150, 50

    bomba_1.colisiona_con bomba_2

    expect(bomba_2.vida).to eq 50
  end

  it 'deberia perder el 100% de su vida cuando colisiona con un asteroide' do
    bomba = Bomba.new 250, 50
    asteroide = Asteroide.new 100, 100

    bomba.colisiona_con asteroide

    expect(bomba.vida).to eq 0
  end

  it 'deberia perder 100 puntos de vida cuando colisiona con una estrella' do
    bomba = Bomba.new 500, 50
    estrella = Estrella.new 150, 50

    bomba.colisiona_con estrella

    expect(bomba.vida).to eq 400
  end

  it 'deberia poder agregar nuevos objetos espaciales y efectos asociados' do
    bomba = Bomba.new
    nave = Nave.new

    bomba.agregar_colision nave, "cualquier_efecto"

    expect(bomba.efectos[Nave]).to eq "cualquier_efecto"
  end

  it 'deberia poder quitar objetos espaciales y efectos asociados' do
    bomba = Bomba.new

    bomba.quitar_colision Nave

    expect(bomba.efectos[Nave]).to eq nil
  end

end
