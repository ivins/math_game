require './player'
require './questions'

class Game
  attr_accessor :player1, :player2, :current_player, :questions, :game_over

  def initialize()
    @player1 = Player.new("Player 1", true)
    @player2 = Player.new("Player 2", false)
    @questions = Questions.new
    @current_player = "Player 1"
    @game_over = false
  end

  def switch_player
    if player1.current == true
      player1.current = false
      player2.current = true
      @current_player = "Player 2"
    else 
      player2.current = false
      player1.current = true
      @current_player = "Player 1"
    end
  end

  def game_over
    if player1.score == 0
      puts "Player 2 wins with a score of #{player2.score}/3"
      puts "--- Game Over-----"
      puts "Good bye!"
      @game_over = true
    elsif player2.score == 0
      puts "Player 1 wins with a score of #{player1.score}/3"
      puts "--- Game Over-----"
      puts "Good bye!"
      @game_over = true
    end 
  end
    

  def start_game()
    while !@game_over
      new_question = questions.select_question
      key = new_question.keys[0]
      puts "#{current_player}: #{new_question[key]}" 
      response = $stdin.gets.chomp

      if response.to_i == key
        puts "Player #{current_player}: YES! You are correct!"
      else 
        puts "Player #{current_player}: Seriously? No!"
        player1.current ? player1.score -= 1 : player2.score -= 1
      end

    puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
    player1.score

    
    switch_player
    game_over
    @game_over == false ? (puts "---- NEW TURN -----") : nil
    end
  end
end

