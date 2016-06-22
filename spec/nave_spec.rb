require 'rspec'
require_relative '../model/nave'

describe 'Nave' do

  it 'should almacenar vida en su creacion' do
    nave = Nave.new 100, 0

    expect(nave.vida).to eq 100
  end

  it 'should almacenar masa en su creacion' do
    nave = Nave.new 100, 20

    expect(nave.masa).to eq 20
  end

end
