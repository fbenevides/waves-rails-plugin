
module Wapi
	module InfoParser
		module ClassMethods
		  	def content_for html, where
		      html.css("#content .info div")[where].content.strip.split(":")[1].strip
		  	end
	 	end

	 	def self.included(base)
			base.extend(ClassMethods)
		end
	end
end