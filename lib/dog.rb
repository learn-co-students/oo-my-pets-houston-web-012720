require 'pry'

class Dog

  @@all=[]

  attr_accessor :owner, :mood
  attr_reader :name, :species

  def initialize(name, owner)
    @name = name
    @owner = owner
    @species = "dog"
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end


end

# Dog.new("garfield", "shelter")
# Dog.new("otis", "shelter")
# Dog.new("tom", "shelter")

# binding.pry
0