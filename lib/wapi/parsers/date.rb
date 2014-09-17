
module Wapi
  module ConditionParser  
    class Date
      def self.extract html
        html.css("#content h2")[0].content.split(': ')[1]
      end
  end 
  end
end