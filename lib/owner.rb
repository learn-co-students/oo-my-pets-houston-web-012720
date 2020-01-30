require 'pry'

class Owner
  
  attr_reader :name, :species

  @@all = []

  def initialize (name = nil)
    @name = name
    @species = "human"
    @@all << self
  end

  def self.all 
    @@all
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.count 
    self.all.count
  end

  def self.reset_all 
    self.all.clear
  end

  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def buy_cat(cat)
    Cat.new(cat, self)
  end

  def buy_dog(dog)
    Dog.new(dog, self)
  end

  ## RY af, come back and DRY 

  def my_dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def my_cats
    Cat.all.select {|cat| cat.owner == self}
  end

  def walk_dogs
    self.my_dogs.map {|dog| dog.mood = "happy"}
  end

  def feed_cats
    self.my_cats.map {|cat| cat.mood = "happy"}
  end

  def sell_pets
    my_pets = self.my_dogs + self.my_cats
    my_pets.map do |pet| 
      pet.owner = nil
      pet.mood = "nervous"
    end
  end

  def list_pets 
    "I have #{self.my_dogs.count} dog(s), and #{self.my_cats.count} cat(s)."
  end

end
