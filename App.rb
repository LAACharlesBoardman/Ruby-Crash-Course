# P R I N T I N G

puts "Hello" # 'puts' adds a new line after the string
print "Friend" # 'print' does not add a new line after string
puts "!"

# V A R I A B L E S
=begin
  Names are case-sensitive and may begin with:
      letters, _
    After, may include
      letters, numbers, _
    Convention says
      Start with a lower case word, then additional words are lowercase seperated by an underscore
      ex. my_first_variable
=end
name = "Charlie"  # Strings
age = 23          # Interger
decimal = 3.5     # Decimal
is_human = true   # Boolean

puts "Your name is #{name}"
name = "Charles"
puts "Your name is " + name # Concatenation

# C A S T I N  &  C O N V E R T I N G

puts 3.14.to_i    # 'to interger'
puts 3.to_f       # 'to float'
puts 3.0.to_s     # 'to string'

puts 100 + "50".to_i
puts 100 + "50.99".to_f

# S T R I N G S

greeting = "Hello"
#indexes:   01234

puts greeting.length
puts greeting[0]
puts greeting.include? "llo"  # Case sensitive
puts greeting.include? "z"
puts greeting[1,3]            # 1 is what index to start from. 3 is how many to grab. Starting from index 1 grab 3 characters.

# N U M B E R S

puts 2 * 3        # Basic Arithmetic: +, -, /, *
puts 2**3         # Exponent
puts 10 % 3       # Modulus Op. : returns remainder of 10/3
puts (1 + 2) * 3  # Order of operations
puts 10 / 3.0     # int's and doubles (returns decimal)


num = 10
num += 100        # +=, -=, /=, *=
puts num

num = -36.8
puts num.abs()    # Returns the Absolute Value
puts num.round()  # Rounds the number

# Math class has useful math methods
puts Math.sqrt(144) # Square Root of...
puts Math.log(0)    # Returns infinity

# U S E R  I N P U T

puts "Enter your name: "
name = gets#.chomp          # Without '.chomp' it'll add a new line.
puts "Hello #{name}, how are you."

puts "Enter first num: "
num1  = gets.chomp
puts "Enter second num: "
num2 = gets.chomp
puts num1.to_f + num2.to_f

# A R R A Y S

lucky_numbers = [4, 8, "fifteen", 16, 23, 42.0] # Multiple data types in a single array
#Indexes         0  1     2       3   4     5

lucky_numbers[0] = 90
puts lucky_numbers[0]
puts lucky_numbers[1]
puts lucky_numbers[-1]    # Loops to the end of the array

puts "\n\n"               # New lines '\n'
puts lucky_numbers[2,3]   # Starts at index 2 and grabs 3 elements
puts "\n\n"
puts lucky_numbers[2..4]  # Grabs elements from indexes 2 through to 4
puts "\n\n"

puts lucky_numbers.length

# N Dimensional Arrays

number_grid = [ [1, 2], [3, 4] ]
number_grid[0][0] = 99

puts number_grid[0][0]
puts number_grid[0][1]

# A R R A Y  M E T H O D S

friends = []
friends.push("Elliot")
friends.push("Angela")
friends.push("Darlene")
friends.push("DarleneDuplicate")

friends.pop                # Removes the last element in array
puts friends
puts "\n"

puts friends.reverse
puts "\n"

puts friends.sort         # Careful when used on arrays with multiple data tyoes
puts "\n"

puts friends.include? "Elliot"

# M E T H O D S  (F U N C T I O N S)

def add_numbers(num1, num2=99)  # 'num2' is 99 unless otherwise stated
  return num1 + num2
end

puts add_numbers(4, 3)
puts add_numbers(4)

# C O N D I T I O N A L S

is_student = false
is_smart = false

# and &&, or ||

if is_student && is_smart
  puts "You are a student"
elsif is_student && !is_smart
  puts "You are not a smart student"
else
  puts "You are not a student and not smart"
end

# >, <, >=, <=, !=, ==, String.equals()
if 1 > 3
  puts "Number comparision was true"
