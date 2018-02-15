class Cook
  attr_accessor :name, :secrets

  def initialize(name, secrets = ['If it does not taste well, you did not add enough butter'
])
    @name = name
    @secrets = secrets
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
  end

=begin
much more simpler use "secret.join(', ')"
=end

  def add_secret(secret)
    #@secrets = [] if @secrets == ['If it does not taste well, you did not add enough butter']
    @secrets << secret
  end

  def remove_default
    d = 'If it does not taste well, you did not add enough butter'
    @secrets.shift if @secrets.include?(d) unless @secrets.count == 1
  end
end
