require 'fileutils'
# include 'modules.rb'
require_relative '../../modules.rb'
SMTH_FILE = 'saph.txt'
BUFFER = 'buff.txt'

def wait_press
  puts "Push Enter to continue..."
  gets
end

# def my_own_index
#   puts "To see all lines in file, please enter file name."
#   file_name = gets.chomp
#   file = File.open(file_name)
#   file_data = file.read
#   puts "\n~~~~~start of #{file_name}~~~~~"
#   puts file_data
#   puts "~~~~~end of #{file_name}~~~~~\n\n"
#   file_data
# end

# def print_lines_for_index
#   File.foreach(this) { |item| puts item }
# end

def index
  puts "\n~~~~~start of #{SMTH_FILE}~~~~~"
  File.foreach(SMTH_FILE) { |item| puts item }
  puts "~~~~~end of #{SMTH_FILE}~~~~~\n\n"
end

# def find_old(id)
#   j = 0
#   File.foreach(this) do |item|
#     if j == id
#       puts item
#     end
#     j += j
#   end
# end

def find(id)
  File.foreach(SMTH_FILE).with_index do |line, index|
    @line = line if index == id
  end
  puts "id line from file:"
  puts "\"" + @line.chomp + "\"\n"
  @line
end

def where(pattern)
  File.foreach(SMTH_FILE).with_index do |line, index|
    if line.include?(pattern)
      @line_id = index
      @line = line
    end
  end
  puts "ID of string = "  + @line_id.to_s
  puts "Full line:\n"
  puts "\"" + @line.chomp + "\"\n"
  @line_id
end

def update(id, text)
  file = File.open(BUFFER, 'w')
  File.foreach(SMTH_FILE).with_index do |line, index|
    file.puts(id == index ? text : line)
  end

  file.close
  File.write(SMTH_FILE, File.read(BUFFER))

  File.delete(BUFFER) if File.exist?(BUFFER)

end

def delete(id)
  file = File.open(BUFFER, 'w')
  File.foreach(SMTH_FILE).with_index do |line, index|
    file.puts(id != index ? line : next )
  end

  file.close
  File.write(SMTH_FILE, File.read(BUFFER))

  File.delete(BUFFER) if File.exist?(BUFFER)
end

def print_menu
  puts "~~~~~~~~~~~] Menu [~~~~~~~~~~~\n\n";
  puts "1. Print all lines from the file #{SMTH_FILE};\n"
  puts "2. Print a line by number;\n"
  puts "3. Print string by pattern;\n"
  puts "4. Update line;\n"
  puts "5. Delete line;\n"
  puts "0. Exit;\n"
end

def start
  puts "Welcome to the third laboratory work\n"
  i = -1
  while i!=0
    print_menu
    choice = repeat_int_input
    case choice
    when 0
      i = 0
    when 1
      index
      wait_press
      clear
    when 2
      puts "Enter the line number for its print:\n"
      find(repeat_int_input)
      wait_press
      clear
    when 3
      puts "Enter the string pattern for its complete output:\n"
      where(gets.chomp)
      wait_press
      clear
    when 4
      puts "Enter line id and new text for it:\n"
      update(repeat_int_input,gets.chomp)
      wait_press
      clear
    when 5
      puts "Enter the line id to delete it:\n"
      delete(repeat_int_input)
      wait_press
      clear
    end
  end
end
# print_menu
start
# start
