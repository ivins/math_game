class Game
  attr_accessor :player1, :player2

  def initialize()
    @player1 = Player.new
    @player2 = Player.new
    @current_player = 1
  end

  def start_game()
    while player1.score > 0 || player2.score > 0
      
      puts ""

  
end