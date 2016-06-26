require_relative '../model/objeto_espacial'

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
