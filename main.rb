require_relative "cook.rb"

cook_1 = Cook.new('Peter P. Pendergrass', ["No dish is complete without sugar", "Parsley adds taste to anything"])
cook_2 = Cook.new('Patricia Klassen', ["Cream makes everything better"])
cook_3 = Cook.new('Pamela M. Fiscus', ["Heat your food as little as possible"])
cook_4 = Cook.new('Jerry Parker',["Add Cocoa for more bite", "Lemon makes each taste stand out"])

cook_1.print_details
cook_2.print_details
cook_3.print_details
cook_4.print_details
