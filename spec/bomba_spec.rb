require 'rspec'
require_relative '../model/bomba'

describe 'Bomba' do

  it 'should almacenar vida en su creacion' do
    bomba = Bomba.new 185, 50

    expect(bomba.vida).to eq 185
  end

  it 'should almacenar masa en su creacion' do
    bomba = Bomba.new 185, 50

    expect(bomba.masa).to eq 50
  end

end
