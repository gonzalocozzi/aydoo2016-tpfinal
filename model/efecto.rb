class Efecto

  attr_reader :variacion_de_atributo

  def initialize(variacion_de_atributo)
    @variacion_de_atributo = variacion_de_atributo
  end

  #Ruby no soporta metodos abstractos
  def aplicar_efecto(objeto_colisionador, objeto_colisionado); end

end
