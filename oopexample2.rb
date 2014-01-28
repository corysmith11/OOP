class Animal
  attr_accessor :name 

  def initialize(n)
    @name = n
  end

  def eat
    "#{name} is eating."
  end

  def speak 
  "#{name} is speaking"
  end
end

class Mammal < Animal
  def warm_blooded?
    true
  end
end

module Swimmable
  def swim
    "#{name} is swimming!"
  end
end

# in order to use this module, your class must respond to a "name" method call
module Fetchable
  def fetch
    "#{name} is fetching!"
  end
end

class Dog < Mammal
  include Fetchable
  include Swimmable

def speak
  "#{name} is howling like the wind!"
  end
end

class Cat < Mammal
  def speak
    "#{name} is meowing!"
  end
end

beeng = Dog.new('beeng')
puts beeng.swim
