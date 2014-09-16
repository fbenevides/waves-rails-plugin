module Wapi
  module ConditionParser
    class Waves
      include Wapi::InfoParser
      
      @xpath = {
    		size: 2,
    		quality: 3,
    		direction: 4
    	}

    	def self.extract html
    		{
    			size: content_for(html, @xpath[:size]),
    			quality: content_for(html, @xpath[:quality]),
    			direction: content_for(html, @xpath[:direction])
    		}
    	end
    end	
  end
end