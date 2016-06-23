class EfectoMasa

  attr_reader :variacion_de_masa

  def initialize(variacion_de_masa)
    @variacion_de_masa = variacion_de_masa
  end

  def aplicar_efecto(objeto_colisionador, objeto_colisionado)
    variacion_de_masa_del_objeto_colisionador = objeto_colisionado.masa * @variacion_de_masa
    objeto_colisionador.masa += variacion_de_masa_del_objeto_colisionador
  end

end
