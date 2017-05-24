class Recipe

  attr_accessor :name, :url

  @@recipes = []

  #create new recipe instance
  def initialize(name = nil, url = nil)
    @name = name
    @url = url
  end

  #scrape website and return array of recipes
  def self.create
    doc = Nokogiri::HTML(open("http://pinchofyum.com/recipes"))
    doc.css("article.post-summary").each do |tile|
      recipe = self.new
      recipe.name = tile.css(".caption").text.strip
      recipe.url = tile.css(".block-link").attribute("href").value
      @@recipes << recipe
    end
    @@recipes
  end

  def self.today
    self.create
    @@recipes.sample
  end



end
