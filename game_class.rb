class Game
  attr_accessor :game_over  
  attr_reader :current_player

  def initialize
    @game_over = false
    @current_player = nil
    @current_question = nil
  end 

    def get_question(questionGenerator)
      @current_question = questionGenerator
    end

    def set_current_player(p1,p2)
      @current_player == p1 ? @current_player = p2 : @current_player = p1
    end

    def check_game_status(p1,p2)
      if p1.life == 0 || p2.life == 0
        puts "\n----- Game Over -----"
        puts p1.life == 0 ? "Player 2 wins with a score of #{p2.life}/3" : "Player 1 wins with a score of #{p1.life}/3" 
        @game_over = true
        puts "Goodbye!"
        puts "\n"
      end
    end

    def start_game (player1,player2,questions)
      while self.game_over == false
        self.set_current_player(player1,player2)
      
        puts "\n Player 1: #{player1.life}/3 vs Player 2: #{player2.life}/3 "
        puts "----- start turn -----"
        current_q = questions.gen_question
      
        puts "Player #{self.current_player.id}: what does #{current_q} equal."
        print "> "
        answer = $stdin.gets.chomp
      
        if questions.eval_answer?(current_q,answer.to_i)
          puts "Player #{self.current_player.id}: you are correct!"
        else
          puts "Player #{self.current_player.id}: That was incorrect, you have lost a life..."
          self.current_player.lost_life
        end
      
        self.check_game_status(player1,player2)
      
      end
    end

end