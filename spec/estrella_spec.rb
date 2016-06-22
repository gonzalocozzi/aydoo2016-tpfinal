require 'rspec'
require_relative '../model/estrella'

describe 'Estrella' do

  it 'should almacenar vida en su creacion' do
    estrella = Estrella.new 70

    expect(estrella.vida).to eq 70
  end

end
