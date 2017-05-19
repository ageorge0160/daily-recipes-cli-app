class MealScraper


  def get_meal_page
    #open url from instance of recipe
    doc = Nokogiri::HTML(open(""))
  end

  def scrape_recipe
    #scrape recipe card

  end
end
