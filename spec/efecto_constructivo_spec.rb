require 'rspec'
require 'spec_helper'
require_relative '../model/efecto_constructivo'
require_relative '../model/asteroide'
require_relative '../model/bomba'

describe 'EfectoConstructivo' do

  it 'deberia almacenar variacion que hara en la vida cuando se instancia el objeto' do
    efecto_constructivo = EfectoConstructivo.new 0.7

    expect(efecto_constructivo.variacion_de_atributo).to eq 0.7
  end

  it 'deberia variar vida a un objeto espacial en base a la vida de otro objeto espacial' do
    efecto_constructivo = EfectoConstructivo.new 0.7
    bomba = Bomba.new 100, 100
    asteroide = Asteroide.new 50, 50

    efecto_constructivo.aplicar_efecto bomba, asteroide

    expect(bomba.vida).to eq 135
  end

end
