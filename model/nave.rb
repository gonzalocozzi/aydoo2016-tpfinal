require_relative '../model/objeto_espacial'

class Nave < ObjetoEspacial

  #args[0] = vida
  #args[1] = masa
  def initialize(*args)
    super *args
    @efectos[Asteroide] = EfectoMasa.new -0.5
    @efectos[Bomba] = EfectoDestructivo.new 50
    @efectos[Estrella] = EfectoConstructivo.new 1
    @efectos[Misil] = EfectoDestructivo.new 80
    @efectos[Nave] = EfectoDestructivoMutuo.new 100
  end

end
