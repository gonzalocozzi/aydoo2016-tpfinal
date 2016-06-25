require_relative '../model/efecto'

class EfectoDestructivo < Efecto

  def aplicar_efecto(objeto_colisionador, objeto_colisionado)
    objeto_colisionador.vida -= variacion_de_atributo
  end

end
