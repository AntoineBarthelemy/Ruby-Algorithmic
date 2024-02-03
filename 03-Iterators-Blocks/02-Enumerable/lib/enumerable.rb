# Global variable

# first_exercice = %w[Antoine Kim Nicolas Pierre Joshua Baptiste]







# Logic of the code

def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indexes (1, 3, 5, 7, etc.)
  #       You should use Enumerable#each_with_index
  sum = 0
  array.each_with_index do |number, index|
  sum += number index.odd?

  return sum
end

def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select

  array.select do |pair_number|
    pair_number.even?
  end
end

def short_words(array, max_length)
  # TODO: Take an array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
  array_sorted = array.reject { |word| word.length > max_length } # [1, 3, 5]
  return array_sorted
end

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find

  array.find do |number|
    number < limit
  end
end

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  array2 = array.map do |chaine|
    chaine.concat("!")
  end
  return array2
end

def concatenate(array)
  # TODO: Concatenate all strings given in the array.
  #       You should use Enumerable#reduce

  array.reduce("") { |sum, num| sum + num }
end

def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should use Enumerable#each_slice
  sub_array = []
  array.each_slice(2) { |pair| sub_array << pair.sort }
  sub_array
end
