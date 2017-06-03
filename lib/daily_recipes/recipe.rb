class Recipe

  attr_accessor :name, :url, :ingredients, :directions

  @@recipes = []

  def initialize(name = nil, url = nil)
    @name = name
    @url = url
    @ingredients = []
    @directions = []
  end

  def self.all
    @@recipes
  end


  def get_recipe
    doc2 = Nokogiri::HTML(open(self.url))

    doc2.css("div.tasty-recipes-ingredients ul li").each {|item| @ingredients << item.text}
    doc2.css("div.tasty-recipes-instructions ol li").each {|step| @directions << step.text}
  end
end
