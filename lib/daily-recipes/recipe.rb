class Recipe

  attr_accessor :name, :url, :ingredients, :directions

  @@recipes = []

  def initialize(name = nil, url = nil)
    @name = name
    @url = url
    @ingredients = []
    @directions = []
  end

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

  def get_recipe
    doc2 = Nokogiri::HTML(open(self.url))

    doc2.css("div.tasty-recipes-ingredients ul li").each {|item| @ingredients << item.text}
    doc2.css("div.tasty-recipes-instructions ol li").each {|step| @directions << step.text}
  end


end
