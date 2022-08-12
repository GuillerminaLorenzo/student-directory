def input_students
  puts "Please enter the names of the students".center(43)
  puts "To finish, just hit return twice".center(43)
  # create an empty array
  students = []
  loop do
    name = gets.chomp
    break if name.empty?

    puts "Enter cohort: "
    cohort = gets.chomp
    cohort = cohort.empty? ? "unknown".to_sym : cohort.to_sym
    
    puts "Enter country of birth: "
    country = gets.chomp
    country = country.empty? ? "unknown".to_sym : country.to_sym

    puts "Enter height: "
    height = gets.chomp
    height = height.empty? ? "unknown".to_sym : height.to_sym
    
    puts "Enter hobbies: "
    hobbies = gets.chomp
    hobbies = hobbies.empty? ? "unknown".to_sym : hobbies.to_sym

    students << {name: name, cohort: cohort,
    country: country, height: height, hobbies: hobbies}
    puts "Now we have #{students.count} students"
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
    puts "#{counter}. #{student[:name]} (#{student[:cohort]} cohort)
    from: #{student[:country]}, 
    height: #{student[:height]} , 
    likes to: #{student[:hobbies]}."
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