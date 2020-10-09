require_relative './owner.rb'

class Cat

  attr_reader :name 
  attr_accessor :owner, :mood

  @@all_cats = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = 'nervous'
    @@all_cats << self
    #binding.pry
  end

  def self.all
    return @@all_cats
    
  end

end