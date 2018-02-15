class Cook
  attr_accessor :name, :secrets, :dishes
  DEFAULT_SECRET = 'If it does not taste well, you did not add enough butter'
  def initialize(name, secrets = [DEFAULT_SECRET], dishes = [])
    @name = name
    @secrets = secrets
    @dishes = dishes
  end

  def print_details
    puts "\n#{name}"
    print "These are the secrets: " if @secrets.length > 1
    print "This is the secret: " if @secrets.length == 1
    @secrets.each{ |secret|
      print secret
      print ", " unless @secrets.index(secret) == @secrets.length-1
    }
    puts ""
    puts "amount of secrets: #{@secrets.length}"

    puts "Dishes made : #{dishes.join(", ")}"
  end

=begin
much more simpler use "secret.join(', ')"
=end

  def add_secret(secret)
    #@secrets = [] if @secrets == ['If it does not taste well, you did not add enough butter']
    @secrets << secret
  end

  def remove_default
    @secrets.shift if @secrets.include?(DEFAULT_SECRET) unless @secrets.count == 1
  end

#make dishes
  def make(dish)
    @dishes << dish
  end

end
