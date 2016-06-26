require 'rspec'
require 'spec_helper'
require_relative '../model/efecto_destructivo_porcentual'
require_relative '../model/estrella'

describe 'EfectoDestructivoPorcentual' do

  it 'deberia almacenar variacion que hara en la vida cuando se instancia el objeto' do
    efecto_destructivo_porcentual = EfectoDestructivoPorcentual.new 0.3

    expect(efecto_destructivo_porcentual.variacion_de_atributo).to eq 0.3
  end

  it 'deberia quitar vida a un objeto espacial' do
    efecto_destructivo_porcentual = EfectoDestructivoPorcentual.new 0.5
    estrella = Estrella.new 80, 100

    efecto_destructivo_porcentual.aplicar_efecto estrella, nil

    expect(estrella.vida).to eq 40
  end

end
