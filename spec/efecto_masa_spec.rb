require 'rspec'
require 'spec_helper'
require_relative '../model/efecto_masa'

describe 'EfectoMasa' do

  it 'should almacenar variacion que hara en la masa desde su creacion' do
    efecto_masa = EfectoMasa.new 1.2

    expect(efecto_masa.variacion_de_masa).to eq 1.2
  end

  it 'should variar masa a un objeto espacial en base a la masa de otro objeto espacial' do
    efecto_masa = EfectoMasa.new 1.2
    nave = Nave.new 100, 100
    asteroide = Asteroide.new 50, 50

    efecto_masa.aplicar_efecto nave, asteroide

    expect(nave.masa).to eq 160
  end

end
