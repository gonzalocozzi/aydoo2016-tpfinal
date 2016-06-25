require_relative '../model/objeto_sin_vida_error'

class Colision

  def colisionar(objeto_espacial_1, objeto_espacial_2)

    if !objeto_espacial_1.esta_vivo || !objeto_espacial_2.esta_vivo
      fail ObjetoSinVidaError.new
    end

    copia_de_objeto_espacial_1 = objeto_espacial_1.clone
    copia_de_objeto_espacial_2 = objeto_espacial_2.clone
    objeto_espacial_1.colisiona_con copia_de_objeto_espacial_2
    objeto_espacial_2.colisiona_con copia_de_objeto_espacial_1
  end

end
