class Recipe

  attr_accessor :name, :description, :url

  @@all = []
  def initialize
    @name = name
    @description = description
    @url = url
  end

  def self.new_from_hash(recipe)
    recipe.name = @name
    recipe.description = @description
    recipe.url = @url
    @@all << recipe
  end

  def self.today
    todays_meal = @@all.sample
    binding.pry
    recipe_1.name = "Johnsonville Italian Sausage Lasagna"
    recipe_1.description = "Johnsonville Italian Sausages make it simple to enjoy authentic Italian flavor. This classic lasagna dish is made so much easier when you've got Johnsonville backing you up. The flavor of the Italian sausages will help to make this recipe your new lasagna favorite!"
    recipe_1.url = "http://allrecipes.com/recipe/219946/johnsonville-italian-sausage-lasagna/?internalSource=rotd&referringId=1&referringContentType=recipe%20hub&clickId=cardslot%201"

    puts ""
    puts "-------------- Meal of the day: --------------"
    puts "1. #{recipe_1.name} - #{recipe_1.description}"
  end

end
