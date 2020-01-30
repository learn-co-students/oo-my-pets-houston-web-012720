class Cat
  # code goes here
  attr_reader :name
  attr_accessor :owner, :mood

  @@all =[]

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

end


# rspec ./spec/02_cat_spec.rb:15 # Cat Instance methods initializes with a name and an Owner
# rspec ./spec/02_cat_spec.rb:20 # Cat Instance methods can change its owner
# rspec ./spec/02_cat_spec.rb:27 # Cat Instance methods can't change its name
# rspec ./spec/02_cat_spec.rb:31 # Cat Instance methods initializes with a nervous mood
# rspec ./spec/02_cat_spec.rb:35 # Cat Instance methods can change its mood
# rspec ./spec/02_cat_spec.rb:42 # Cat Class methods knows all the cats