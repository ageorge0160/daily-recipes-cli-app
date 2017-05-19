# require 'open-uri'
# require 'nokogiri'
class HomeScraper

  attr_accessor :name, :description, :url, :cardslot

  def initialize
    @doc = Nokogiri::HTML(open("https://recipes.tamouse.org/full-index.html"))
    @name = name
    @description = description
    @url = url
    @cardslot = cardslot
  end

  def scrape_tiles
    recipe_today = []
    @doc.css(".col-md-4").each do |tile|
      recipe_today << {:name => tile.css("h3 a").text.strip , :description => tile.css(".post-excerpt p").text, :url => tile.css("h3 a").attribute("href").value }
    end
    binding.pry
  end

end
#  "http://allrecipes.com" +
