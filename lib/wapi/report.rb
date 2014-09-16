require 'wapi/parser'
require 'nokogiri'
require 'open-uri'

module Wapi
  class Report
  	attr_reader :html

  	WAVES_URL = 'http://waves.terra.com.br/surf/ondas'

  	def initialize(beach, url=WAVES_URL)
      beach_url = "#{url}#{beach}"
  	  @html = Nokogiri::HTML(open(beach_url))
    end

  	def conditions
      conditions = {}
      
      ConditionParser::constants.each do |constant|
          conditions[constant.downcase] = ConditionParser.const_get(constant).extract(@html)
      end
      
      conditions
  	end
  end
end
