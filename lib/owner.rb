class Owner

  attr_reader :name, :species
  attr_accessor :dogs, :cats

  @@owner_count = 0

  def initialize(name, species = "human")
    @name = name
    @species = species
    @cats = []
    @dogs = []
    @@owner_count += 1
  end  

  def self.all
    ObjectSpace.each_object(self).to_a
  end 

  def self.count
    @@owner_count
  end

  def self.reset_all
    @@owner_count = 0
  end 

  def say_species
    "I am a #{@species}." 
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    @dogs.each { |dog| dog.mood = "happy" }
  end

  def feed_cats
    @cats.each { |cat| cat.mood = "happy" }
  end

  def sell_pets
    pets = @cats + @dogs
    pets.each { |pet| pet.mood = "nervous"; pet.owner = nil }
    @dogs.clear
    @cats.clear
  end

  def list_pets
    "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end  

end
