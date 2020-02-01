require 'pry'
class Owner
  @@all = []
  @@count = 0 
  attr_reader :name, :species 
  def initialize(name)
    @name = name
    @species = "human"
    @@count += 1
    @@all << self
  end
  def say_species
    "I am a #{self.species}."
  end
  def self.all 
    @@all
  end
  def self.count 
    @@count
  end
  def self.reset_all
    @@count = 0
  end
  def cats 
   Cat.all.select do  |cat|
     cat.owner == self
   end
  end
  def dogs 
   Dog.all.select do |dog|
     dog.owner == self
   end
  end
  def buy_cat(name)
  Cat.new(name,self)
  end
   def buy_dog(name)
     Dog.new(name,self)
   
   end
   def walk_dogs
     self.dogs.each do |dog|
       dog.mood = "happy"
     end
   end
   def feed_cats 
     self.cats.each do |cat|
       cat.mood = "happy"
     end
   end
   def sell_pets 
     pets = self.cats + self.dogs 
     pets.each do |pet|
       pet.mood = "nervous"
       pet.owner = nil 
     end
   end
   def list_pets 
     "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
   end
end