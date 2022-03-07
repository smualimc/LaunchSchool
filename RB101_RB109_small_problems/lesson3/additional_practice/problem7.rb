# Create a hash that expresses the frequency with which each 
# letter occurs in this string:

statement = "The Flintstones Rock"

keys_ary = statement.delete(' ').split(//).uniq

freq_hsh = {}
counter = 0
while counter < keys_ary.count
  freq_hsh[keys_ary[counter]] = 0
  counter +=1
end

counter = 0
while counter < keys_ary.count
  sum = 0
  idx = 0
  while idx < statement.size
    sum += 1 if keys_ary[counter] == statement[idx]
    idx += 1
  end
  freq_hsh[keys_ary[counter]] = sum
  counter += 1
end

p freq_hsh

# LS solution
result = {}
letters = ("A".."Z").to_a + ("a".."z").to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end

p result
