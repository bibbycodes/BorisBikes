require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes
  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end


  def release_bike
    fail 'No Bikes Left!' if empty?
    released = @bikes.pop
    fail 'Bike is broken' if released.broken?
    return released
  end

  def dock(bike)
    fail 'This dock is full!' if full?
    @bikes.push(bike)
    return bike
  end

  private

  def full?
    if @bikes.length >= @capacity
      return true
    else
      return false
    end
  end

  def empty?
    if @bikes.length == 0
      return true
    else  
      return false
    end
  end
end