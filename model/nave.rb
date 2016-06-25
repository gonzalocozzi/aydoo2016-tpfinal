class Nave

  attr_accessor :masa, :vida
  attr_reader :efectos, :esta_vivo

  #args[0] = vida
  #args[1] = masa
  def initialize(*args)

    #Ruby no permite sobrecargar metodos. Para evitar la ruptura de numerosas pruebas
    #implementar esta logica para soportar multiples argumentos
    if args.length == 2
      @vida = args[0]
      @masa = args[1]
    else
      @vida = 100
      @masa = 100
    end

    @efectos = Hash.new
    @efectos[Asteroide] = EfectoMasa.new -0.5
    @efectos[Bomba] = EfectoDestructivo.new 50
    @efectos[Estrella] = EfectoConstructivo.new 1
    @efectos[Misil] = EfectoDestructivo.new 80
    @efectos[Nave] = EfectoDestructivoMutuo.new 100
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
