require 'rspec'
require './lib/dish'
require './lib/potluck'

describe do
  it 'exists' do
    potluck = Potluck.new("7-13-18")
    expect(potluck).to be_an_instance_of(Potluck)
  end


  it "prints the date" do
    potluck = Potluck.new("7-13-18")
    expect(potluck.date).to eq("7-13-18")
  end

  it "prints the dishes" do
    potluck = Potluck.new("7-13-18")
    expect(potluck.dishes).to eq([])
  end

  it "can add dishes" do
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck = Potluck.new("7-13-18")
    potluck.add_dish(couscous_salad)
    expect(potluck.dishes).to eq([couscous_salad])
  end

  it "can print all dishes for a given category" do
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck = Potluck.new("7-13-18")
    potluck.add_dish(couscous_salad)
    potluck.add_dish(summer_pizza)
    potluck.add_dish(cocktail_meatballs)
    expect(potluck.get_all_from_category(:appetizer)).to eq([couscous_salad,summer_pizza])

  end

end
