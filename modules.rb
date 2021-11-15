
  def repeat_int_input
    loop do
      input_string = gets.chomp
      if input_string.scan(/\D/).empty?
        return input_string.to_i
      end
      puts "You did not enter a number."
      puts "Try again, enter the number"
    end
  end

  def self.clear
    print "\e[2J\e[f"
  end
