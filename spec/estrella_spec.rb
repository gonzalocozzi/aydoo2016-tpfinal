require 'rspec'
require_relative '../model/estrella'

describe 'Estrella' do

  it 'should almacenar vida desde su creacion' do
    estrella = Estrella.new 70, 0

    expect(estrella.vida).to eq 70
  end

  it 'should almacenar masa desde su creacion' do
    estrella = Estrella.new 100, 45

    expect(estrella.masa).to eq 45
  end

  it 'should contener un asteroide en un mapa desde su creacion' do
    estrella = Estrella.new 100, 45

    expect(estrella.efectos.key?(Asteroide)).to eq true
  end

  it 'should contener una bomba en un mapa desde su creacion' do
    estrella = Estrella.new 100, 45

    expect(estrella.efectos.key?(Bomba)).to eq true
  end

  it 'should contener una nave en un mapa desde su creacion' do
    estrella = Estrella.new 100, 45

    expect(estrella.efectos.key?(Nave)).to eq true
  end

  it 'should contener un misil en un mapa desde su creacion' do
    estrella = Estrella.new 100, 45

    expect(estrella.efectos.key?(Misil)).to eq true
  end

  it 'should contener una estrella en un mapa desde su creacion' do
    estrella = Estrella.new 100, 45

    expect(estrella.efectos.key?(Estrella)).to eq true
  end

  it 'should no estar viva si su vida es nula' do
    estrella = Estrella.new 0, 45

    expect(estrella.esta_vivo).to eq false
  end

  it 'should no estar viva si su masa es nula' do
    estrella = Estrella.new 10, 0

    expect(estrella.esta_vivo).to eq false
  end

end
