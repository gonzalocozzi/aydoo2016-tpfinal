require 'rspec'
require_relative '../model/efecto_constructivo'

describe 'EfectoConstructivo' do

  it 'should almacenar variacion que hara en la vida desde su creacion' do
    efecto_constructivo = EfectoConstructivo.new 0.7

    expect(efecto_constructivo.variacion_de_vida).to eq 0.7
  end

end
