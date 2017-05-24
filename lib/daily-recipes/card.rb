class Card

  attr_accessor :name, :url, :ingredients, :directions

  def initialize(url, name = nil, ingredients = nil, directions = nil)
    @name = name
    ingredients = []
    @ingredients = ingredients
    directions = []
    @directions = directions
    @url = url

  end

  def self.create(url)
    doc = Nokogiri::HTML(open(url))
    card = self.new
    card.name = "Recipe"#doc.css("header.tasty-recipes-entry-header h2 span").text.strip
    card.ingredients = doc.css("ul li").each {|ingredient| ingredients << ingredient}
    card.directions = doc.css("ol li p").each {|step| directions << step}
    binding.pry
  end


end
