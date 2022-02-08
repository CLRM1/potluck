require './lib/dish'
require 'pry'

class Potluck
attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    category = category

    dishes_in_category = []
    @dishes.each do |dish|
      if category == dish.category
        dishes_in_category << dish
      end
    end
    dishes_in_category

  end

end

binding.pry
