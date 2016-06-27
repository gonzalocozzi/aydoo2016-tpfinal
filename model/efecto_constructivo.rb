require_relative '../model/efecto'

class EfectoConstructivo < Efecto

  #Utiliza un valor entre 0 y 1 para agregarle la vida del objeto colisionado al objeto colisionador
  #1 significa que agrega el 100% de la vida, y 0 que no agrega nada de vida
  def aplicar_efecto(objeto_colisionador, objeto_colisionado)
    variacion_de_vida_del_objeto_colisionador = objeto_colisionado.vida * variacion_de_atributo
    objeto_colisionador.vida += variacion_de_vida_del_objeto_colisionador
  end

end
