class ColisionNoDefinidaError < StandardError

  def initialize(msg="No ha definido una colision entre los objetos indicados.")
    super
  end

end
