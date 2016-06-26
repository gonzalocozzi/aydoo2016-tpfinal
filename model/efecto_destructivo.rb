require_relative '../model/efecto'

class EfectoDestructivo < Efecto

  #Utiliza un valor entero para quitarle un porcentaje de vida al objeto colisionador
  def aplicar_efecto(objeto_colisionador, objeto_colisionado)
    objeto_colisionador.vida -= variacion_de_atributo
  end

end
