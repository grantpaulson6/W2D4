require 'byebug'

def windowed_max_range(array, window)
  current_max_range = 0
  range_i = 0 
  (array.length - window + 1).times do |first|
    sub_array = array[first...first + window]
    range = sub_array.max - sub_array.min
    if range > current_max_range
      range_i = first
      current_max_range = range
    end
  end
  current_max_range
  #array[range_i...range_i + window]
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) # 3, 2, 5, 4, 8