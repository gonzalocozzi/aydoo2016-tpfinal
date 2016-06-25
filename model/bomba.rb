class Bomba

  attr_accessor :vida
  attr_reader :masa, :efectos, :esta_vivo

  def initialize(vida, masa)
    @vida = vida
    @masa = masa
    @efectos = Hash.new
    @efectos[Asteroide] = EfectoDestructivoPorcentual.new 1
    @efectos[Nave] = EfectoDestructivo.new 100
    @efectos[Estrella] = EfectoDestructivo.new 100
    @efectos[Misil] = EfectoDestructivoPorcentual.new 0.5
    @efectos[Bomba] = EfectoDestructivoMutuo.new 100
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
