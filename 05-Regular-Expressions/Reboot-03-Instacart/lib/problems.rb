store_today.each do |item, price|
  if choice_user == item
   sum += price
   puts "Je suis le #{choice_user}, je suis le #{item}"
  else
   puts "Sorry, we don't have #{choice_user} today."
 end
end
