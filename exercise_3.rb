# 3a. The script aims to define a method count_words that takes a sentence as a string and returns a hash with each word as a key and its frequency (number of times it occurs in the sentence) as the value. 
# The current implementation is flawed and needs debugging.

def count_words(sentence)
  # Your code here
  word_list = []
  word_list = sentence.split(" ")
  # this is a hash with a default value of 0
  counts = Hash.new(0)
  # this works by iterating through the array and incrementing the value of the key by 1 each time it appears
  word_list.each do |word|
    counts[word] += 1
  end
  counts
end

# 3b. The script is intended to define a method calculate_factorial that takes an integer and returns its factorial. The current implementation is not functioning correctly.

def calculate_factorial(number)
  # Your code here 
  return 1 if number == 0
  return "Error: Negative number" if number < 0
  factorial = 1
  # to get the factorial, we need to multiply all the numbers from the number down to 1
  until number == 1 do 
    factorial *= number
    number -= 1
  end
  factorial
end

# 3c. The script is meant to define a method find_median that takes an array of numbers, sorts it, and returns the median value. The current implementation is not working correctly.

def find_median(arr)
  # Your code here 
  return nil if arr.empty?

  sorted = arr.sort
  length = sorted.length

  if length.odd?
    # if the length of the array is odd, return the middle element
    sorted[length / 2]
  else
    # if the length of the array is even, return the average of the middle two elements
    (sorted[length / 2 - 1] + sorted[length / 2]) / 2.0
  end
end

puts find_median([9,2,10])