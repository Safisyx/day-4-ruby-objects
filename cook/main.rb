require_relative "cook.rb"

cook_1 = Cook.new('Peter P. Pendergrass', ["No dish is complete without sugar", "Parsley adds taste to anything"])
cook_2 = Cook.new('Patricia Klassen', ["Cream makes everything better"])
cook_3 = Cook.new('Pamela M. Fiscus', ["Heat your food as little as possible"])
cook_4 = Cook.new('Jerry Parker',["Add Cocoa for more bite", "Lemon makes each taste stand out"])

cook_1.print_details
cook_2.print_details
cook_3.print_details
cook_4.print_details

my_cook = Cook.new('S. Ratsimbazafy')
my_cook.print_details

my_cook.remove_default
my_cook.print_details

my_cook.add_secret("Keep calm and goggle it")
my_cook.print_details

my_cook.remove_default
my_cook.print_details

cook_1.remove_default
cook_1.print_details

my_cook.make("Vary @anana")
my_cook.day_off
my_cook.make("Something")
my_cook.print_details

puts "------------------------------------------------------"

my_cook.go_to_work
my_cook.make("hamburger")
my_cook.make("hamburger")
my_cook.make("hamburger")
my_cook.make("hamburger")
my_cook.make("hamburger")
my_cook.make("hamburger")
my_cook.make("hamburger")
my_cook.make("hamburger")
my_cook.make("hamburger")
my_cook.make("hamburger")
my_cook.make("hamburger")

my_cook.print_details
sleep(1)
my_cook.go_to_work
my_cook.make("sandwich")
my_cook.make("pizza quattro formaggi")
my_cook.print_details
