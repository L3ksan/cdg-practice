def multiply(left, right)
  left * right
end

def greeting
  puts "Здравствуйте, введите, пожалуйста, ваше имя"
  name = gets.chomp
  puts "Далее введите вашу фамилию"
  soname = gets.chomp
  puts "И на последок, ваш возраст: #n"
  age = gets.to_i
  if age < 18
    puts "Привет, #{name} #{soname}. Тебе меньше 18 лет, но учиться программировать никогда не рано."  
  else
    puts "Привет, #{name} #{soname}. Самое время заняться делом!" 
  end

end

def foobar(left, right)
  if left == 20 || right == 20
    right.to_i
  else
    puts left+right
    left+right
 end
end

foobar(20,5)
