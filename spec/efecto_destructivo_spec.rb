require 'rspec'
require_relative '../model/efecto_destructivo'

describe 'EfectoDestructivo' do

  it 'should almacenar variacion que hara en la masa desde su creacion' do
    efecto_destructivo = EfectoDestructivo.new 40

    expect(efecto_destructivo.variacion_de_vida).to eq 40
  end

end
