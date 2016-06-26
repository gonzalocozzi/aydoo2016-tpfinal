require_relative '../model/objeto_espacial'
require_relative '../model/efecto_nulo'
require_relative '../model/efecto_destructivo'
require_relative '../model/efecto_destructivo_mutuo'

class Misil < ObjetoEspacial

  #args[0] = vida
  #args[1] = masa
  def initialize(*args)
    super *args
    @efectos[Asteroide] = EfectoNulo.new
    @efectos[Bomba] = EfectoNulo.new
    @efectos[Estrella] = EfectoNulo.new
    @efectos[Nave] = EfectoDestructivo.new 100
    @efectos[Misil] = EfectoDestructivoMutuo.new 100
  end

end
