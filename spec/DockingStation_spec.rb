require './lib/docking_station'

RSpec.describe DockingStation do
  it 'releases a bike' do
    bike = Bike.new
    subject.dock(bike)

    expect(subject.release_bike).to eq bike
  end

  it 'Return Bike' do
    
    expect(subject).to respond_to(:dock)
  end

  it "raises an error when there are no bikes available" do 
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end

  it 'raises an error when full' do
    subject.capacity.times do 
      subject.dock Bike.new
    end

    expect { subject.dock Bike.new }.to raise_error 'Docking station full'
  end

  it 'has default capacity?' do
    docking_station = DockingStation(50).new
    50.times { docking_station.dock Bike.new }
    expect{ docking_station.dock Bike.new }.to raise_error 'Docking station full'
  end

  it 'not release if broken bike ' do
    docking_station = DockingStation.new
  
    
    expect{ docking_station.release_bike  }.to raise_error 'Broken bike '
  end

  

end
