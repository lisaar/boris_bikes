require 'station'

describe Station do
	let(:station) {Station.new(:capacity => 123)}

	it 'should allows default capacity to be set on initalizing' do
		expect(station.capacity).to eq 123
	end

	# def fill_station(station)
	# 	20.times { station.dock(Bike.new) }
	# end
	# it 'should accept a bike' do
	# 	expect(station.bike_count).to eq 0
	# 	station.dock(bike)
	# 	expect(station.bike_count).to eq 1
	# end

	# it 'should release a bike' do
	# 	station.dock(bike)
	# 	station.release(bike)
	# 	expect(station.bike_count).to eq 0
	# end

	# it 'should know when its full' do
	# 	expect(station).not_to be_full
	# 	fill_station(station)
	# 	expect(station).to be_full
	# end

	# it 'should not accept a bike if full' do
	# 	fill_station(station)
	# 	expect(lambda { station.dock(bike)}).to raise_error(RuntimeError)
	# end

	# it 'should provide the list of available bikes' do
	# 	working_bike, broken_bike  = Bike.new, Bike.new
	# 	broken_bike.break!
	# 	station.dock(broken_bike)
	# 	station.dock(working_bike)
	# 	expect(station.available_bikes).to eq ([working_bike])
	# end
end