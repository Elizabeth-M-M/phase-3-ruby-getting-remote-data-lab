
require 'net/http'
 require 'open-uri'
 require 'json'
class GetRequester
  attr_accessor :url
  def initialize(str_url)
    @url= str_url
  end
  
  def get_response_body
    
    uri= URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  def parse_json
    data= JSON.parse(self.get_response_body)
  end

end
get_requester = GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json')
puts get_requester.get_response_body