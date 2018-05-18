require_relative "bike"

class DockingStation

 attr_reader :bikes
 DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end


  def release_bike
    fail "There are no available bikes!" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "The dock is full!" if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes == []
  end
end
