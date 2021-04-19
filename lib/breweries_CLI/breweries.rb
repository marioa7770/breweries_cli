class Breweries
  attr_accessor :name, :city, :brewery_type
  @@all = []

  def initialize(breweries_hash)
    breweries_hash.each do |key, value|
      self.send("#{key}=", value) if self.respond_to?("#{key}=")
      end
      save

    end

    def save
      @@all << self
    end

    def self.all
      @@all
    end

    def self.find_by_selection(breweries_name)
      self.all.detect do |breweries|
        breweries.name == breweries_name
      end
    end
end
