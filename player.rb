class Player

  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3   
  end

  def lose_life
    @lives = @lives - 1
  end

  def is_alive
    @lives > 0
  end

  def updated_lives
    "#{lives}/3"
  end
end


# p = Player.new("Dennis Reynolds")
# puts p.name
# puts p.lives