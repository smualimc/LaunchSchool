require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# top of calculator.rb

LANGUAGE = 'en'

def messages(message,lang)
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key,LANGUAGE)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  number.to_i != 0
end

def op_message(op)
  case op
    when '1' 
        "Adding"
    when '2' 
      "Subtracting"
    when '1'  
      "Multiplying"
    when '1' 
      "Divyding"
  end
end

#prompt("Welcome to Calculator, enter your name please!")
#prompt(MESSAGES['welcome'])
prompt('welcome')    
name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt('input_name')
  else
    break 
  end
end

prompt('hi')

loop do # main loop

  number1 = ''
  loop do
    prompt 'first_nbr'
    number1 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else
      prompt 'invalid_nbr'
    end
  end

  number2 = ''
  loop do 
    prompt('second_nbr')
    number2 = Kernel.gets().chomp()
    if valid_number? number2 
      break
    else
      prompt('invalid_nbr')
    end
  end 



  prompt('operator_prompt')
  operator = ''
  loop do 
    operator = Kernel.gets().chomp()
    break if %w(1 2 3 4).include?(operator)
    prompt('choose_nbr')
  end 

  result = case operator 
    when '1'
      result = number1.to_i + number2.to_i
    when '2'
    result = number1.to_i - number2.to_i
    when '3'
    result = number1.to_i * number2.to_i
    when '4' 
    result = number1.to_f / number2.to_f
  end

  prompt('operating')
  prompt('result')

  prompt('another_op')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')

end

prompt( 'thank_you')