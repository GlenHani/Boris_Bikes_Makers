require './lib/docking_station'

describe DockingStation do
  it 'Test_1' do
    docking_station = DockingStation.new
    docking_station.release_bike 
  end

end
