require_relative '../model/efecto_nulo'
require_relative '../model/efecto_masa'
require_relative '../model/efecto_constructivo'
require_relative '../model/efecto_destructivo'
require_relative '../model/efecto_destructivo_mutuo'
require_relative '../model/efecto_destructivo_porcentual'
require_relative '../model/efecto_destructivo_porcentual'
require_relative '../model/efecto_destructivo_porcentual_mutuo'

class ObjetoEspacial

    attr_accessor :vida, :masa
    attr_reader :efectos, :esta_vivo

    #args[0] = vida
    #args[1] = masa
    def initialize(*args)
      #Ruby no permite sobrecargar metodos. Para evitar la ruptura de numerosas pruebas
      #  se implementa esta logica para soportar dos argumentos
      if args.length == 2
        @vida = args[0]
        @masa = args[1]
        definir_estado
      else
        @vida = 100
        @masa = 100
      end

      @esta_vivo = true if @esta_vivo.nil?
      @efectos = {}
    end

    def colisiona_con objeto_espacial
      @efectos.fetch(objeto_espacial.class).aplicar_efecto(self, objeto_espacial)
      definir_estado
    end

    def agregar_colision objeto_espacial, efecto
      @efectos[objeto_espacial.class] = efecto
    end

    def quitar_colision clave
      @efectos = @efectos.delete_if { |k,v| k == clave }
    end

    private

    #Esta estructura es sospechosa, pero no se encontro otra manera de poder analizar individualmente cada argumento
    #  esto es necesario para evitar que se almacenen vidas o masas negativas
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
