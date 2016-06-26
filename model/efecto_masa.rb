require_relative '../model/efecto'

class EfectoMasa < Efecto

  #Utiliza un valor entre 0 y 1 para modificar la masa del objeto colisionador en base a
  #  la masa del objeto colisionado
  def aplicar_efecto(objeto_colisionador, objeto_colisionado)
    variacion_de_masa_del_objeto_colisionador = objeto_colisionado.masa * variacion_de_atributo
    objeto_colisionador.masa += variacion_de_masa_del_objeto_colisionador
  end

end
