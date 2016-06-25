require_relative '../model/efecto'

class EfectoDestructivoMutuo < Efecto

  def aplicar_efecto(objeto_colisionador, objeto_colisionado)
    objeto_colisionador.vida -= variacion_de_atributo
    objeto_colisionado.vida -= variacion_de_atributo
  end

end
