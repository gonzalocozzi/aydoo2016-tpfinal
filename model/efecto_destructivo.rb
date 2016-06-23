class EfectoDestructivo

  attr_reader :variacion_de_vida

  def initialize(variacion_de_vida)
    @variacion_de_vida = variacion_de_vida
  end

  def aplicar_efecto(objeto_colisionador)
  objeto_colisionador.vida -= @variacion_de_vida
end

end
