# My solution is different from yours but it's nice to know that a method
# can return more than one value through an array and the calling must be 
# from as many variables as the array count

def tricky_method(a_string_param, an_array_param)
  "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]


puts "My string looks like this now: #{my_string + tricky_method(my_string, my_array)}"
puts "My array looks like this now: #{my_array + [tricky_method(my_string, my_array)]}"