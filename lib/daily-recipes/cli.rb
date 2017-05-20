

class DailyRecipe

  def call
    list_daily_meals
    show_recipe_card
    different_meal
  end

  def list_daily_meals
    puts "On the menu today:"


    today = HomeScraper.new.scrape_tiles.make_recipes
    today

    # binding.pry
  end

  def show_recipe_card
    input = nil
    while input != "exit"
      puts "Which recipe card would you like? Input 'list meals' to see meal list or 'exit'"
      input = gets.strip.downcase
      case input
      when "y"
        puts "Recipe of the day:"
      when "n"
        puts "Would you like a different meal?"
      when "exit"
        puts "Goodbye"
      else
        puts "Please try again"
      end
    end
  end

  def different_meal

    #reload
  end

end
