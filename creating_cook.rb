class Cook
  attr_accessor :name, :secrets

  def initialize(name, secrets)
    @name = name
    @secrets = secrets
  end

  def print_details
    puts "\n#{@name}"
    print "These are the secrets: " if @secrets.length > 1
    print "This is the secret: " if @secrets.length == 1
    @secrets.each{ |secret|
      print secret
      print ", " unless @secrets.index(secret) == @secrets.length-1
    }
    puts ""
    puts "amount of secrets: #{@secrets.length}"
  end

end


cook_1 = Cook.new('Peter P. Pendergrass', ["No dish is complete without sugar", "Parsley adds taste to anything"])
cook_2 = Cook.new('Patricia Klassen', ["Cream makes everything better"])
cook_3 = Cook.new('Pamela M. Fiscus', ["Heat your food as little as possible"])
cook_4 = Cook.new('Jerry Parker',["Add Cocoa for more bite", "Lemon makes each taste stand out"])

cook_1.print_details
cook_2.print_details
cook_3.print_details
cook_4.print_details
