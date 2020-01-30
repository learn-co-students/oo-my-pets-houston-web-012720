require "pry"
class Owner
  # code goes here
  attr_reader :name , :species
  @@all = []
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self
  end

  def say_species
    @species = "I am a human."
  end

  def self.all 
    @@all
  end

  def self.count 
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def self.clear
    @@all = []
  end

  def cats
    Cat.all.select{|e| e.owner == self} 
  end

  def dogs
    Dog.all.select{|e| e.owner == self} 
  end
  
  def buy_cat(name)
    # binding.pry
    cats << Cat.new(name,self)
  end

  def buy_dog(name)
    dogs << Dog.new(name,self)
  end

  def walk_dogs
    dogs.each{|dog| dog.mood = "happy"}
  end

  def feed_cats
    cats.each{|cat| cat.mood = "happy"}
  end

  def sell_pets
    [dogs,cats].flatten.each do |a|
      a.mood = "nervous"
      a.owner = nil
    end
  end

  def list_pets
    "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
  end
end