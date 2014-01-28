class Dog
  attr_accessor :name, :height, :weight

  @@count = 0

  def self.total_dogs
    "Total number of dogs: #{@@count}"
  end

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
    @@count += 1
  end

  def speak
   name + " barks!"
  end

  
  def info
    "#{name} is #{height} feet tall and weighs #{weight} pounds!"
  end
  def update_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end
end

beeng = Dog.new("beeng", 5, 78)
teddy = Dog.new("teddy", 1, 35)

puts beeng.info
teddy.name = "rossy"
puts teddy.update_info('Rondo', 1, 45)
puts teddy.info
puts beeng.speak

puts Dog.total_dogs