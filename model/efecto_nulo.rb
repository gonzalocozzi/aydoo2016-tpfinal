require_relative '../model/efecto'

class EfectoNulo < Efecto

  def initialize
    super 0
  end

  #Este efecto existe a instancia del negocio, no realiza ninguna operacion
  def aplicar_efecto(objeto_colisionador, objeto_colisionado); end

end
