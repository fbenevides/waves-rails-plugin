describe Wapi::ConditionParser::Date do
  before :all do
	  url = File.dirname(__FILE__) + "/Waves.html"
  	@api = Wapi::Report.new("", url)
  	@date = Wapi::ConditionParser::Date.extract(@api.html)
  end

  it 'should parse last updated date' do
 	  expect(@date).to eql 'Segunda-feira, 15 de Setembro de 2014 07:43'
  end		
end