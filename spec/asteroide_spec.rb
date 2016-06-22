require 'rspec'
require_relative '../model/asteroide'

describe 'Asteroide' do

  it 'should almacenar vida en su creacion' do
    asteroide = Asteroide.new 100

    expect(asteroide.vida).to eq 100
  end

end
