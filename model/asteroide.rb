require_relative '../model/objeto_espacial'
require_relative '../model/efecto_nulo'
require_relative '../model/efecto_masa'

class Asteroide < ObjetoEspacial

  #args[0] = vida
  #args[1] = masa
  def initialize(*args)
    super *args
    @efectos[Bomba] = EfectoNulo.new
    @efectos[Estrella] = EfectoNulo.new
    @efectos[Misil] = EfectoNulo.new
    @efectos[Asteroide] = EfectoNulo.new
    @efectos[Nave] = EfectoMasa.new 0.1
  end

end
