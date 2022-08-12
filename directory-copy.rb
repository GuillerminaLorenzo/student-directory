def input_students
  puts "Please enter the names of the students".center(43)
  puts "To finish, just hit return twice".center(43)
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students".center(43)
    # get another name from the user
    name = gets.chomp
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
  index = 0
  counter = 1
  while index < students.length do
    student = students[index]
    puts "#{counter}. #{student[:name]} (#{student[:cohort]} cohort)"
    counter += 1
    index += 1
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