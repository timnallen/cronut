require_relative 'ingredient'

class Item < Ingredient
  attr_reader :name,
              :ppu,
              :toppings,
              :batters

  def initialize(attr_hash)
    super
    @name = attr_hash['name']
    @ppu = attr_hash['ppu']
    @batters = make_batters(attr_hash['batters']['batter'])
    @toppings = make_toppings(attr_hash['topping'])
  end

  def make_toppings(toppings)
    toppings.map do |topping_info|
      Topping.new(topping_info)
    end
  end

  def make_batters(batters)
    batters.map do |batter_info|
      Topping.new(batter_info)
    end
  end
end
