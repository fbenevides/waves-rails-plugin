module Wapi
  module ConditionParser
    class Wind
      include Wapi::InfoParser
      
      @xpath = {
    		direction: 7,
    		strength: 8
    	}

    	def self.extract html
    		{
    			direction: content_for(html, @xpath[:direction]),
    		  strength: content_for(html, @xpath[:strength]),
        }
    	end
    end	
  end
end