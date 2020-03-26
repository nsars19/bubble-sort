require '~/ruby_learnins/Ruby_Exercises/stock_picker.rb'
# using #array_generator method to provide random arrays for testing

def bubble_sort arr

  (arr.length - 1).times do
    arr.each_with_index do |e, i|
      next if e == arr.last
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if e > arr[i + 1]
    end
  end

  puts "#{arr}"
end

#puts bubble_sort(array_generator(10))

def bubble_sort_by arr
 
  (arr.length - 1).times do
    arr.each_with_index do |e, i|

      next if e == arr.last
      if yield(arr[i], arr[i + 1]) == 1
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
     
      i += 1
    end
  end
  puts "#{arr}"
end

test_array = [6, 19, 75, 4, 16, 29, 93, 5, 10, 13, 68]
test_two = [3, 2, 1]

bubble_sort_by(test_two) do |left, right|
  left <=> right
end
bubble_sort_by(test_array) do |left, right|
  left <=> right
end

