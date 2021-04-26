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

p1 = Player.new(1)

puts p1.life
puts p1.id
p1.lost_life
puts p1.life