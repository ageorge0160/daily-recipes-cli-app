

class DailyRecipe

  def call
    puts "Today's Meal:"
    list_daily_meals
    show_daily_recipe
  end

  def list_daily_meals
    puts "PB & J - Sandwich made of peanut butter and jelly"
  end


  def list_staff_picks
  end

  def show_daily_recipe
    puts "Would you like the recipe card?"
    input = gets.strip
    if input == "y"
      puts "Recipe Card for PB & J"
    end

  end

end
