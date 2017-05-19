

class DailyRecipe

  def call
    list_daily_meals
    show_recipe_card
  end

  def list_daily_meals
    puts "On the menu today:"


    today = HomeScraper.new
    recipe_array = today.scrape_tiles 
    # @recipe = Recipe.today
    # @recipe.each_with_index(1) do |recipe, i|
    #   puts "#{i}. #{recipe.name} - #{recipe.description}"
    # end
  end

  def show_recipe_card
    input = nil
    while input != "exit"
      puts "Which recipe card would you like? Input 'list meals' to see meal list or 'exit'"
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
