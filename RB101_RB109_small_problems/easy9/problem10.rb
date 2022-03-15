def buy_fruit(nested)
  arr = []
  nested.each do |pair|
    factor = pair.last
    factor.times { arr << pair.first }
  end
arr
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]