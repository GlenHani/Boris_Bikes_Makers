require './lib/bike'

describe Bike do
  it 'expects the bike to be working' do
    bike = Bike.new
    expect(bike).to respond_to(:working?) 
  end

end
