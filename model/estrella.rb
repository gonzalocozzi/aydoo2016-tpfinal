class Estrella

  attr_accessor :vida
  attr_reader :masa, :efectos, :esta_vivo

  def initialize(vida, masa)
    @vida = vida
    @masa = masa
    @efectos = Hash.new
    @efectos[Asteroide] = 0
    @efectos[Bomba] = 0
    @efectos[Nave] = 0
    @efectos[Misil] = 0
    @efectos[Estrella] = 0
    definir_estado
  end

  def definir_estado
    if @vida <= 0
      @vida = 0
      @esta_vivo = false
    end
    if @masa <= 0
      @masa = 0
      @esta_vivo = false
    end
  end

end
