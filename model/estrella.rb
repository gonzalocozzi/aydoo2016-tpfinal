require_relative '../model/objeto_espacial'
require_relative '../model/efecto_nulo'
require_relative '../model/efecto_destructivo_porcentual'
require_relative '../model/efecto_destructivo_porcentual_mutuo'

class Estrella < ObjetoEspacial

  #args[0] = vida
  #args[1] = masa
  def initialize(*args)
    super *args
    @efectos[Misil] = EfectoNulo.new
    @efectos[Asteroide] = EfectoDestructivoPorcentual.new 1
    @efectos[Bomba] = EfectoDestructivoPorcentual.new 1
    @efectos[Nave] = EfectoDestructivoPorcentual.new 1
    @efectos[Estrella] = EfectoDestructivoPorcentualMutuo.new 1
  end

end
