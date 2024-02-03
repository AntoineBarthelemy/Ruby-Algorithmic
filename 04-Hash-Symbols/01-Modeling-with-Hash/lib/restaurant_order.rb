# Logic of the code
DISHES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90
}

def poor_calories_counter(burger, side, beverage)
  DISHES[burger] + DISHES[side] + DISHES[beverage]
end

# puts poor_calories_counter("Hamburger", "Chesse burger", "Iced tea")
