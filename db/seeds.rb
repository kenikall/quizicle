require 'faker'

Subject.destroy_all

Subject.create(name: "math")
Subject.create(name: "geography")


Skill.destroy_all

Quiz.destroy_all

Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Alabama",
  correct_answer: "Montgomery"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Arizona",
  correct_answer: "Phoenix"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of California",
  correct_answer: "Sacramento"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Connecticut",
  correct_answer: "Hartford"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Florida",
  correct_answer: "Tallahassee"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Hawaii",
  correct_answer: "Honolulu"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Illinois",
  correct_answer: "Springfield"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Iowa",
  correct_answer: "Des Moines"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Kentucky",
  correct_answer: "Frankfort"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Maine",
  correct_answer: "Augusta"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Massachusetts",
  correct_answer: "Boston"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Minnesota",
  correct_answer: "St. Paul"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Missouri",
  correct_answer: "Jefferson City"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Montana",
  correct_answer: "Helena"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Nevada",
  correct_answer: "Carson City"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of New Jersey",
  correct_answer: "Trenton"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of New York",
  correct_answer: "Albany"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of North Dakota",
  correct_answer: "Bismarck"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Oklahoma",
  correct_answer: "Oklahoma City"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Pennsylvania",
  correct_answer: "Harrisburg"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of South Carolina",
  correct_answer: "Columbia"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Tennessee",
  correct_answer: "Nashville"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Utah",
  correct_answer: "Salt Lake City"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Virginia",
  correct_answer: "Richmond"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of West Virginia",
  correct_answer: "Charleston"
  )
Problem.create(
  subject_id: Subject.find_by(name: "geography").id,
  question: "What is the capital of Wyoming",
  correct_answer: "Cheyenne"
  )
