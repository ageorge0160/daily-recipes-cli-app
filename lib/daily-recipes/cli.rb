class DailyRecipe

  def initialize
  end

  def call
    Recipe.new.today

    list_daily_meal
    show_recipe_card
  end

  def list_daily_meal

    puts ""
    puts "-------------- Meal of the day: --------------"
    puts "1. #{todays_meal.name} - #{todays_meal.description}"
    puts ""

  end

  def show_recipe_card
    puts "Select 'recipe card' or 'exit'"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "recipe card"
        todays_meal = Recipe.new.today
      when "exit"
        puts "Goodbye"
      else
        puts "Please try again"
      end
    end
  end

end
