require_relative '../model/efecto'

class EfectoDestructivoPorcentualMutuo < Efecto

  #Utiliza un valor entre 0 y 1 para quitarle un porcentaje de vida a ambos objetos espaciales
  #1 es 100% y 0 es 0%
  def aplicar_efecto(objeto_colisionador, objeto_colisionado)
    variacion_de_vida_del_objeto_colisionador = objeto_colisionador.vida * variacion_de_atributo
    variacion_de_vida_del_objeto_colisionado = objeto_colisionado.vida * variacion_de_atributo
    objeto_colisionador.vida -= variacion_de_vida_del_objeto_colisionador
    objeto_colisionado.vida -= variacion_de_vida_del_objeto_colisionado
  end

end
