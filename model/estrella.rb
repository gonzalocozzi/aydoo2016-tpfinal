class Estrella

  attr_accessor :vida
  attr_reader :masa, :efectos, :esta_vivo

  #args[0] = vida
  #args[1] = masa
  def initialize(*args)
    #Ruby no permite sobrecargar metodos. Para evitar la ruptura de numerosas pruebas...
    #...se implementa esta logica para soportar multiples argumentos
    if args.length == 2
      @vida = args[0]
      @masa = args[1]
    else
      @vida = 100
      @masa = 100
    end

    @efectos = Hash.new
    @efectos[Asteroide] = EfectoDestructivoPorcentual.new 1
    @efectos[Bomba] = EfectoDestructivoPorcentual.new 1
    @efectos[Nave] = EfectoDestructivoPorcentual.new 1
    @efectos[Misil] = EfectoDestructivo.new 0
    @efectos[Estrella] = EfectoDestructivoPorcentualMutuo.new 1
    definir_estado
  end

  def colisiona_con objeto_espacial
    @efectos[objeto_espacial.class].aplicar_efecto self, objeto_espacial
    definir_estado
  end

  def definir_estado
    if @vida <= 0
      @vida = 0
      @esta_vivo = false
    end
    if @masa <= 0
      @masa = 0
      @esta_vivo = false
    end
  end

end
