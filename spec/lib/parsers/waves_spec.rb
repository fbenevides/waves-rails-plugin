describe Wapi::ConditionParser::Waves do
  context 'when html is valid' do
  	before :all do
  	  url = File.dirname(__FILE__) + "/Waves.html"
  	  @api = Wapi::Report.new("", url)
  	  @waves = Wapi::ConditionParser::Waves.extract(@api.html)
  	end

  	it 'should parse wave size' do
 	    expect(@waves[:size]).to eql '0.5 m'
  	end

  	it 'should parse wave quality' do
  	  expect(@waves[:quality]).to eq 'Mexida (Ruim)'
  	end

  	it 'should parse wave direction' do
  	  expect(@waves[:direction]).to eq 'Leste'
  	end
  end		
end