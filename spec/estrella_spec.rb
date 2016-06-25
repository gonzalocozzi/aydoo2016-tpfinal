require 'rspec'
require 'spec_helper'
require_relative '../model/estrella'

describe 'Estrella' do

  it 'should almacenar vida desde su creacion' do
    estrella = Estrella.new 70, 0

    expect(estrella.vida).to eq 70
  end

  it 'should almacenar masa desde su creacion' do
    estrella = Estrella.new 100, 45

    expect(estrella.masa).to eq 45
  end

  it 'should tener 100 puntos de vida en su creacion' do
    estrella = Estrella.new

    expect(estrella.vida).to eq 100
  end

  it 'should contener un asteroide en un mapa desde su creacion' do
    estrella = Estrella.new 100, 45

    expect(estrella.efectos.key?(Asteroide)).to eq true
  end

  it 'should contener una bomba en un mapa desde su creacion' do
    estrella = Estrella.new 100, 45

    expect(estrella.efectos.key?(Bomba)).to eq true
  end

  it 'should contener una nave en un mapa desde su creacion' do
    estrella = Estrella.new 100, 45

    expect(estrella.efectos.key?(Nave)).to eq true
  end

  it 'should contener un misil en un mapa desde su creacion' do
    estrella = Estrella.new 100, 45

    expect(estrella.efectos.key?(Misil)).to eq true
  end

  it 'should contener una estrella en un mapa desde su creacion' do
    estrella = Estrella.new 100, 45

    expect(estrella.efectos.key?(Estrella)).to eq true
  end

  it 'should no estar viva si su vida es nula' do
    estrella = Estrella.new 0, 45

    expect(estrella.esta_vivo).to eq false
  end

  it 'should no estar viva si su masa es nula' do
    estrella = Estrella.new 10, 0

    expect(estrella.esta_vivo).to eq false
  end

  it 'should almacenar como minimo vida en 0' do
    estrella = Estrella.new -1, 0

    expect(estrella.vida).to eq 0
  end

  it 'should almacenar como minimo masa en 0' do
    estrella = Estrella.new 10, -20

    expect(estrella.masa).to eq 0
  end

  it 'should perder el 100% de su vida cuando colisiona con una nave' do
    estrella = Estrella.new 50, 45
    nave = Nave.new 250, 15

    estrella.colisiona_con nave

    expect(estrella.vida).to eq 0
  end

  it 'should no perder vida cuando colisiona con un misil' do
    estrella = Estrella.new 50, 45
    misil = Misil.new 80, 160

    estrella.colisiona_con misil

    expect(estrella.vida).to eq 50
  end

  it 'should no perder masa cuando colisiona con un misil' do
    estrella = Estrella.new 50, 45
    misil = Misil.new 80, 160

    estrella.colisiona_con misil

    expect(estrella.masa).to eq 45
  end

  it 'should perder el 100% de su vida cuando colisiona con una bomba' do
    estrella = Estrella.new 50, 45
    bomba = Bomba.new 100, 10

    estrella.colisiona_con bomba

    expect(estrella.vida).to eq 0
  end

  it 'should perder el 100% de su vida cuando colisiona con un asteroide' do
    estrella = Estrella.new 50, 45
    asteroide = Asteroide.new 180, 20

    estrella.colisiona_con asteroide

    expect(estrella.vida).to eq 0
  end

  it 'should perder el 100% de su vida cuando colisiona con otra estrella' do
    estrella_1 = Estrella.new 50, 45
    estrella_2 = Estrella.new 100, 100

    estrella_1.colisiona_con estrella_2

    expect(estrella_1.vida).to eq 0
  end

  it 'should quitarle el 100% de la vida a la otra estrella cuando colisiona con otra estrella' do
    estrella_1 = Estrella.new 50, 45
    estrella_2 = Estrella.new 100, 100

    estrella_1.colisiona_con estrella_2

    expect(estrella_2.vida).to eq 0
  end

end
