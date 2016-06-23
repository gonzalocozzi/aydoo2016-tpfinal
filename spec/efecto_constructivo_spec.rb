require 'rspec'
require_relative '../model/efecto_constructivo'

describe 'EfectoConstructivo' do

  it 'should almacenar variacion que hara en la vida desde su creacion' do
    efecto_constructivo = EfectoConstructivo.new 0.7

    expect(efecto_constructivo.variacion_de_vida).to eq 0.7
  end

  it 'should variar vida a un objeto espacial en base a la vida de otro objeto espacial' do
    efecto_constructivo = EfectoConstructivo.new 0.7
    bomba = Bomba.new 100, 100
    asteroide = Asteroide.new 50, 50

    efecto_constructivo.aplicar_efecto bomba, asteroide

    expect(bomba.vida).to eq 135
  end

end
