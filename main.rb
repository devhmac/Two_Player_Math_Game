require_relative './game_class'
require_relative './questions_class'
require_relative './player_class'

player1 = Player.new(1)
player2 = Player.new(2)

game = Game.new
questions = Question_Generator.new


game.start_game(player1, player2, questions)







# while game.game_over == false
#   game.set_current_player(player1,player2)

#   puts "\n Player 1: #{player1.life}/3 vs Player 2: #{player2.life}/3 "
#   puts "---- start turn ----"
#   current_q = questions.gen_question

#   puts "Player #{game.current_player.id}: what does #{current_q} equal."
#   answer = $stdin.gets.chomp

#   if questions.eval_answer?(current_q,answer.to_i)
#     puts "Player #{game.current_player.id}: you got it right!"
#   else
#     puts "Player #{game.current_player.id}: That was incorrect, you have lost a life"
#     game.current_player.lost_life
#   end

#   game.check_game_status(player1,player2)

# end