require 'pry'

class Owner

  @@all = []
  attr_reader :name, :species, :say_species

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    return "I am a human."
  end

  def self.all
    return @@all
  end

  def self.count
    return @@all.count
  end

  def self.reset_all
    # return @@all.clear()
    return @@all = []
  end
    

end

puts "hello"
