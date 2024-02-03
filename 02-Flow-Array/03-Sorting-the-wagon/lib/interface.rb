require_relative "wagon_sort"


puts "Type a student name"
student_name = gets.chomp
if student_name == ""
  puts "there is not student"
  exit
else
  students = []
  students << student_name
end
puts "Type another student name or press enter to finish"
student_name = gets.chomp
i = 1
while student_name != ""
  students << student_name
  i += 1
  puts "Type another student name or press enter to finish"
  student_name = gets.chomp
end
students_sort = wagon_sort(students)
if i > 1
  puts "Congratulations! Your Wagon has #{i} students:"
  puts "#{students_sort[0..-2].join(', ')} and #{students_sort[-1]}"
else
  puts "Congratulations! Your Wagon has #{i} student:"
  puts students_sort
end
# ggs
