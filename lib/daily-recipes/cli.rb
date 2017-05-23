class DailyRecipe

  def initialize
  end

  def call
    todays_meal
    list_daily_meal
    show_recipe_card
  end

  def list_daily_meal

    puts "-------------- Meal of the day: --------------"
    puts "#{@todays_meal.name}"
    puts "#{@todays_meal.description}"
    puts ""
  end

  def show_recipe_card
    input = nil
    while input != "exit"
      puts "Select 'recipe card' or 'exit'"
      input = gets.strip.downcase
      case input
      when "recipe card"
        card = @todays_meal.recipe_card(@todays_meal.url)
        puts "#{card.name}"
        puts "Ingredients:"
        card.ingredients.each {|ingredient| puts "-#{ingredient}"}
        card.directions.each_with_index {|step, index| puts "#{index + 1}. #{step}"}
      when "exit"
        puts "Goodbye"
      else
        puts "Please try again"
      end
    end
  end

  def todays_meal
    @todays_meal = Recipe.today
  end

end
