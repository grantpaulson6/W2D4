require 'byebug'

def first_anagram?(str1, str2)
  all_anagrams = str1.split('').permutation.to_a.map(&:join)
  all_anagrams.include?(str2)
end


def second_anagram?(str1, str2)
  arr2 = str2.split("")
  str1.each_char do |char|
    idx = arr2.find_index(char)
    return false unless idx
    arr2.delete_at(idx)
  end
  arr2.empty?

end


def third_anagram?(str1, str2)

  str1.split("").sort == str2.split("").sort
end

def fourth_anagram?(str1, str2)
  
  count1 = Hash.new(0)
  count2 = Hash.new(0)
  str1.each_char { |char| count1[char] += 1 }
  str2.each_char { |char| count2[char] += 1 }
  count1 == count2
end


p fourth_anagram?("gizmo", "sally")

p fourth_anagram?("elvis", "lives") 