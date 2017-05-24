class Card

  attr_accessor :name, :url, :ingredients, :directions

  def initialize(name = nil, ingredients = nil, directions = nil)
    @name = name
    @ingredients = ingredients
    @directions = directions
    @url = url

    @ingredients = []
    @directions = []
  end

  def self.create(url)
    doc = Nokogiri::HTML(open(url))
    self.new
    binding.pry
    self.name = doc.css("header.tasty-recipes-entry-header h2 span").text.strip
    self.ingredients = doc.css("div.tasty-recipes-ingredients ul").each do |part|
       part.css("li").each {|ingredient| @ingredients << ingredient}
     end
    self.directions = doc.css("div.tasty-recipes-instructions ol li").each {|step| @directions << step}
  end

  def self.card
    self.create
  end


end
