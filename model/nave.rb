require_relative '../model/asteroide'
require_relative '../model/bomba'

class Nave

  attr_accessor :vida, :masa
  attr_reader :efectos

  def initialize(vida, masa)
    @vida = vida
    @masa = masa
    @efectos = Hash.new
    @efectos[Asteroide] = 0
    @efectos[Bomba] = 0
    @efectos[Estrella] = 0
    @efectos[Misil] = 0
  end

end
