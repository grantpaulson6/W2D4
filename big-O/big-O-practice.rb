require 'byebug'

def my_min_sucks(list)
  list.each do |el1|
    return el1 if list.all? { |el2| el1 <= el2}
  end
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]


def my_min_better(list)
  smallest = list[0]

  list.each do |el|
    smallest = smallest < el ? smallest : el
  end

  smallest
end

def largest_contiguous_sum_bad(list)
  largest_sub_sum = list[0]

  list.length.times do |first|
    (first...list.length).each do |last|
      sub_sum = list[first..last].sum
      largest_sub_sum = largest_sub_sum > sub_sum ? largest_sub_sum : sub_sum
    end
  end

  largest_sub_sum
end

def largest_contiguous_subsum(list)
  sums = []
  list.each_with_index do |num, i|
    sums << num
    sub_sums = []
    i.times do |other_i|
      sub_sums << sums[-2-other_i] + num
    end
    sums.concat(sub_sums)
  end
  sums.max

end

p largest_contiguous_subsum([ 2, 3, -6, 7, -6, 7])
# list = [5, 3, -7]
# p largest_contiguous_sum_bad(list)
