require './lib/bike'

class DockingStation
  attr_reader :release_bike, :return_bike
  def initialize 
    @bike = Bike.new 
    @release_bike = true
    @return_bike = true
  end
end
