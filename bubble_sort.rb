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

puts bubble_sort(array_generator(10))