end

if "a" < "b"
  puts "String comparision was true"
end

# S W I T C H  S T A T E M E N T S

my_grade = "A"
case my_grade
  when "A"
    puts "You Pass"
  when "F"
    puts "You Fail"
  else
    puts "Invalid Grade"
end

# D I C T I O N A R I E S

# Key mapped to a value (similar to arrays)
test_grades = {
  "Andy" => "B+",
  :Stanley => "C",
  "Ryan" => "A",
  3 => 95.2
}

test_grades["Andy"] = "B-"
puts test_grades["Andy"]
puts test_grades[:Stanley]
puts test_grades[3] # KEY not an index

# W H I L E  L O O P S

index = 1
while index <= 5
  puts index
  index += 1
end

# F O R  L O O P S

for index in 0..5
  puts index
end

5.times do |index|
  puts index
end

lucky_nums = [4, 8, 15, 16, 23, 42]
for lucky_num in lucky_nums
  puts lucky_num
end

lucky_nums.each do |lucky_num|
  puts lucky_num
end

# E X C E P T I O N  C A T C H I N G

# num = 10/0          # App.rb:214:in `/': divided by 0 (ZeroDivisionError)

begin
  num = 10/0
rescue
  puts "Error"
end

begin                 # Catch specific error
  # puts bad_variable
  num = 10/0
rescue ZeroDivisionError
  puts "Error"
rescue
  puts "All other errors"
end

# raise "Made Up Exception"

# O O P

=begin
class Book
  attr_accessor :title, :author

  def readBook()
    puts "Reading #{self.title} by #{self.author}"
  end
end

book1 = Book.new()
book1.title = "Neuromancer"
book1.author = "William Gibson"

book1.readBook()
puts book1.title
=end

# C O N S T R U C T O R S

=begin
class Book
  attr_accessor :title, :author
  def initialize(title, author)       # 'initialize' is the key word here for contructors
    @title = title
    @author = author
  end

  def readBook()
    puts "Reading #{self.title} by #{self.author}"
  end
end

book1 = Book.new("Neuromancer", "William Gibson")

puts book1.title
=end

# G E T T E R S  &  S E T T E R S

=begin
class Book
  attr_accessor :title, :author
  def initialize(title, author)
    self.title = title
    @author = author
  end

  def title(title)
    puts "Set"
    @title = title
  end
  def title
    puts "Get"
    return @title
  end
end

book1 = Book.new("Neuromancer", "William Gibson")

puts book1.title            # Access the attributes the same way
=end

# I N H E R I T A N C E

=begin
class Chef
  def make_chicken()
    puts "The chef makes chicken"
  end

  def make_salad()
    puts "The chef makes salad"
  end

  def make_special_dish()
    puts "The chef makes a special dish"
  end
end

class ItalianChef < Chef
  def make_pasta()
    puts "The chef makes pasta"
  end

  def make_special_dish()
    puts "The chef makes chicken parm"
  end
end

my_chef = Chef.new()
my_chef.make_chicken()

my_italian_chef = ItalianChef.new()
my_italian_chef.make_chicken()
=end

# I N H E R I T A N C E  &  C O N S T R U C T O R S

class Chef

  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end

  def make_chicken()
    puts "The chef makes chicken"
  end

  def make_salad()
    puts "The chef makes salad"
  end

  def make_special_dish()
    puts "The chef makes a special dish"
  end
end

class ItalianChef < Chef

  attr_accessor :country_of_origin
  def initialize(name, age, country_of_origin)
    @country_of_origin = country_of_origin
    super(name, age)
  end

  def make_pasta()
    puts "The chef makes pasta"
  end

  def make_special_dish()
    puts "The chef makes chicken parm"
  end
end

my_chef = Chef.new("Gordan Ramsay", 50)
my_chef.make_chicken()

my_italian_chef = ItalianChef.new("Massimo Bottura", 55, "Italy")
my_italian_chef.make_chicken()
puts my_italian_chef.age
