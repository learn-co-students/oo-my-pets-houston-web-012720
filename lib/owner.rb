require 'pry'
require_relative 'cat.rb'
require_relative 'dog.rb'

class Owner
  @@all = []
  attr_reader :name, :species
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  def say_species
    "I am a #{@species}."
  end
  def self.all
    @@all
  end
  def self.count
    @@all.count
  end
  def self.reset_all
    @@all.clear
  end
  def cats
    Cat.all.select do |i|
      i.owner == self
    end
  end
  def dogs
    Dog.all.select do |i|
      i.owner == self
    end
  end
  def buy_cat(name)
    Cat.new(name,self)
    # # binding.pry
    # cat = find_cat(name)
    # cat.owner = self
    # p Owner.all[0].
    # # cats.push(cat)
    # p cats
    # p self.find_cat(name)
  end
  def buy_dog(name)
    Dog.new(name,self)
  end
  def walk_dogs
    dogs.each{|d| d.mood = "happy"}
  end
  def feed_cats
    cats.each{|c| c.mood = "happy"}
  end
  def sell_pets
    cats.each{|c| c.mood = "nervous"}
    dogs.each{|c| c.mood = "nervous"}
    cats.each{|c| c.owner = nil}
    dogs.each{|c| c.owner = nil}
  end
  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
  def find_cat(name)
    Cat.all.find{|i| i.name == name}
  end
  def find_dog(name)
    Dog.all.find{|i| i.name == name}
  end
    
end

# anam = Owner.new("Anam")
# caleb = Owner.new("Caleb")
# raul = Owner.new("Raul")

# binding.pry
0