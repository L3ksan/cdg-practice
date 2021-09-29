def add_n_pokemon_to_base(num, arr)
  num.times do |value|
    puts "Enter pokemon name:"
    name = gets.chomp
    puts "Enter pokemon color:"
    color = gets.chomp
    arr.merge!({name => color})
  end
  arr
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

def print(arr)
  puts "["
  arr.each {|key, value| puts "{ name: '#{key}', color: '#{value}' },\n" }
  puts "]"
end

def start
  puts "Добро пожаловать в скрипт с покемонами по второй лабораторной работе"
  puts "Для начала введите, сколько покемонов хотите добавить в массив:"
  pokemon_arr = {}
  number_pokemon = repeat_int_input
  puts number_pokemon
  add_n_pokemon_to_base(number_pokemon, pokemon_arr)
  print(pokemon_arr)
  puts pokemon_arr
end

start