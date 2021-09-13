class Player

  attr_accessor :lives, :name

  def initialize(name)
    @lives = 3
    @name = name
  end

  def lose_life
    @lives = @lives - 1
  end
end


p = Player.new("Dennis Reynolds")
puts p.name
puts p.lives