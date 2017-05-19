require 'open-uri'

class Scrapper

  attr_accessor :name, :description, :url

  def self.scrape_home_page
    doc = Nokogiri::HTML(open("http://allrecipes.com/recipes/"))
  end

end
