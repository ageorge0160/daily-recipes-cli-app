

class DailyRecipe

  def call
    puts "Today's Meals:"
    list_daily_meals
    show_recipe_card

  end

  def list_daily_meals
    puts "Meal of the day: PB & J - Sandwich made of peanut butter and jelly"
    puts "Today's Staff Picks: 1. French Toast 2. Pancakes"
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
      else
        puts "Please try y/n again"
      end
    end
  end

end
