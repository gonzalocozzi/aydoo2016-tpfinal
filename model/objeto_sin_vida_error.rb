class ObjetoSinVidaError < StandardError

  def initialize(msg="No puede ocurrir una colision con un objeto espacial muerto.")
    super
  end

end
