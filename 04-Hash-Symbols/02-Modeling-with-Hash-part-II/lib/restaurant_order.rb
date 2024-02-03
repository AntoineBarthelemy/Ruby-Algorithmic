# Calorie des aliments
a =  25
if a == 18
end


DISHES_CALORIES = {
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
  DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end



MENUS_CALORIES = {
  "Cheesy Combo" => ["Cheese Burger", "Sweet Potatoes", "Lemonade"],
  "Veggie Combo" => ["Veggie Burger", "Sweet Potatoes", "Iced Tea"],
  "Vegan Combo" => ["Vegan Burger", "Salad", "Lemonade"]
}


def calories_counter(orders)
  total_kcal = 0
  orders.each do |item|
    if DISHES_CALORIES.key?(item)
      total_kcal += DISHES_CALORIES[item]
    else
      total_kcal += poor_calories_counter(MENUS_CALORIES[item][0], MENUS_CALORIES[item][1], MENUS_CALORIES[item][2])
    end
  end
  return total_kcal
end

array = %w[Antoine Kim Vincent ]

puts calories_counter(["Hamburger", "Salad", "Lemonade", "Cheesy Combo", "Veggie Combo"])
