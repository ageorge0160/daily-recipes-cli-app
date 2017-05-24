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
    #plugging in a sample url for now until the scraping is working
    card = self.new
    card.name = doc.css(".page-header h2").text.strip
    card.ingredients = doc.css("ul li").each {|ingredient| ingredients << ingredient}
    card.directions = doc.css("ol li p").each {|step| directions << step}
    binding.pry
  end

end
