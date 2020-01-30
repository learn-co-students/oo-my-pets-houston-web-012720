class Cat

  attr_reader :name
  attr_accessor :owner, :mood

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @owner.cats << self
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end  

end
