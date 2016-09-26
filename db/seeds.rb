require 'faker'

Teacher.destroy_all
4.times do
  Teacher.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    title: ["Mr.", "Miss", "Mrs.", "Ms."].sample,
    state: Faker::Address.state_abbr,
    email: Faker::Internet.email,
    password: "pass"
    )
end

Classroom.destroy_all
  15.times do
    Classroom.create(
      name: Faker::Team.creature,
      teacher_id: rand(Teacher.first.id..Teacher.count-1)
      )
  end


  Student.destroy_all
  225.times do
    Student.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password: "123",
      classroom_id: rand(Classroom.first.id..Classroom.count-1)
      )
  end

  Subject.destroy_all

    Subject.create(name: "math")
    Subject.create(name: "geography")


  Skill.destroy_all

  225.times do  |x|
    Skill.create(
      name: "multiplication",
      fluency: rand(0.0..100.0),
      accuracy: rand(0.0..100.0),
      subject_id: Subject.find_by(name: "math").id,
      student_id: x
      )
    Skill.create(
      name: "subtraction",
      fluency:rand(0.0..100.0),
      accuracy: rand(0.0..100.0),
      subject_id: Subject.find_by(name: "math").id,
      student_id: x
      )
    Skill.create(
      name:"state capitals",
      fluency: rand(0.0..100.0),
      accuracy: rand(0.0..100.0),
      subject_id: Subject.find_by(name: "geography").id,
      student_id: x
      )
  end
