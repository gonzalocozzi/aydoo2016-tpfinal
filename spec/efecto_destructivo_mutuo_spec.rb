require 'rspec'
require_relative '../model/efecto_destructivo'

describe 'EfectoDestructivoMutuo' do

  it 'should almacenar variacion que hara en la vida desde su creacion' do
    efecto_destructivo_mutuo = EfectoDestructivo.new 75

    expect(efecto_destructivo_mutuo.variacion_de_vida).to eq 75
  end

end
