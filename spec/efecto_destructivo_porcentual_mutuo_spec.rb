require 'rspec'
require_relative '../model/efecto_destructivo_porcentual_mutuo'

describe 'EfectoDestructivoPorcentualMutuo' do

  it 'should almacenar variacion que hara en la vida desde su creacion' do
    efecto_destructivo_porcentual_mutuo = EfectoDestructivoPorcentualMutuo.new 0.85

    expect(efecto_destructivo_porcentual_mutuo.variacion_de_vida).to eq 0.85
  end

end
