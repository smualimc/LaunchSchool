require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator_messages.yml')
LANGUAGE = 'en'
def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
end
def messages(key, lang)
  MESSAGES[lang][key]
end
def integer?(input)
  input.to_i.to_s == input
end
def float?(input)
  input.to_f.to_s == input
end
prompt('welcome')
loop do
  # Input the Loan Amount
  prompt('loan')
  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    if integer?(loan_amount) && loan_amount.to_i > 0
      break
    else
      prompt('proper_amount')
    end
  end
  # Input the Annual Percentage Rate
  prompt('annual_rate')
  annual_rate = ''
  loop do
    annual_rate = gets.chomp
    if float?(annual_rate)
      annual_rate = annual_rate.to_f / 100
      break
    else
      prompt('bad_rate')
    end
  end
  # Input the loan duration in years
  prompt('years_duration')
  years_duration = ''
  loop do
    years_duration = gets.chomp
    if integer?(years_duration) && years_duration.to_i > 0
      break
    else
      prompt('bad_duration')
    end
  end
  # Set values for formula
  monthly_i_rate = (annual_rate / 12)
  loan_duration_months = (years_duration.to_i * 12)
  monthly_payment = (loan_amount.to_i * (monthly_i_rate / \
    (1 - (1 + monthly_i_rate)**(-1 * loan_duration_months))))
  # Print results
  prompt('payment')
  puts monthly_payment
  prompt('i_monthly')
  i_percentage = monthly_i_rate * 100
  puts "#{i_percentage} %"
  prompt('duration_months')
  puts loan_duration_months
  prompt('another_calculation')
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end
