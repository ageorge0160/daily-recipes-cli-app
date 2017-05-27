class DailyRecipe

  def call
    todays_meal
    list_daily_meal
    show_recipe_card
  end

  def todays_meal
    @todays_meal = Recipe.today
  end

  def list_daily_meal
    puts "-------------- Meal of the day: --------------"
    puts "#{@todays_meal.name}"
    puts "----------------------------------------------"
    puts ""
  end

  def show_recipe_card
    input = nil
    while input != "exit"
      puts "Select 'recipe' or 'exit'"
      input = gets.strip.downcase

      case input
      when "recipe"
        @todays_meal.get_recipe
        puts "----------------------------------------------"
        puts "Ingredients:"
        @todays_meal.ingredients.each {|ingredient| puts "-#{ingredient}"}
        puts ""
        puts "Directions:"
        @todays_meal.directions.each_with_index {|step, index| puts "#{index + 1}. #{step}\n\n"}
        puts "----------------------------------------------"
      when "exit"
        puts "Goodbye"
      else
        puts "Please try again"
      end
    end
  end

end
