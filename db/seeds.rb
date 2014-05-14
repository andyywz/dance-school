main_user = User.create({
  first_name: "Andy",
  last_name: "Yong",
  username: "andyywz",
  email: "andyywz@gmail.com"
})

4.times do
  first_name, last_name = Faker::Name.name.split(" ")
  User.create({
    first_name: first_name,
    last_name: last_name,
    username: Faker::Internet.user_name("#{first_name} #{last_name}"),
    email: Faker::Internet.email(first_name)
  })
end

# Create a course
# TODO: Allow teachers to create courses but not students
# TODO: Add a super user type for creation of courses
course = Course.create({
  name: "Lindy Hop 101",
  dance_style: "Lindy Hop",
})

# Adds students to a course
User.all.each do |user|
  next if user.id % 2 == 0
  Enrollment.create({
    user_id: user.id,
    course_id: course.id
  })
end

# User.find(2).enrollments.create(course_id: 1) enrolls a user to a course
