describe Wapi::Report do
  before :all do
  	url = File.dirname(__FILE__) + "/parsers/Waves.html"
  	@api = Wapi::Report.new("", url)
  end

  it 'should parse all conditions' do
  	conditions = @api.check

  	expect(conditions[:name]).to eql 'Praia do Vizinho - Fortaleza (CE)'

  	expect(conditions[:waves]).not_to be nil
  	expect(conditions[:waves][:size]).to eq '0.5 m'
  	expect(conditions[:waves][:direction]).to eq 'Leste'
  	expect(conditions[:waves][:quality]).to eq 'Mexida (Ruim)'
  end
end