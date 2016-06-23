require 'rspec'
require_relative '../model/efecto_destructivo_porcentual'

describe 'EfectoDestructivoPorcentual' do

  it 'should almacenar variacion que hara en la vida desde su creacion' do
    efecto_destructivo_porcentual = EfectoDestructivoPorcentual.new 0.3

    expect(efecto_destructivo_porcentual.variacion_de_vida).to eq 0.3
  end

  it 'should quitar vida a un objeto espacial' do
    efecto_destructivo_porcentual = EfectoDestructivoPorcentual.new 0.5
    estrella = Estrella.new 80, 100

    efecto_destructivo_porcentual.aplicar_efecto estrella

    expect(estrella.vida).to eq 40
  end

end
