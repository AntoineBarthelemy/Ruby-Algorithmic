# Global variables

store_today = {"kiwi" => 1.25, "banana" => 0.5, "mango" => 4, "aspargus" => 9}


# Logic of the code

def display_check(my_array_of_choice, sum) # Third treatement
  p my_array_of_choice

  my_array_of_choice.each do |fruits|
    p fruits
  end

puts "-------BILL---------", "TOTAL: #{sum}" ,  " --------------------"

end

def input_user(store_today) # Second treatement

  choice_user = "" # Local variable
  sum = 0 # Local variable
  my_array_of_choice = [] # Local variable

  while choice_user != "quit"
    puts "Which item? (or 'quit' to checkout')"
    choice_user = gets.chomp
    if store_today.key?(choice_user)
      sum += store_today[choice_user]
      my_array_of_choice << choice_user
    elsif choice_user != "quit"
      puts "Sorry, we don't have #{choice_user} today."

    end
  end
 display_check(my_array_of_choice, sum)
end

def affichage_store(store_today) # First treatement

  # Message de bienvenue

  puts "------------------", "Welcome to Instacart", "------------------", "In our store today:"


  # Affichage store

  store_today.each {|content, price| puts "#{content}: #{price}€"}

  puts "------------------"
  input_user(store_today)

end


# Call functions

affichage_store(store_today)
