require_relative '../model/efecto'

class EfectoDestructivoPorcentual < Efecto

  #Utiliza un valor entre 0 y 1 para quitarle un porcentaje de vida al objeto colisionador
  def aplicar_efecto(objeto_colisionador, objeto_colisionado)
    variacion_de_vida_del_objeto_colisionador = objeto_colisionador.vida * variacion_de_atributo
    objeto_colisionador.vida -= variacion_de_vida_del_objeto_colisionador
  end

end
