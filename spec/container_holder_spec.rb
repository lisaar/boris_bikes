require 'bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer  do 
	let(:bike) {Bike.new}
	let(:holder) {ContainerHolder.new}

	def fill_holder
		10.times {holder.dock(Bike.new)}
	end

	it 'should accept a bike' do
		expect(holder.bike_count).to eq 0
		holder.dock(bike)
		expect(holder.bike_count).to eq 1
	end

	it 'should release a bike' do
		holder.dock(bike)
		holder.release(bike)
		expect(holder.bike_count).to eq 0
	end

	it 'should know when its full' do
		fill_holder
		expect(holder).to be_full
	end

	it 'should not accept a bike if full' do
		fill_holder
		expect(lambda {holder.dock(bike)}).to raise_error(RuntimeError)
	end

	it 'should provide the list of working bikes' do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		holder.dock(broken_bike)
		holder.dock(working_bike)
		expect(holder.working_bikes).to eq [working_bike]
	end

	it 'should provide the list of broken bikes' do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		holder.dock(broken_bike)
		holder.dock(working_bike)
		expect(holder.broken_bikes).to eq [broken_bike]
	end
	
end