require './lib/docking_station'

describe DockingStation do
  it 'Rlease Bike' do
    docking_station = DockingStation.new
    docking_station.release_bike 
  end

end
