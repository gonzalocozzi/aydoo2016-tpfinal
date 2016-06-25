class Colision

  def colisionar(objeto_espacial_1, objeto_espacial_2)
    copia_de_objeto_espacial_1 = objeto_espacial_1.clone
    copia_de_objeto_espacial_2 = objeto_espacial_2.clone
    objeto_espacial_1.colisiona_con copia_de_objeto_espacial_2
    objeto_espacial_2.colisiona_con copia_de_objeto_espacial_1
  end

end
