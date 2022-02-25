=begin original exercise
def stringy(int)
  str = ''
  1.upto(int) {|number| number.odd? ? str<<'1' : str<<'0'}
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
=end

# Further exploration

def stringy(int, flag =1)
  str = ""
  1.upto(int) do |number|
    if flag == 1
      number.odd? ? str<<'1' : str<<'0'
    else
      number.odd? ? str<<'0' : str<<'1'
    end
  end
  str
end

puts stringy(6) == '101010'
puts stringy(6, 0) == '010101'