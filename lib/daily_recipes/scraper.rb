class Scraper


    def self.scrape_recipes
      doc = Nokogiri::HTML(open("http://pinchofyum.com/recipes"))
      doc.css("article.post-summary").each do |tile|
        recipe = Recipe.new
        recipe.name = tile.css(".caption").text.strip
        recipe.url = tile.css(".block-link").attribute("href").value
        Recipe.all << recipe
      end
    end

end
