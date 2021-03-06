require 'rspec'
require 'spec_helper'

describe 'EfectoDestructivoPorcentualMutuo' do

  it 'deberia almacenar variacion que hara en la vida cuando se instancia el objeto' do
    efecto_destructivo_porcentual_mutuo = EfectoDestructivoPorcentualMutuo.new 0.85

    expect(efecto_destructivo_porcentual_mutuo.variacion_de_atributo).to eq 0.85
  end

  it 'deberia quitar vida a un objeto espacial que colisiona con otro objeto espacial' do
    efecto_destructivo_porcentual_mutuo = EfectoDestructivoPorcentualMutuo.new 0.5
    estrella = Estrella.new 80, 100
    misil = Misil.new 25, 30

    efecto_destructivo_porcentual_mutuo.aplicar_efecto estrella, misil

    expect(estrella.vida).to eq 40
  end

  it 'deberia quitar vida a un objeto espacial que es colisionado por otro objeto espacial' do
    efecto_destructivo_porcentual_mutuo = EfectoDestructivoPorcentualMutuo.new 0.2
    estrella = Estrella.new 80, 100
    misil = Misil.new 25, 30

    efecto_destructivo_porcentual_mutuo.aplicar_efecto estrella, misil

    expect(misil.vida).to eq 20
  end

end
