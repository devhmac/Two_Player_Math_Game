class GameLoop

attr_accessor :game_over
attr_reader :current_player

  initialize
    @game_over = false
    @current_player = nil
    @current_question = nil
  end 

    def get_question(questionGenerator)
      @current_question = questionGenerator
    end

    def set_current_player(p1,p2)
      current_player == p1 ? @current_player = p2 : current_player = p1
    end

    def gameplay_loop

      while self.game_over == false

    end

end