module Wapi
	module ConditionParser
	  class Photos
	  	def self.extract html
	  		html.css('.wavescheck-photo .pic').map { |pic| pic['alt'] }
	  	end
	  end
	end
end