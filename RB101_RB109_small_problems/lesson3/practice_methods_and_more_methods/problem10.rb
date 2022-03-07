# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# Since puts returns nil the block returns nil for 
# the second and third element 
# then the output array is [1, nil, nil]
