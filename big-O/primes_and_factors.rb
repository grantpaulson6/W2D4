require 'byebug'

def prime_factors(n)
  (2..n).each do |i|
    if n % i == 0
      factors = prime_factors(n/i)
      ans = [i] + factors + factors.map {|el| el * i}
      return ans.sort.uniq
    end
  end
  [1,n]
end



factors = prime_factors(1209324560913560934856)
p factors.all? { |factor| 1209324560913560934856 % factor == 0 }