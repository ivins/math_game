require './player'
require './questions'

class Game
  attr_accessor :player1, :player2, :current_player

  def initialize()
    @player1 = Player.new
    @player2 = Player.new
    @current_player = 1
    @questions = Questions.new
  end

  def start_game()
    while player1.score > 0 || player2.score > 0

      puts "Player #{current_player}: " 
      response = $stdin.gets.chomp
      
    end
  end
  
end

play = Game.new
play.start_game