require_relative '../../modules.rb'
RESULT = "result.txt"

def read_file(file_name)
  file = File.open(file_name)
  file_read = file.readlines.map { |line| line.chomp }
  file_read
end
@filee = File.open(RESULT, 'w')

def move_to_result(from, age)
  File.foreach(from) do |line|
    @filee.puts(line.include?(age) ? line : next)
  end
end
def start
  temporary_file_name = "students.txt"
  file_read = read_file(temporary_file_name)
  i = 0
  while i != -1
    puts  "Enter the age of the students you want to include in the resulting list:\n"
    move_to_result(file_read, repeat_int_input)
  end


end
temporary_file_name = "students.txt"
# file_read = read_file(temporary_file_name)
move_to_result(temporary_file_name, "20")