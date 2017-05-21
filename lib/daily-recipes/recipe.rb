class Recipe

  attr_accessor :name, :description, :url

  @@all = []
  def initialize
    @name = name
    @description = description
    @url = url
  end

  def self.new_from_hash(recipe)
    # recipe.name = @name
    # recipe.description = @description
    # recipe.url = @url
    # @@all << recipe
  end

  def self.today
    # todays_meal = @@all.sample

    recipe_1.name = "Alfredo"
    recipe_1.description = "Alfredo sauce recipe card"
    recipe_1.url = "https://recipes.tamouse.org/sauces/2011/09/07/alfredo-sauce.html"

    puts ""
    puts "-------------- Meal of the day: --------------"
    puts "1. #{recipe_1.name} - #{recipe_1.description}"
  end

end
