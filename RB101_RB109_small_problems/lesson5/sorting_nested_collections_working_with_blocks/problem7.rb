# Given this code, what would be the final values of a and b? 
# Try to work this out without running the code.


a = 2
b = [5, 8]
arr = [a, b] # => [4, [3,8]] var a doesn't change coz arr[0] did a reassignment

arr[0] += 2 
arr[1][0] -= a

p arr