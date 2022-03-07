=begin
def select_fruit(hsh)
  keys_ary = hsh.keys
  counter = 0
  fruits_hsh = {}
  while counter < keys_ary.length
    if hsh[keys_ary[counter]] == 'Fruit'
      fruits_hsh[keys_ary[counter]]= hsh[keys_ary[counter]]
    end
    counter += 1
  end
  fruits_hsh
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}


def double_numbers(numbers)
  
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] *= 2
    
    counter += 1
  end

  numbers
end

p double_numbers([1, 4, 3, 7, 2, 6])
=end 

def general_select(produce_list, selection_criteria)
  keys_ary = produce_list.keys
  selected_hsh = {}
  counter = 0
  while counter < keys_ary.count
    if produce_list[keys_ary[counter]] == selection_criteria
      selected_hsh[keys_ary[counter]] = produce_list[keys_ary[counter]]
    end
    counter += 1
  end
selected_hsh
end

  produce = {
    'apple' => 'Fruit',
    'carrot' => 'Vegetable',
    'pear' => 'Fruit',
    'broccoli' => 'Vegetable'
  }

  p general_select(produce, 'Vegetable')
