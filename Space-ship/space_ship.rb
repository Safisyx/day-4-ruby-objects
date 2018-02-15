require_relative "crew_member.rb"

class SpaceShip
  attr_accessor :name, :color, :crew_members

  def initialize(name, color)
    @name = name
    @color = color
    @crew_members = []
  end

  def print_details
    puts " #{self.name} (#{self.color}) "
    puts "Crew Members: "
    crew_members.each{ |crew_member|
      puts "  -#{crew_member.name}"
    }
  end

  def paint(color)
    self.color = color
  end

  def add_crew_member(crew_member)
    self.crew_members << crew_member
  end
end
