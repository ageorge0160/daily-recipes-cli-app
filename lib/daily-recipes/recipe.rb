class Recipe

  attr_accessor :name, :description, :url

  @@recipes = []

  #create new recipe instance
  def initialize(name = nil, description = nil, url = nil)
    @name = name
    @description = description
    @url = url
  end

  #scrape website and return array of recipes
  def self.create
    doc = Nokogiri::HTML(open("https://recipes.tamouse.org/full-index.html"))
    doc.css(".col-md-4").each do |tile|
      recipe = self.new
      recipe.name = tile.css("h3 a").text.strip
      recipe.description = tile.css(".post-excerpt p").text
      recipe.url = "https://recipes.tamouse.org#{tile.css("h3 a").attribute("href").value }"
      # @recipes << {:name => tile.css("h3 a").text.strip , :description => tile.css(".post-excerpt p").text, :url => "https://recipes.tamouse.org#{tile.css("h3 a").attribute("href").value }"}
      @@recipes << recipe
    end
    @@recipes
  end

  def self.today
    self.create
    @@recipes.sample
  end


end
