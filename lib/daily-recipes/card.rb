#moving this to a new file to keep the steps separate

class Card
  #scrape from todays meal url to return recipde card

  def initialize(name = nil, ingredients = nil, directions = nil)
    @name = name
    ingredients = []
    @ingredients = ingredients
    directions = []
    @directions = directions

  end

  def recipe_card
    doc = Nokogiri::HTML(open("https://recipes.tamouse.org/main-dishes/2011/07/07/balsamic-chicken.html"))
    #plugging in a sample url for now until the scraping is working
    card = self.new
    card.name = doc.css(".page-header h2").text.strip
    card.ingredients = doc.css("ul li").each {|ingredient| ingredients << ingredient}
    card.directions = doc.css("ol li p").each {|step| directions << step}
  end
end
