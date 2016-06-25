class Asteroide

  attr_accessor :vida, :masa
  attr_reader :efectos, :esta_vivo

  def initialize(vida, masa)
    @vida = vida
    @masa = masa
    @efectos = Hash.new
    @efectos[Nave] = EfectoMasa.new 0.1
    @efectos[Bomba] = EfectoDestructivo.new 0
    @efectos[Estrella] = 0
    @efectos[Misil] = EfectoDestructivo.new 0
    @efectos[Asteroide] = EfectoDestructivo.new 0
    definir_estado
  end

  def colisiona_con objeto_espacial
    @efectos[objeto_espacial.class].aplicar_efecto self, objeto_espacial
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
