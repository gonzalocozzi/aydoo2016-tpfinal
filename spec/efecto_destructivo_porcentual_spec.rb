require 'rspec'
require_relative '../model/efecto_destructivo_porcentual'

describe 'EfectoDestructivoPorcentual' do

  it 'should almacenar variacion que hara en la vida desde su creacion' do
    efecto_destructivo_porcentual = EfectoDestructivoPorcentual.new 0.3

    expect(efecto_destructivo_porcentual.variacion_de_vida).to eq 0.3
  end

end
