# Suppose we have a house, a castle, and a skycraper. They all the same properties,
# which are name, width, and length. Therefore, we can create a parent class Building.
# DRY: Do not repeat yourself


# Summary
# Inheritance is used when classes need to share behavior and properties

# Subclasses inherit methods and instance variables from parents

# On top of that, subclasses can define more instance variables and methods

# Use super to access the parent method with the same name

class Building
  attr_reader :name
  def initialize(name, width, length)
    @name = name
    @width = width
    @length = length
  end

  def floor_area
    @width * @length
  end
end

# landmark = Building.new('Landmark Plaza', 100, 20)
# puts landmark.name
# puts landmark.floor_area

# Now we are ready to inherit from the parent class Building


# puts cas.name
# puts cas.floor_area

# We can also expand the behaviour inside the child class
# class Castle < Building
#   attr_accessor :butler

#   def has_a_butler?
#     @butler != nil
#   end
# end

# cas = Castle.new('Wadestson', 20, 30)
# puts cas.has_a_butler?
# cas.butler = 'Jeevs'
# puts cas.has_a_butler?
# puts "Name of the butler is #{cas.butler}"


# keyword super is used to call the parent method, it can help overwrite the parent method
class Skycraper < Building
  def floor_area
    super + 250 # super calls the parent method with the same name
  end
end

new_build = Skycraper.new('HSBC', 10, 30)
puts new_build.name
puts new_build.floor_area

# CLASS METHODS (call on class directly - self)
# In a nutshell
# You create a class method if it does not need/is not relevant to a single instance

# You will use class methods more than you define them.

class City
  def self.choices
    return ['New York', 'Shanghai', 'Los Angeles', 'Boston']
  end
end

puts City.choices.join(' ')


# Self two uses:
# 1. Inside an instance method
# 2. Inside a class definition
class Castle
  def initialize(name, ruler)
    @name, @ruler = name, ruler
  end

  def castle_details
    "#{@name} is ruled by #{ruler_name}" # self called the other method, here it is not mandatory
  end

  def ruler_name
    @ruler.capitalize
  end
end

dragonstone = Castle.new('Dagronstone','targaryen')
puts dragonstone.ruler_name
puts dragonstone.castle_details

# When SELF is mandatory
class Bulter
  def initialize(house)
    @house = house
  end

  def clean_house
    puts "#{@house.name} cleaned!"
  end
end

class House
  attr_reader :name, :butler
  def initialize(name)
    @name = name
    @butler = Bulter.new(self) # need to pass the instance of House because of how butler is defined
  end
end

my_house = House.new('Terence_Lodge')
puts my_house.butler.clean_house
