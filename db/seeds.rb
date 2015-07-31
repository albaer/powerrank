# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "----------------------------"
puts "Purging lists and items..."
List.destroy_all
Item.destroy_all
puts "----------------------------"
puts "Seeding Breakfast..."

breakfast = List.create!(title: "Breakfast Foods")
breakfast_item_attributes = [
  {text: "French Toast", position: 1},
  {text: "Pancakes", position: 2},
  {text: "Omelet", position: 3},
  {text: "Hash Browns", position: 4},
  {text: "Scrambled Eggs", position: 5},
  {text: "Bacon", position: 6},
  {text: "Waffles", position: 7}
]
breakfast_item_attributes.each do |attrs|
  item = Item.create!(attrs)
  breakfast.items << item
end
puts "----------------------------"
puts "Done!"
puts "----------------------------"