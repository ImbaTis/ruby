# class Car
#   # note that the colon is adjacent to the variable name
#   attr_accessor :engine_started
#   def initialize
#     @engine_started = false
#   end

#   def start_engine
#     @engine_started = true
#   end
# end

# Initialize a bmw
# bmw = Car.new
# puts "First test"
# puts bmw.engine_started
# puts "Turning on the engine"
# bmw.start_engine
# puts bmw.engine_started
# puts "Turning off the engine by setting the state"
# bmw.engine_started = false
# puts bmw.engine_started




# The method inside private is not accessible to the outside world
class Car
  def start_engine
    start_fuel_pump
    init_spark_plug
  end

  private

  def start_fuel_pump
  end

  def init_spark_plug
  end
end

benz =  Car.new
benz.start_engine
