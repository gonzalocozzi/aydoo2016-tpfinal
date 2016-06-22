require 'rspec'
require_relative '../model/bomba'

describe 'Bomba' do

  it 'should almacenar vida en su creacion' do
    bomba = Bomba.new 185

    expect(bomba.vida).to eq 185
  end

end
