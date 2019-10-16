require 'docking_station'

describe DockingStation do
  context "When Using the DockingStation Class" do
    it {is_expected.to respond_to(:release_bike)}

    describe '#release_bike' do
      it 'should release a bike' do
        bike = Bike.new
        20.times {subject.dock(bike)}
        expect(subject.release_bike).to eq bike
      end
      it 'raises an error when there are no bikes available' do
        expect {subject.release_bike}.to raise_error 'No Bikes Left!'
      end
    end
    
    it 'should return the last docked bike when using the dock method' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes[-1]).to eq(bike)
    end

    describe '#dock' do
      it "should dock a bike when using the 'dock' method" do
        bike = Bike.new
        expect(subject.dock(bike)).to eq(bike)
      end
      it 'should raise an error when the docking station is over capacity' do
        bike = Bike.new
        20.times {subject.dock(bike)}
        expect{subject.dock(bike)}.to raise_error 'This dock is full!'
      end
    end


    # cant test private methods?
    # describe "#full?" do

    #   it 'should return true is the docking station is full' do
    #     bike = Bike.new
    #     20.times {subject.dock(bike)}
    #     expect(subject.full?).to eq true
    #   end

    #   it 'should return false is the docking station is not full' do
    #     bike = Bike.new
    #     subject.dock(bike)
    #     expect(subject.full?).to eq false
    #   end
    # end

    # describe "#empty" do

    #   it "should return true if the docking station is empty" do
    #     bike = Bike.new
    #     20.times {subject.dock(bike)}
    #     20.times {subject.release_bike}
    #     expect(subject.empty?).to eq true
    #   end

    #   it "should return false if the docking station is not empty" do
    #     bike = Bike.new
    #     subject.dock(bike)
    #     expect(subject.empty?).to eq false
    #   end
    # end

  end
end

#is this right? come back to this, ask others task 8.2
describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}
end