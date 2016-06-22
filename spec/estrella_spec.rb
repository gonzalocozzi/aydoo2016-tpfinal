require 'rspec'
require_relative '../model/estrella'

describe 'Estrella' do

  it 'should almacenar vida en su creacion' do
    estrella = Estrella.new 70, 0

    expect(estrella.vida).to eq 70
  end

  it 'should almacenar masa en su creacion' do
    estrella = Estrella.new 100, 45

    expect(estrella.masa).to eq 45
  end

end
