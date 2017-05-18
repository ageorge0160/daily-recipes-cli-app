class Recipe

  attr_accessor :name, :description, :url

  def initialize
    @name = name
    @description = description
    @url = url
  end

  def self.today
    #scrape here

    recipe_1 = self.new
    recipe_1.name = "Johnsonville Italian Sausage Lasagna"
    recipe_1.description = "Johnsonville Italian Sausages make it simple to enjoy authentic Italian flavor. This classic lasagna dish is made so much easier when you've got Johnsonville backing you up. The flavor of the Italian sausages will help to make this recipe your new lasagna favorite!"
    recipe_1.url = "http://allrecipes.com/recipe/219946/johnsonville-italian-sausage-lasagna/?internalSource=rotd&referringId=1&referringContentType=recipe%20hub&clickId=cardslot%201"

    recipe_2 = self.new
    recipe_2.name = "Pressure Cooker Barbeque Chicken"
    recipe_2.description = "This chicken dish is incredibly easy to make and very delicious. It's a childhood favorite of my partner's; his mom served it with rice and green beans for an easy weekday meal. Feel free to add other hot sauce or spices to jazz it up. Frank's RedHot® sauce is a great addition."
    recipe_2.url = "http://allrecipes.com/recipe/245857/pressure-cooker-barbeque-chicken/?internalSource=staff%20pick&referringId=1&referringContentType=recipe%20hub&clickId=cardslot%202"


    recipe_3 = self.new
    recipe_3.name = "Cornell Chicken"
    recipe_3.description = "This famous grilled chicken recipe was created by Dr. Robert C. Baker at New York's Cornell University. They say Dr. Baker was simply trying to invent an easy and delicious way to grill smaller, younger chickens, so that the local chicken farms could sell more birds. The doc's tasty recipe ended up being such a success that sales in the area soared, and the recipe became a statewide favorite."
    recipe_3.url = "http://allrecipes.com/recipe/221091/cornell-chicken/?internalSource=staff%20pick&referringId=1&referringContentType=recipe%20hub&clickId=cardslot%204"

    [recipe_1, recipe_2, recipe_3]

    puts ""
    puts "-------------- Meal of the day: --------------"
    puts "1. #{recipe_1.name} - #{recipe_1.description}"
    puts ""
    puts "-------------- Today's Staff Picks: --------------"
    puts "2. #{recipe_2.name} - #{recipe_2.description}"
    puts ""
    puts "3. #{recipe_3.name} - #{recipe_3.description}"
    puts ""

  end

end
