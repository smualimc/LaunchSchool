# What is the block's return value in the following code? 
# How is it determined? Also, what is the return value of any? 
# in this code and what does it output?


[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# any? evaluates if there is at least 1 element for that the block
# result is truthie, in this case yes. Next the return value of any?
# is true or false, in this case true. Since any? stops iteration
# after the first truthie, then  the output will be:
# 1
# true
