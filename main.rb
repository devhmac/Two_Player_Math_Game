require_relative './game_class'
require_relative './questions_class'
require_relative './player_class'

player1 = Player.new(1)
player2 = Player.new(2)

game = Game.new
questions = Question_Generator.new


game.start_game(player1, player2, questions)

