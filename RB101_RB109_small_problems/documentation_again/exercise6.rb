# What does this code print?

# it iterates from 5 to 10 by steps of 3 => 5,5
# then it prints:
# 5
# 8

5.step(to: 10, by: 3) { |value| puts value }