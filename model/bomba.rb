require_relative '../model/objeto_espacial'

class Bomba < ObjetoEspacial

  #args[0] = vida
  #args[1] = masa
  def initialize(*args)
    super *args
    @efectos[Asteroide] = EfectoDestructivoPorcentual.new 1
    @efectos[Nave] = EfectoDestructivo.new 100
    @efectos[Estrella] = EfectoDestructivo.new 100
    @efectos[Misil] = EfectoDestructivoPorcentual.new 0.5
    @efectos[Bomba] = EfectoDestructivoMutuo.new 100
  end

end
