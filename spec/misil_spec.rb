require 'rspec'
require_relative '../model/misil'

describe 'Misil' do

  it 'should almacenar vida en su creacion' do
    misil = Misil.new 100

    expect(misil.vida).to eq 100
  end

end
