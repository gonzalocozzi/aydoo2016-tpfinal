require 'rspec'
require 'spec_helper'
require_relative '../model/colision'

describe 'Colision' do

  it 'deberia quitarle 100 puntos de vida a una nave que colisiona con otra nave' do
    nave_1 = Nave.new 110, 20
    nave_2 = Nave.new 250, 15
    colision = Colision.new

    colision.colisionar nave_1, nave_2

    expect(nave_1.vida).to eq 10
  end

  it 'deberia quitarle 100 puntos de vida a una nave que es colisionada por otra nave' do
    nave_1 = Nave.new 110, 20
    nave_2 = Nave.new 250, 15
    colision = Colision.new

    colision.colisionar nave_1, nave_2

    expect(nave_2.vida).to eq 150
  end

end
