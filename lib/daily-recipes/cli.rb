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
    puts ""
  end

  def todays_meal
    @todays_meal = Recipe.today
  end

  def todays_card
    @todays_card = Card.create(@todays_meal.url)
  end

  def show_recipe_card
    input = nil
    while input != "exit"
      puts "Select 'recipe' or 'exit'"
      input = gets.strip.downcase
      case input
        #change back AG
      when "r"
        puts "#{@todays_card}"
        binding.pry
        puts "Ingredients:"
        @todays_card.ingredients.each {|ingredient| puts "-#{ingredient}"}
        puts "Directions:"
        @todays_card.directions.each_with_index {|step, index| puts "#{index + 1}. #{step}"}
      when "exit"
        puts "Goodbye"
      else
        puts "Please try again"
      end
    end
  end


end
