require 'van'

describe Van do
	let(:van) {Van.new(:capacity =>234)}
	it 'should allow the default capacity to be set on initializing' do
		expect(van.capacity).to eq 234
	end

end