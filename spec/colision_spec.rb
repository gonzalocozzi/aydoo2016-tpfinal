require 'rspec'
require 'spec_helper'
require_relative '../model/colision'

describe 'Colision' do

  it 'deberia quitarle 100 puntos de vida a una nave que colisiona a otra nave' do
    nave_1 = Nave.new 110, 20
    nave_2 = Nave.new 250, 15
    colision = Colision.new

    colision.colisionar nave_1, nave_2

    expect(nave_1.vida).to eq 10
  end

  it 'deberia quitarle 100 puntos de vida a una nave que es colisionada por otra nave' do
    nave_1 = Nave.new 110, 20
    nave_2 = Nave.new 250, 15
    colision = Colision.new

    colision.colisionar nave_1, nave_2

    expect(nave_2.vida).to eq 150
  end

  it 'deberia quitarle 80 puntos de vida a una nave que colisiona con un misil' do
    nave = Nave.new 80, 10
    misil = Misil.new
    colision = Colision.new

    colision.colisionar nave, misil

    expect(nave.vida).to eq 0
  end

  it 'deberia quitarle 100 puntos de vida a un misil que colisiona con una nave' do
    nave = Nave.new 80, 10
    misil = Misil.new 115, 90
    colision = Colision.new

    colision.colisionar misil, nave

    expect(misil.vida).to eq 15
  end

  it 'deberia quitarle 50 puntos de vida a una nave que colisiona con una bomba' do
    nave = Nave.new 80, 10
    bomba = Bomba.new
    colision = Colision.new

    colision.colisionar nave, bomba

    expect(nave.vida).to eq 30
  end

  it 'deberia quitarle 100 puntos de vida a una bomba que colisiona con una nave' do
    nave = Nave.new 80, 10
    bomba = Bomba.new
    colision = Colision.new

    colision.colisionar bomba, nave

    expect(bomba.vida).to eq 0
  end

  #Ejemplo de consigna
  it 'deberia quitarle el 50% de la masa del asteroide a una nave que colisiona con un asteroide' do
    nave = Nave.new
    asteroide = Asteroide.new 50, 100
    colision = Colision.new

    colision.colisionar nave, asteroide

    expect(nave.masa).to eq 50
  end

  #Ejemplo de consigna
  it 'deberia agregarle el 10% de la masa de la nave a un asteroide que colisiona con una nave' do
    nave = Nave.new
    asteroide = Asteroide.new 50, 100
    colision = Colision.new

    colision.colisionar asteroide, nave

    expect(asteroide.masa).to eq 110
  end

  #Ejemplo de consigna
  it 'deberia agregarle el total de la vida de la estrella a una nave que colisiona con una estrella' do
    nave = Nave.new
    estrella = Estrella.new 50, 50
    colision = Colision.new

    colision.colisionar nave, estrella

    expect(nave.vida).to eq 150
  end

  #Ejemplo de consigna
  it 'deberia quitarle toda la vida a una estrella que colisiona con una nave' do
    nave = Nave.new
    estrella = Estrella.new 50, 50
    colision = Colision.new

    colision.colisionar estrella, nave

    expect(estrella.vida).to eq 0
  end

  it 'deberia quitarle 100 puntos de vida un misil que colisiona a otro misil' do
    misil_1 = Misil.new 115, 90
    misil_2 = Misil.new
    colision = Colision.new

    colision.colisionar misil_1, misil_2

    expect(misil_1.vida).to eq 15
  end

  it 'deberia quitarle 100 puntos de vida un misil que es colisionado por otro misil' do
    misil_1 = Misil.new 115, 90
    misil_2 = Misil.new
    colision = Colision.new

    colision.colisionar misil_1, misil_2

    expect(misil_2.vida).to eq 0
  end

  it 'deberia no provocar cambios en la vida de un misil que colisiona con una bomba' do
    misil = Misil.new 115, 90
    bomba = Bomba.new
    colision = Colision.new

    colision.colisionar misil, bomba

    expect(misil.vida).to eq 115
  end

  it 'deberia no provocar cambios en la masa de un misil que colisiona con una bomba' do
    misil = Misil.new 115, 90
    bomba = Bomba.new
    colision = Colision.new

    colision.colisionar misil, bomba

    expect(misil.masa).to eq 90
  end

  it 'deberia quitar la mitad de la vida de una que colisiona con un misil' do
    misil = Misil.new 115, 90
    bomba = Bomba.new
    colision = Colision.new

    colision.colisionar misil, bomba

    expect(bomba.vida).to eq 50
  end

  it 'deberia no provocar cambios en la vida de un misil que colisiona con un asteroide' do
    misil = Misil.new 115, 90
    asteroide = Asteroide.new
    colision = Colision.new

    colision.colisionar misil, asteroide

    expect(misil.vida).to eq 115
  end

  it 'deberia no provocar cambios en la masa de un misil que colisiona con un asteroide' do
    misil = Misil.new 115, 90
    asteroide = Asteroide.new
    colision = Colision.new

    colision.colisionar misil, asteroide

    expect(misil.masa).to eq 90
  end

  it 'deberia no provocar cambios en la vida de un asteroide que colisiona con un misil' do
    misil = Misil.new 115, 90
    asteroide = Asteroide.new
    colision = Colision.new

    colision.colisionar misil, asteroide

    expect(asteroide.vida).to eq 100
  end

  it 'deberia no provocar cambios en la masa de un asteroide que colisiona con un misil' do
    misil = Misil.new 115, 90
    asteroide = Asteroide.new
    colision = Colision.new

    colision.colisionar misil, asteroide

    expect(asteroide.masa).to eq 100
  end

  it 'deberia no provocar cambios en la vida de un misil que colisiona con una estrella' do
    misil = Misil.new 10, 30
    estrella = Estrella.new 50, 10
    colision = Colision.new

    colision.colisionar misil, estrella

    expect(misil.vida).to eq 10
  end

end
