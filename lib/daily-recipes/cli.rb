

class DailyRecipe

  def call
    puts "Today's Meal:"
    list_daily_meals
    show_daily_recipe
    list_staff_picks
  
  end

  def list_daily_meals
    puts "PB & J - Sandwich made of peanut butter and jelly"
  end


  def list_staff_picks
    puts "Would you like to see today's staff picks?(y/n)"
    input = gets.strip
    case input
      when "y"
        puts "Today's Staff Picks: 1. French Toast 2. Pancakes 3.Exit"
        puts "Which recipe card would you like?"
        input = gets.strip
        case input
          when "1"
            puts "French Toast"
          when "2"
            puts "Pancakes"
          when "3"
            puts "Goodbye"
        end
      when "n"
        puts "Goodbye"
    end

  end


  def show_daily_recipe
    puts "Would you like the recipe card?(y/n)"
    input = gets.strip
    if input == "y"
      puts "Recipe Card for PB & J"
    end
  end



end
