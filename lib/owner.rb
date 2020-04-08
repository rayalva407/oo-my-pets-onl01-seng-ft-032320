class Owner
  attr_accessor :cats, :dogs
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @cats = []
    @dogs = []
    @@all << self
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  
  
  
end