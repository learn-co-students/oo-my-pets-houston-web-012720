class Cat
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :type 
  @@all = []
  def initialize(name,owner = nil)
    @name = name 
    @owner = owner
    @mood = "nervous"
    @type = "cat"
    @@all << self
  end

  def name 
    @name 
  end

  def self.all
    @@all 
  end

  def self.count
    @@all.length
  end
end

