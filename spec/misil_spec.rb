require 'rspec'
require 'spec_helper'
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

  it 'should hacerle perder 100 puntos de vida al otro misil cuando colisiona con otro misil' do
    misil_1 = Misil.new 200, 20
    misil_2 = Misil.new 110, 20

    misil_1.colisiona_con misil_2

    expect(misil_2.vida).to eq 10
  end

  it 'should no perder vida cuando colisiona con una bomba' do
    misil = Misil.new 200, 20
    bomba = Bomba.new 10, 80

    misil.colisiona_con bomba

    expect(misil.vida).to eq 200
  end

  it 'should no perder masa cuando colisiona con una bomba' do
    misil = Misil.new 200, 20
    bomba = Bomba.new 10, 80

    misil.colisiona_con bomba

    expect(misil.masa).to eq 20
  end

  it 'should no perder vida cuando colisiona con un asteroide' do
    misil = Misil.new 200, 20
    asteroide = Asteroide.new 70, 120

    misil.colisiona_con asteroide

    expect(misil.vida).to eq 200
  end

  it 'should no perder masa cuando colisiona con un asteroide' do
    misil = Misil.new 200, 15
    asteroide = Asteroide.new 70, 120

    misil.colisiona_con asteroide

    expect(misil.masa).to eq 15
  end

  it 'should no perder vida cuando colisiona con una estrella' do
    misil = Misil.new 30, 5
    estrella = Estrella.new 55, 300

    misil.colisiona_con estrella

    expect(misil.vida).to eq 30
  end

  it 'should no perder masa cuando colisiona con una estrella' do
    misil = Misil.new 30, 5
    estrella = Estrella.new 55, 300

    misil.colisiona_con estrella

    expect(misil.masa).to eq 5
  end

end
