require 'garage'

describe Garage do
	let(:garage) {Garage.new(:capacity => 36)}
	it 'should allow the default capacity to be set when initialized' do
		expect(garage.capacity).to eq 36
	end

	it 'should fix a bike when it accepts it' do
		broken_bike = Bike.new
		broken_bike.break!
		garage.accept(broken_bike)
		expect(broken_bike).not_to be_broken
	end
end