require 'rspec'
require_relative '../model/efecto_masa'

describe 'EfectoMasa' do

  it 'should almacenar variacion que hara en la masa desde su creacion' do
    efecto_masa = EfectoMasa.new 1.2

    expect(efecto_masa.variacion_de_masa).to eq 1.2
  end

end
