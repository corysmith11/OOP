class Car
    
    attr_reader :name, :price
    attr_writer :name, :price  
    
    def to_s
        "#{@name}: #{@price}"
    end

end


c1 = Car.new
c2 = Car.new

c1.name = "Porsche"
c1.price = 23500

c2.name = "Volkswagen"
c2.price = 9500

puts "The #{c1.name} costs #{c1.price}"

p c1
p c2

# All Ruby variables are private. It is possible to access them only via methods. These methods are often called setters and getters. Creating a setter and a getter method is a very common task. Therefore Ruby has convenient methods to create both types of methods. They are attr_reader, attr_writer and attr_accessor.

# The attr_reader creates getter methods. The attr_writer method creates setter methods and instance variables for this setters. The attr_accessor method creates both getter, setter methods and their instance variables.