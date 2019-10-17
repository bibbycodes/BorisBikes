class Bike
  attr_reader :broken

  def initiliaze
    @broken
  end
  
  def working?
    return true
  end

  def broken?
    return @broken
  end

  def report
    @broken = true
  end
end