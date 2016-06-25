require_relative '../model/objeto_espacial'

class Asteroide < ObjetoEspacial

  #args[0] = vida
  #args[1] = masa
  def initialize(*args)
    super *args
    @efectos[Nave] = EfectoMasa.new 0.1
    @efectos[Bomba] = EfectoDestructivo.new 0
    @efectos[Estrella] = EfectoDestructivo.new 0
    @efectos[Misil] = EfectoDestructivo.new 0
    @efectos[Asteroide] = EfectoDestructivo.new 0
  end

end
