require_relative 'bike'

class DockingStation
  attr_reader :bikes, :bike_capacity
  def initialize
    @bikes = []
    @bike_capacity = 20
  end


  def release_bike
    fail 'No Bikes Left!' unless @bikes.length > 1
    released = @bikes.pop
    return released
  end

  def dock(bike)
    fail 'This dock is full!' if @bikes.length >= @bike_capacity
    @bikes.push(bike)
    return bike
  end

end