require_relative '../model/efecto'

class EfectoDestructivoMutuo < Efecto

  #Utiliza un valor entero para quitarle (o agregarle, si es negativo) la misma cantidad
  #  de vida a ambos objetos espaciales
  def aplicar_efecto(objeto_colisionador, objeto_colisionado)
    objeto_colisionador.vida -= variacion_de_atributo
    objeto_colisionado.vida -= variacion_de_atributo
  end

end
