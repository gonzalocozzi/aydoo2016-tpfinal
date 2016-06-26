require_relative '../model/objeto_espacial'

class Asteroide < ObjetoEspacial

  #args[0] = vida
  #args[1] = masa
  def initialize(*args)
    super *args
    #Los efectos con parametro 0 no provocan cambios en el asteroide
    efecto_nulo = EfectoDestructivo.new 0
    @efectos[Bomba] = efecto_nulo
    @efectos[Estrella] = efecto_nulo
    @efectos[Misil] = efecto_nulo
    @efectos[Asteroide] = efecto_nulo
    @efectos[Nave] = EfectoMasa.new 0.1
  end

end
