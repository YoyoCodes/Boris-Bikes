require "docking_station"

describe DockingStation do

  describe "docking station" do
    it "responds to release_bike" do
      expect(subject).to respond_to :release_bike
    end

    it { is_expected.to respond_to(:dock).with(1).argument} #should be done for every method that has arguments

    it {is_expected.to respond_to(:bike)} #it responds to attr_reader (a method to initialize bike)
  end


  describe "#dock" do
    it "docks a bike" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike #checks if the docked kike is the same as the new instance of bike
    end

    it "it raises an error if the dock is full" do
      subject.dock(Bike.new)
      expect{subject.dock(Bike.new)}.to raise_error "The dock is full!"
    end
  end


  describe "#release_bike"  do
    it "releases a bike if there is one available" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "raises an error if the dock is empty/no bikes available" do
      expect{subject.release_bike}.to raise_error "There are no available bikes!"
    end

    it "releases working bikes" do
      bike = subject.dock(Bike.new)
      expect(subject.release_bike).to be_working
    end
  end
end
