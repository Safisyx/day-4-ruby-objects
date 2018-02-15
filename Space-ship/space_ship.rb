class SpaceShip
  attr_accessor :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end

  def print_details
    puts "It's #{self.name} and it's #{self.color} "
  end

  def paint(color)
    self.color = color
  end
end
