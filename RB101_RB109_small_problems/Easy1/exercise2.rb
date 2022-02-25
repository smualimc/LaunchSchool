=begin
solution 1 with modulo
def is_odd?(int)
  int % 2 == 1
end
=end 

# solution 2 with remainder and abs methods
def is_odd?(int)
  int.remainder(2).abs == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true