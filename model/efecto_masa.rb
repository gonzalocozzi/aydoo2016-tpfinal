require_relative '../model/efecto'

class EfectoMasa < Efecto

  def aplicar_efecto(objeto_colisionador, objeto_colisionado)
    variacion_de_masa_del_objeto_colisionador = objeto_colisionado.masa * variacion_de_atributo
    objeto_colisionador.masa += variacion_de_masa_del_objeto_colisionador
  end

end
