class Player
  attr_accessor :score, :current, :name

  def initialize(name, current)
    @name = name
    @score = 3
    @current = current
  end

end