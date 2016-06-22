require 'rspec'
require_relative '../model/nave'

describe 'Nave' do

  it 'should almacenar vida en su creacion' do
    nave = Nave.new 100

    expect(nave.vida).to eq 100
  end

end
