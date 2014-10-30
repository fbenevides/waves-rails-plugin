describe Wapi::ConditionParser::Name do
  context 'when html is valid' do
  	before :all do
      url = File.dirname(__FILE__) + "/Waves.html"
      @api = Wapi::Report.new("", url)
    end

    it 'should extract the name of the beach' do
      name = Wapi::ConditionParser::Name.extract(@api.html)
      expect(name).to eql 'Praia do Vizinho - Fortaleza (CE)'
    end
  end
end