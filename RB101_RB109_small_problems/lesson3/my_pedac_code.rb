def number_length_row(number)
  rows = [[]]
  rows[0] = [2]
  last = 2
  row = 2
  while row <= number
    counter = 0
    rows[row - 1] = []
    while counter <= row - 1
      rows[row - 1] << last + 2
      last += 2
      counter += 1
    end
    row += 1
  end
  rows[number - 1]
end
p number_length_row(6)