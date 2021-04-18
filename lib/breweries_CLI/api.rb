require "pry"
class API

  def self.get_data
  response = RestClient.get("https://api.openbrewerydb.org/breweries?by_state=new_york")
  breweries_array = JSON.parse(response)
  breweries_array.each do |breweries|
    Breweries.new(breweries)
    #binding.pry
  end
  #binding.pry

  end
end
