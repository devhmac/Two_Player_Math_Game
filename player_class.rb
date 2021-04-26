class Player
  attr_reader :id, :life
  def initialize(id)
  @id = id
  @life = 3
  end
  def lost_life
    @life -= 1
  end
end
