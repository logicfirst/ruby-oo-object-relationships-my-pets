require_relative './owner.rb'


class Dog
  # code goes here
  attr_reader :name
  attr_accessor :owner, :mood

@@all_dogs = []
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = 'nervous'
    @@all_dogs << self
    #binding.pry
  end

  def self.all 
    return @@all_dogs
    #binding.pry
  end
  #binding.pry

end