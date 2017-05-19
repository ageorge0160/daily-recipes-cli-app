# require 'open-uri'
# require 'nokogiri'
class HomeScraper

  attr_accessor :name, :description, :url, :cardslot

  def initialize
    @doc = Nokogiri::HTML(open("http://allrecipes.com/recipes/"))
    @name = name
    @description = description
    @url = url
    @cardslot = cardslot
  end

  def scrape_tiles
    recipe_today = []
    @doc.css("article.grid-col--fixed-tiles").each do |tile|
      recipe_today << {:name => tile.css("h3").text.strip , :description => tile.css("div.rec-card__description").text, :url =>}
    end
    binding.pry
  end

end
