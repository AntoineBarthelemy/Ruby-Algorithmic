# Global variables

chevaux_en_course = %w[Flying Fox Zenyatta Kentucky Derby Silver]

# Logic of the code

def choice_user (chevaux_en_course) # Second treatement

  puts "Make your choice"
  answer_user = gets.chomp.to_i

  chevaux_en_course.each_with_index {|animal,index| p "#{index + 1}" }

end

def presentation_rule (chevaux_en_course) # First Treatement

  # Message de bienvenue

  puts "Welcome to our awesome horse race "
  sleep(2)

  # Explications des règles
  puts "Here is the horses where you can bet #{chevaux_en_course}\n So input 1 if you want #{chevaux_en_course[0]}, 2 if you want #{chevaux_en_course[1]} etc"
  sleep(2)
  choice_user(chevaux_en_course)

end

# Call functions

presentation_rule(chevaux_en_course)
