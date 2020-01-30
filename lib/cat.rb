require 'pry'

class Cat

  @@all =[]

  attr_accessor :owner, :mood
  attr_reader :name, :species

  def initialize(name, owner)
    @name = name
    @owner = owner
    @species = "cat"
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end


end

# Cat.new("snoopy", "shelter")
# Cat.new("pluto", "shelter")
# Cat.new("goofy", "shelter")

# binding.pry
0