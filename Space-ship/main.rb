require_relative "space_ship.rb"

spaceship = SpaceShip.new("XV", "white")
spaceship.print_details

spaceship.paint("red")
spaceship.print_details

puts "\n-------------------------------------\n"

safidy = CrewMember.new("Lieutenant", "Safidy Ratsimbazafy")
safidy.list_credentials
safidy.promote
safidy.list_credentials

puts "\n-------------------------------------\n"

spaceship_1 = SpaceShip.new("XV-1", "white")
spaceship_2 = SpaceShip.new("XV-2", "blue")

mark = CrewMember.new("Lieutenant", "Mark Plank")
mario = CrewMember.new("Lieutenant", "Mario Brows")
syx = CrewMember.new("Captain", "Syx R.")

puts "************************"
spaceship_1.add_crew_member(safidy)
spaceship_1.add_crew_member(mark)
spaceship_1.print_details

puts "********************"

spaceship_2.add_crew_member(syx)
spaceship_2.add_crew_member(mario)
spaceship_2.print_details
puts "***************************"
