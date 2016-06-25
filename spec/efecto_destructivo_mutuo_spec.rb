require 'rspec'
require 'spec_helper'
require_relative '../model/efecto_destructivo_mutuo'

describe 'EfectoDestructivoMutuo' do

  it 'deberia almacenar variacion que hara en la vida desde su creacion' do
    efecto_destructivo_mutuo = EfectoDestructivoMutuo.new 75

    expect(efecto_destructivo_mutuo.variacion_de_atributo).to eq 75
  end

  it 'deberia quitar vida a un objeto espacial que colisiona a otro objeto espacial' do
    efecto_destructivo_mutuo = EfectoDestructivoMutuo.new 50
    misil = Misil.new 80, 100
    asteroide = Asteroide.new 25, 60

    efecto_destructivo_mutuo.aplicar_efecto misil, asteroide

    expect(misil.vida).to eq 30
  end

  it 'deberia quitar vida a un objeto espacial que es colisionado por otro objeto espacial' do
    efecto_destructivo_mutuo = EfectoDestructivoMutuo.new 50
    misil = Misil.new 80, 100
    asteroide = Asteroide.new 25, 60

    efecto_destructivo_mutuo.aplicar_efecto misil, asteroide

    expect(asteroide.vida).to eq -25
  end

end
