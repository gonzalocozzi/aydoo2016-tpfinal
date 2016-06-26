require 'rspec'
require 'spec_helper'
require_relative '../model/estrella'

describe 'Estrella' do

  it 'deberia almacenar vida cuando se instancia el objeto' do
    estrella = Estrella.new 70, 0

    expect(estrella.vida).to eq 70
  end

  it 'deberia almacenar masa cuando se instancia el objeto' do
    estrella = Estrella.new 100, 45

    expect(estrella.masa).to eq 45
  end

  it 'deberia tener 100 puntos de vida cuando se instancia el objeto' do
    estrella = Estrella.new

    expect(estrella.vida).to eq 100
  end

  it 'deberia tener 100 puntos de masa cuando se instancia el objeto' do
    estrella = Estrella.new

    expect(estrella.masa).to eq 100
  end

  it 'deberia contener un asteroide en un mapa cuando se instancia el objeto' do
    estrella = Estrella.new 100, 45

    expect(estrella.efectos.key?(Asteroide)).to eq true
  end

  it 'deberia contener una bomba en un mapa cuando se instancia el objeto' do
    estrella = Estrella.new 100, 45

    expect(estrella.efectos.key?(Bomba)).to eq true
  end

  it 'deberia contener una nave en un mapa cuando se instancia el objeto' do
    estrella = Estrella.new 100, 45

    expect(estrella.efectos.key?(Nave)).to eq true
  end

  it 'deberia contener un misil en un mapa cuando se instancia el objeto' do
    estrella = Estrella.new 100, 45

    expect(estrella.efectos.key?(Misil)).to eq true
  end

  it 'deberia contener una estrella en un mapa cuando se instancia el objeto' do
    estrella = Estrella.new 100, 45

    expect(estrella.efectos.key?(Estrella)).to eq true
  end

  it 'deberia no estar viva cuando su vida es nula' do
    estrella = Estrella.new 0, 45

    expect(estrella.esta_vivo).to eq false
  end

  it 'deberia no estar viva cuando su masa es nula' do
    estrella = Estrella.new 10, 0

    expect(estrella.esta_vivo).to eq false
  end

  it 'deberia almacenar como minimo vida en 0' do
    estrella = Estrella.new -1, 0

    expect(estrella.vida).to eq 0
  end

  it 'deberia almacenar como minimo masa en 0' do
    estrella = Estrella.new 10, -20

    expect(estrella.masa).to eq 0
  end

  it 'deberia perder el 100% de su vida cuando colisiona con una nave' do
    estrella = Estrella.new 50, 45
    nave = Nave.new 250, 15

    estrella.colisiona_con nave

    expect(estrella.vida).to eq 0
  end

  it 'deberia no perder vida cuando colisiona con un misil' do
    estrella = Estrella.new 50, 45
    misil = Misil.new 80, 160

    estrella.colisiona_con misil

    expect(estrella.vida).to eq 50
  end

  it 'deberia no perder masa cuando colisiona con un misil' do
    estrella = Estrella.new 50, 45
    misil = Misil.new 80, 160

    estrella.colisiona_con misil

    expect(estrella.masa).to eq 45
  end

  it 'deberia perder el 100% de su vida cuando colisiona con una bomba' do
    estrella = Estrella.new 50, 45
    bomba = Bomba.new 100, 10

    estrella.colisiona_con bomba

    expect(estrella.vida).to eq 0
  end

  it 'deberia perder el 100% de su vida cuando colisiona con un asteroide' do
    estrella = Estrella.new 50, 45
    asteroide = Asteroide.new 180, 20

    estrella.colisiona_con asteroide

    expect(estrella.vida).to eq 0
  end

  it 'deberia perder el 100% de su vida cuando colisiona con otra estrella' do
    estrella_1 = Estrella.new 50, 45
    estrella_2 = Estrella.new 100, 100

    estrella_1.colisiona_con estrella_2

    expect(estrella_1.vida).to eq 0
  end

  it 'deberia quitarle el 100% de la vida a la otra estrella cuando colisiona con otra estrella' do
    estrella_1 = Estrella.new 50, 45
    estrella_2 = Estrella.new 100, 100

    estrella_1.colisiona_con estrella_2

    expect(estrella_2.vida).to eq 0
  end

  it 'deberia poder agregar nuevos objetos espaciales y efectos asociados' do
    estrella = Estrella.new
    bomba = Bomba.new

    estrella.agregar_colision bomba, "cualquier_efecto"

    expect(estrella.efectos[Bomba]).to eq "cualquier_efecto"
  end

end
