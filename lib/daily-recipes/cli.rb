

class DailyRecipe

  def call
    list_daily_meals
    show_recipe_card
  end

  def list_daily_meals
    puts "On the menu today:"

    @recipe = Recipe.today
  end

  def show_recipe_card
    input = nil
    while input != "exit"
      puts "Which recipe card would you like?"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Recipe Card for PB & J"
      when "2"
        puts "Recipe Card for French Toast"
      when "3"
        puts "Recipe Card for Panckaes"
      when "list meals"
        list_daily_meals
      when "exit"
        puts "Goodbye"
      else
        puts "Please try again"
      end
    end
  end

end
