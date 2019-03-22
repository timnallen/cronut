require 'json'
require 'pry'
require './lib/item.rb'
require './lib/batter.rb'
require './lib/topping.rb'
require './lib/ingredient.rb'

json_data = File.read('./data/cronut.json')
item_hashes = JSON.parse(json_data)['items']['item']

items = item_hashes.map do |item_hash|
  Item.new(item_hash)
end

items.each do |item|
  puts "Item #{item.id} is a #{item.type}. It is called a #{item.name}. It has the following toppings:"
  item.toppings.each do |topping|
    puts "#{topping.type}"
  end
  puts "It's made from different batters. Like:"
  item.batters.each do |batter|
    puts "#{batter.type}"
  end
end
