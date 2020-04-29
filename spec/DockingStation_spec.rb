require './lib/docking_station'

RSpec.describe DockingStation do
  it 'releases a bike' do
    bike = Bike.new
    subject.dock(bike)

    expect(subject.release_bike).to eq bike
  end

  it 'Return Bike' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:dock)
  end

  it "raises an error when there are no bikes available" do 
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end

  it 'raises an error when full' do
    20.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error 'Docking station full'
  end

end
