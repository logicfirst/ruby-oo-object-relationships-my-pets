require 'pry'
# require_relative './dog.rb'
# require_relative './cat.rb'


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

  def cats 
    # return self.all_cats
    Cat.all.select do |kitty|
      kitty.owner.name == self.name
      #binding.pry
    end
  end
  #binding.pry
  
  def dogs
    #binding.pry
    Dog.all.select do |dog|
      dog.owner.name == self.name

      #binding.pry
    end

    
  end

 def buy_cat
      #@@all_cats << Cat.new
      all_cats.count -= 1
    end  
      
 
end

puts "hello"
