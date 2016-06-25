require 'rspec'
require 'spec_helper'
require_relative '../model/asteroide'

describe 'Asteroide' do

  it 'should almacenar vida desde su creacion' do
    asteroide = Asteroide.new 100, 0

    expect(asteroide.vida).to eq 100
  end

  it 'should almacenar masa desde su creacion' do
    asteroide = Asteroide.new 100, 15

    expect(asteroide.masa).to eq 15
  end

  it 'should tener 100 puntos de vida en su creacion' do
    asteroide = Asteroide.new

    expect(asteroide.vida).to eq 100
  end

  it 'should tener 100 puntos de masa en su creacion' do
    asteroide = Asteroide.new

    expect(asteroide.masa).to eq 100
  end

  it 'should contener una nave en un mapa desde su creacion' do
    asteroide = Asteroide.new 100, 15

    expect(asteroide.efectos.key?(Nave)).to eq true
  end

  it 'should contener una bomba en un mapa desde su creacion' do
    asteroide = Asteroide.new 100, 15

    expect(asteroide.efectos.key?(Bomba)).to eq true
  end

  it 'should contener una estrella en un mapa desde su creacion' do
    asteroide = Asteroide.new 100, 15

    expect(asteroide.efectos.key?(Estrella)).to eq true
  end

  it 'should contener un misil en un mapa desde su creacion' do
    asteroide = Asteroide.new 100, 15

    expect(asteroide.efectos.key?(Misil)).to eq true
  end

  it 'should contener un asteroide en un mapa desde su creacion' do
    asteroide = Asteroide.new 100, 15

    expect(asteroide.efectos.key?(Asteroide)).to eq true
  end

  it 'should no estar vivo si su vida es nula' do
    asteroide = Asteroide.new 0, 15

    expect(asteroide.esta_vivo).to eq false
  end

  it 'should no estar vivo si su masa es nula' do
    asteroide = Asteroide.new 90, 0

    expect(asteroide.esta_vivo).to eq false
  end

  it 'should almacenar como minimo vida en 0' do
    asteroide = Asteroide.new -30, 100

    expect(asteroide.vida).to eq 0
  end

  it 'should almacenar como minimo masa en 0' do
    asteroide = Asteroide.new 70, -100

    expect(asteroide.masa).to eq 0
  end

  it 'should ganar el 10% de la masa de la nave cuando colisiona con una nave' do
    asteroide = Asteroide.new 100, 50
    nave = Nave.new 10, 25

    asteroide.colisiona_con nave

    expect(asteroide.masa).to eq 52.5
  end

  it 'should no perder vida cuando colisiona con una bomba' do
    asteroide = Asteroide.new 100, 20
    bomba = Bomba.new 10, 80

    asteroide.colisiona_con bomba

    expect(asteroide.vida).to eq 100
  end

  it 'should no perder masa cuando colisiona con una bomba' do
    asteroide = Asteroide.new 10, 15
    bomba = Bomba.new 10, 80

    asteroide.colisiona_con bomba

    expect(asteroide.masa).to eq 15
  end

  it 'should no perder vida cuando colisiona con un misil' do
    asteroide = Asteroide.new 10, 95
    misil = Misil.new 80, 160

    asteroide.colisiona_con misil

    expect(asteroide.vida).to eq 10
  end

  it 'should no perder masa cuando colisiona con un misil' do
    asteroide = Asteroide.new 10, 95
    misil = Misil.new 80, 160

    asteroide.colisiona_con misil

    expect(asteroide.masa).to eq 95
  end

  it 'should no perder vida cuando colisiona con otro asteroide' do
    asteroide_1 = Asteroide.new 110, 95
    asteroide_2 = Asteroide.new 70, 120

    asteroide_1.colisiona_con asteroide_2

    expect(asteroide_1.vida).to eq 110
  end

  it 'should no perder masa cuando colisiona con otro asteroide' do
    asteroide_1 = Asteroide.new 110, 95
    asteroide_2 = Asteroide.new 70, 120

    asteroide_1.colisiona_con asteroide_2

    expect(asteroide_1.masa).to eq 95
  end

  it 'should no perder vida cuando colisiona con una estrella' do
    asteroide = Asteroide.new 100, 210
    estrella = Estrella.new 55, 300

    asteroide.colisiona_con estrella

    expect(asteroide.vida).to eq 100
  end

  it 'should no perder masa cuando colisiona con una estrella' do
    asteroide = Asteroide.new 100, 210
    estrella = Estrella.new 55, 300

    asteroide.colisiona_con estrella

    expect(asteroide.masa).to eq 210
  end

  it 'should poder agregar nuevos objetos espaciales y efectos asociados' do
    misil = Misil.new
    asteroide = Asteroide.new

    asteroide.agregar_colision misil, "cualquier_efecto"

    expect(asteroide.efectos[Misil]).to eq "cualquier_efecto"
  end

end
