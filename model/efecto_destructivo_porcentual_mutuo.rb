class EfectoDestructivoPorcentualMutuo

  attr_reader :variacion_de_vida

  def initialize(variacion_de_vida)
    @variacion_de_vida = variacion_de_vida
  end

  def aplicar_efecto(objeto_colisionador, objeto_colisionado)
    variacion_de_vida_del_objeto_colisionador = objeto_colisionador.vida * @variacion_de_vida
    variacion_de_vida_del_objeto_colisionado = objeto_colisionado.vida * @variacion_de_vida
    objeto_colisionador.vida -= variacion_de_vida_del_objeto_colisionador
    objeto_colisionado.vida -= variacion_de_vida_del_objeto_colisionado
  end

end
