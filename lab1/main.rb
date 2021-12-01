def multiply(left, right)
  left * right
end

def greeting
  puts "Hello, please enter your name"
  name = gets.chomp
  puts "Next, enter your last name"
  soname = gets.chomp
  puts "And lastly, your age, #{name}: #n"
  age = gets.to_i
  if age < 18
    puts "Привет, #{name} #{soname}. Тебе меньше 18 лет, но учиться программировать никогда не рано." 
    "Привет, #{name} #{soname}. Тебе меньше 18 лет, но учиться программировать никогда не рано." 
  else
    puts "Привет, #{name} #{soname}. Самое время заняться делом!" 
    "Привет, #{name} #{soname}. Самое время заняться делом!"
  end

end

def foobar(left, right)
  if left == 20 || right == 20
    puts "first = #{left}, second = #{right}"
    puts right
    right.to_i
  else
    puts "first = #{left}, second = #{right}"
    puts left+right
    left+right
 end
end


foobar(1,10)
foobar(20,10)
foobar(10,20)