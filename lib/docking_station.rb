require_relative "bike"

class DockingStation

 attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "There are no available bikes!" unless @bikes != []
    @bikes
  end

  def dock(bike)
    fail "The dock is full!" if @bikes.length == 20
    @bikes << bike
  end
end
