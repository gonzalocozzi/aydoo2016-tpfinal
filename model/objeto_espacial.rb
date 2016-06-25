class ObjetoEspacial

    attr_accessor :masa, :vida
    attr_reader :efectos, :esta_vivo

    #args[0] = vida
    #args[1] = masa
    def initialize(*args)
      #Ruby no permite sobrecargar metodos. Para evitar la ruptura de numerosas pruebas...
      #...se implementa esta logica para soportar multiples argumentos
      if args.length == 2
        @vida = args[0]
        @masa = args[1]
        definir_estado
      else
        @vida = 100
        @masa = 100
      end
      @efectos = Hash.new
    end

    def colisiona_con objeto_espacial
      @efectos[objeto_espacial.class].aplicar_efecto self, objeto_espacial
      definir_estado
    end

    def agregar_colision objeto_espacial, efecto
      @efectos[objeto_espacial.class] = efecto
    end

    private
    #Esta estructura es sospechosa, pero no se encontro otra manera de poder analizar individualmente cada argumentos
    #Esto es necesario para evitar que se almacenen vidas o masas negativas
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
