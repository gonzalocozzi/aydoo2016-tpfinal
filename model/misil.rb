require_relative '../model/objeto_espacial'

class Misil < ObjetoEspacial

  #args[0] = vida
  #args[1] = masa
  def initialize(*args)
    super *args
    @efectos[Asteroide] = EfectoDestructivo.new 0
    @efectos[Bomba] = EfectoDestructivo.new 0
    @efectos[Estrella] = EfectoDestructivo.new 0
    @efectos[Nave] = EfectoDestructivo.new 100
    @efectos[Misil] = EfectoDestructivoMutuo.new 100
  end

end
