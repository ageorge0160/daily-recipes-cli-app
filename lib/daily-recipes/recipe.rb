class Recipe

  attr_accessor :name, :description, :url

  @@all = []
  def initialize(name = nil, description = nil, url = nil)
    @name = name
    @description = description
    @url = url
  end


  def scrape_tiles
    @doc = Nokogiri::HTML(open("https://recipes.tamouse.org/full-index.html"))
    @recipes = []
    @doc.css(".col-md-4").each do |tile|
      @recipes << {:name => tile.css("h3 a").text.strip , :description => tile.css(".post-excerpt p").text, :url => "https://recipes.tamouse.org#{tile.css("h3 a").attribute("href").value }"}
    end
    @recipes
  end

  def new_from_hash(recipe)
    self.new(recipe.name, recipe.description, recipe.url)
  end

  def make_recipes
    recipes_array = scrape_tiles
    recipes_array.each do |recipe|
      self.new_from_hash(recipe)
      @@all << self
    end
  end

  def self.today
    @@all.sample
  end

end
