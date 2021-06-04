# this class will represent a school

class School
  # initializier
  def initialize(name, student_capacity)
    @name = name
    @student_capacity = student_capacity
    # empty array representing teachers
    @teachers = []
    # hash where each key represents grade level that references a empty array as a value
    # empty array will contain name of students
    # distinct empty arrays for each grade level
    @students = Hash.new {|hash, grade_level| hash[grade_level] = []}
  end

  # getter methods

  # return the name of the school
  def get_name
    @name
  end

  # return capacity of school
  def get_capacity
    @student_capacity
  end

  # enroll student
  # grade level is freshman - senior
  def enroll_student(grade_level, student_name)
    # using the grade level, we use this as a key to the hash
    # shovel the student name to the appropiate array
    @students[grade_level] << student_name
  end

  def display_students(classification)
    puts classification
    puts @students[classification]
  end
end

# you need to initialize a new School object in order to use its functions
coppell_high_school = School.new("Coppell High School", 10)

coppell_high_school.enroll_student("freshman", "Gabe Vinluan")

print coppell_high_school.display_students("freshman")
