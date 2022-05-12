# Suppose we have a house, a castle, and a skycraper. They all the same properties,
# which are name, width, and length. Therefore, we can create a parent class Building.
# DRY: Do not repeat yourself

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

landmark = Building.new('Landmark Plaza', 100, 20)
puts landmark.name
puts landmark.floor_area
