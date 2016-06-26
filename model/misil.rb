require_relative '../model/objeto_espacial'

class Misil < ObjetoEspacial

  #args[0] = vida
  #args[1] = masa
  def initialize(*args)
    super *args
    #Los efectos con parametro 0 no provocan cambios en el misil
    efecto_nulo = EfectoDestructivo.new 0
    @efectos[Asteroide] = efecto_nulo
    @efectos[Bomba] = efecto_nulo
    @efectos[Estrella] = efecto_nulo
    @efectos[Nave] = EfectoDestructivo.new 100
    @efectos[Misil] = EfectoDestructivoMutuo.new 100
  end

end
