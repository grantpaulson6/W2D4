require "set"
require 'byebug'

def okay_two_sum?(array, target)
  a = array.sort
  a.each_with_index do |el, i|
    compliment = target - el
    val = a[i..-1].bsearch {|el2| el2 == compliment } 
    return true if val
  end
  false
end


def two_sum?(array, target)
  set = Set.new 

  array.each do |num|
    comp = target - num
    if set.include?(comp)
      return true
    else
      set << num
    end
  end
  false
end



arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 0) # => should be true
p okay_two_sum?(arr, 1) # => should be false