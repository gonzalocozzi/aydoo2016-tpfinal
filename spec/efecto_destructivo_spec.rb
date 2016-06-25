require 'rspec'
require 'spec_helper'
require_relative '../model/efecto_destructivo'

describe 'EfectoDestructivo' do

  it 'should almacenar variacion que hara en la masa desde su creacion' do
    efecto_destructivo = EfectoDestructivo.new 40

    expect(efecto_destructivo.variacion_de_atributo).to eq 40
  end

  it 'should quitar vida a un objeto espacial' do
    efecto_destructivo = EfectoDestructivo.new 75
    misil = Misil.new 80, 100

    efecto_destructivo.aplicar_efecto misil, nil

    expect(misil.vida).to eq 5
  end

end
