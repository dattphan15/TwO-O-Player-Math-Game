class Player
  attr_accessor :name, :lives, :turn

  def initialize(n)
    @name = n
    @lives = 3
    @turn = false
  end

  def deduct_life
    self.lives -= 1
  end

  def info
    "#{self.name} has #{self.lives} lives."
  end

end

# p1 = Player.new("Player 1")
# p1.remove_life
# puts p1.info
