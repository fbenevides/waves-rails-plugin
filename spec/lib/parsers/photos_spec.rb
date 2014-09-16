describe Wapi::ConditionParser::Photos do
  context 'when html is valid' do
  	before :all do
  	  url = File.dirname(__FILE__) + "/Waves.html"
      @api = Wapi::Report.new("", url)
  	end

  	it 'should extract 2 photos for beach' do
  	  photos = Wapi::ConditionParser::Photos.extract(@api.html)
  	  
  	  expect(photos.length).to be 2
	    expect(photos[0]).to eql 'http://waves.terra.com.br/wavescheck/580621_1_693x520.jpg'
	    expect(photos[1]).to eql 'http://waves.terra.com.br/wavescheck/580621_2_693x520.jpg'
  	end
  end
end