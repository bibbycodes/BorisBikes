require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail 'No Bikes Left!' unless @bike
    @bike
  end

  def dock(bike)
    fail 'This dock is full!' if @bike
    @bike = bike
  end

end