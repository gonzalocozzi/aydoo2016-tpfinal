class Estrella

  attr_accessor :vida, :masa
  attr_reader :efectos

  def initialize(vida, masa)
    @vida = vida
    @masa = masa
    @efectos = Hash.new
    @efectos[Asteroide] = 0
  end

end
