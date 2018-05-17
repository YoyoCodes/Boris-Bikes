require_relative "bike"

class DockingStation

 attr_reader :bike

  def release_bike
    fail "There are no available bikes!" unless @bike != nil
    @bike
  end

  def dock(bike)
    fail "The dock is full!" if @bike
    @bike = bike
  end
end
