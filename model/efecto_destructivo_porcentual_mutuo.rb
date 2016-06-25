require_relative '../model/efecto'

class EfectoDestructivoPorcentualMutuo < Efecto

  def aplicar_efecto(objeto_colisionador, objeto_colisionado)
    variacion_de_vida_del_objeto_colisionador = objeto_colisionador.vida * variacion_de_atributo
    variacion_de_vida_del_objeto_colisionado = objeto_colisionado.vida * variacion_de_atributo
    objeto_colisionador.vida -= variacion_de_vida_del_objeto_colisionador
    objeto_colisionado.vida -= variacion_de_vida_del_objeto_colisionado
  end

end
