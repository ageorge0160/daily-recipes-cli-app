

class DailyRecipe

  def call
    list_daily_meal
    show_recipe_card
  end

  def list_daily_meal
    puts "On the menu today:"
    puts "Alfredo Sauce - A creamy, cheesy to go over pasta or other things."
  end

  def show_recipe_card
    puts "Select 'recipe card' or 'exit'"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "recipe card"
        puts "Recipe of the day: Alfredo Sauce"
      when "exit"
        puts "Goodbye"
      else
        puts "Please try again"
      end
    end
  end

end
