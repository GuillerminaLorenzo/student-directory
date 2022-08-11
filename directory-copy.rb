def input_students
  puts "Please enter the names of the students".center(43)
  puts "To finish, just hit return twice".center(43)
  # create an empty array
  students = []
  # get the first nameand hobbie
  name = gets.chomp
  puts "Please enter one hobbie:".center(43)
  hobbie = gets.chomp 
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november, hobbie: hobbie}
    puts "Now we have #{students.count} students".center(43)
    # get another name from the user
    name = gets.chomp 
    if !name.empty?
    puts "Please enter one hobbie:".center(43)
    hobbie = gets.chomp
    end
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy".center(43)
  puts "-------------".center(43)
end

def first_letter(students)
  return students.select { |student| student[:name].start_with?("A") }
end

def name_length(students)
  return students.select { |student| student[:name].length<12 }
end

def print(students)
  students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort), likes to #{student[:hobbie]}."
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(43)
end

students = input_students
#nothing happens until we call the methods
print_header
print(name_length(first_letter(students)))
print_footer(first_letter(students))