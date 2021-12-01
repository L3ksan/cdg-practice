def cs_power_of_two(number, word)
  if word[-2,2] != "CS"
    puts "Результат : " + word.reverse
    word.reverse
  else
    result = 2 ** word.length
    puts "Результат: #{result.to_s}"
    result
  end
end

def repeat_int_input
  loop do
    input_string = gets.chomp
    if input_string.scan(/\D/).empty?
      return input_string.to_i
    end
    puts "Вы ввели не число"
    puts "Повторите попытку, введите число"
  end
end

def start
  puts "Добро пожаловать в первую программу второй лабораторной работы\n\n"
  puts " Введите число"
  input_number = repeat_int_input
  puts "Введите слово"
  input_word = gets.chomp
  cs_power_of_two(input_number,input_word)
end

start
