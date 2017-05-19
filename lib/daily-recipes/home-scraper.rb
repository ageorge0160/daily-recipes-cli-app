require 'open-uri'
require 'nokogiri'
class HomeScrapper

  attr_accessor :name, :description, :url

  def get_home_page
    doc = Nokogiri::HTML(open("http://allrecipes.com/recipes/"))
  end

  def scrape_tiles
    self.get_home_page.css()
  end

end
