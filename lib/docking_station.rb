require_relative 'bike'

class DockingStation
  attr_reader :bikes, :DEFAULT_CAPACITY
  def initialize
    @bikes = []
    @DEFAULT_CAPACITY = 20
  end


  def release_bike
    fail 'No Bikes Left!' if empty?
    released = @bikes.pop
    return released
  end

  def dock(bike)
    fail 'This dock is full!' if full?
    @bikes.push(bike)
    return bike
  end

  private

  def full?
    if @bikes.length >= @DEFAULT_CAPACITY
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