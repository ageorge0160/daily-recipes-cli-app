# require 'open-uri'
# require 'nokogiri'
class HomeScraper

  def initialize
    @doc = Nokogiri::HTML(open("https://recipes.tamouse.org/full-index.html"))
  end

  def scrape_tiles
    @recipes = []
    @doc.css(".col-md-4").each do |tile|
      @recipes << {:name => tile.css("h3 a").text.strip , :description => tile.css(".post-excerpt p").text, :url => "https://recipes.tamouse.org#{tile.css("h3 a").attribute("href").value }"}
    end
    @recipes
  end

  def make_recipes
    @recipes.each do |recipe|
      Recipe.new_from_hash(recipe)
    end
  end
end
