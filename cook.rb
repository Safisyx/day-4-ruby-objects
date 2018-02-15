class Cook
  attr_accessor :name, :secrets, :dishes, :activity
  DEFAULT_SECRET = 'If it does not taste well, you did not add enough butter'
  def initialize(name, secrets = [DEFAULT_SECRET], dishes = [], activity = "on_duty")
    @name = name
    @secrets = secrets
    @dishes = dishes
    @activity = activity
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

  def make(dish)
    if on_duty?
      puts "Here you go..."
      @dishes << dish
      day_off if @dishes.count == 10
    else
      puts "Sorry, not on duty!!"
    end
  end

  def day_off
    @activity = "day_off"
  end

  def on_duty?
    @activity == "on_duty"
  end

  def go_to_work
    @activity = "on_duty"
    @dishes = []
  end

end
