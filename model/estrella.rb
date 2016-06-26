require_relative '../model/objeto_espacial'

class Estrella < ObjetoEspacial

  #args[0] = vida
  #args[1] = masa
  def initialize(*args)
    super *args
    #Los efectos con parametro 0 no provocan cambios en el misil
    @efectos[Misil] = EfectoDestructivo.new 0
    @efectos[Asteroide] = EfectoDestructivoPorcentual.new 1
    @efectos[Bomba] = EfectoDestructivoPorcentual.new 1
    @efectos[Nave] = EfectoDestructivoPorcentual.new 1
    @efectos[Estrella] = EfectoDestructivoPorcentualMutuo.new 1    
  end

end
