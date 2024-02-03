# Global variable

answer = ""
gift_wish = []



# Logic of the code

# def christmas_step2(answer, gift_wish) # Second treatement
#   a


# end

def display_wishlist(gift_wish) # Second treatement

  gift_wish.each_with_index do |wish, index|
    puts " #{index + 1} - #{["X"]} #{wish}"
  end

end

def christmas(answer, gift_wish) # First treatement

  puts "Welcome to your Christmas gift list" # Message de salutation
  sleep(2)

  while not answer == "quit" # Loop

    puts "Which action [list|add|delete|mark|quit]"
    answer = gets.chomp

    case answer # Condition

     when "list"
      puts "Here is a list of you wishes:"
      display_wishlist(gift_wish)





     when "add"
      puts "Which items you want add"
      wish_name = gets.chomp
      gift_wish << wish_name

        puts "Here is a list of you wishes:"
        display_wishlist(gift_wish)




     when "delete"
      puts "Here is the list updated:"

      display_wishlist(gift_wish)
      puts "Which item do you want to delete"
      index_of_wish_to_remove = gets.chomp.to_i
      gift_wish.delete_at(index_of_wish_to_remove - 1)

      when "mark"
        puts "Which item have you bought (give the index)?"
        index_of_wish_to_bought = gets.chomp.to_i
        

     else
      puts "Your action: #{answer} isn't correct"


    end
  end
  puts "Good bye " # Message de fin
end

# Call functions


christmas(answer, gift_wish)
