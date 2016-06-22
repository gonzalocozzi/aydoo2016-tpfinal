require 'rspec'
require_relative '../model/asteroide'

describe 'Asteroide' do

  it 'should almacenar vida en su creacion' do
    asteroide = Asteroide.new 100, 0

    expect(asteroide.vida).to eq 100
  end

  it 'should almacenar masa en su creacion' do
    asteroide = Asteroide.new 100, 15

    expect(asteroide.masa).to eq 15
  end

end
