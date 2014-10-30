module Wapi
  module ConditionParser  
    class Name
      def self.extract html
        html.css("#content h1")[0].content
      end
    end	
  end
end