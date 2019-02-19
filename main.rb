require './player'
require './questions'
require './game'

play = Game.new
play.start_game

# game_over
#     switch_player
#       if game_over == false  
#         puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
#         puts "---- NEW TURN -----" 
#       else
#         puts "--- Game Over-----"
#       end