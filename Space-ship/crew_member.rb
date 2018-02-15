class CrewMember
  def initialize(rank, name)
    @rank = rank
    @name = name
  end

  def name
    @name
  end
  def rank
    @rank
  end

  def promote
    @rank = "Captain"
  end

  def list_credentials
    puts "It's #{self.rank} #{self.name} here!"
  end
end
