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
    # binding.pry
  end

  def show_recipe_card
    input = nil
    while input != "exit"
      puts "Select 'recipe card' or 'exit'"
      input = gets.strip.downcase
      case input
      when "recipe card"
        puts "card"
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
