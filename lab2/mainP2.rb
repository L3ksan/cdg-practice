def add_n_pokemons_to_base(num, arr)
  num.times do |value|
    hash = {}
    puts "Enter pokemon name:"
    name = gets.chomp
    puts "Enter pokemon color:"
    color = gets.chomp
    arr.merge!({name => color})
  end
  arr
end

def print(arr)
  puts "["
  arr.each {|key, value| puts "{ name: '#{key}', color: '#{value}' },\n" }
  puts "]"
end

def start
  puts "Добро пожаловать в скрипт с покемонами по второй лабораторной работе"
  puts "Для начала введите, сколько покемонов хотите добавить в массив:"
  pokemons_arr = {}
  loop do
    $number_of_pokemons = gets.chomp
    if $number_of_pokemons.scan(/\D/).empty?
      $number_of_pokemons = $number_of_pokemons.to_i
      break
    end
    puts "Вы ввели не число"
    puts "Введите, сколько покемонов хотите добавить в массив:"
  end
  add_n_pokemons_to_base($number_of_pokemons, pokemons_arr)
  print(pokemons_arr)
end

start