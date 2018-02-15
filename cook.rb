class Cook
  attr_accessor :name, :secrets

  def initialize(name, secrets)
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
end
