require './lib/docking_station'

describe DockingStation do
  it 'Get Bike' do
    docking_station = DockingStation.new
    docking_station.release_bike
    expect(docking_station).to respond_to(:release_bike)
  end

  it 'Return Bike' do
    docking_station = DockingStation.new
    docking_station.return_bike
    expect(docking_station).to respond_to(:return_bike)
  end

end
