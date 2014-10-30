describe Wapi::ConditionParser::Wind do
  context 'when html is valid' do
    before :all do
      url = File.dirname(__FILE__) + "/Waves.html"
      @api = Wapi::Report.new("", url)
      @wind = Wapi::ConditionParser::Wind.extract(@api.html)
    end

    it 'should parse wind strength' do
      expect(@wind[:strength]).to eql 'Moderado'
    end

    it 'should parse wind direction' do
      expect(@wind[:direction]).to eql 'Leste'
    end
  end		
end