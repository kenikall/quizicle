class Quiz < ActiveRecord::Base
  belongs_to :subject
  has_many :problems

  def create_problem
    factorA = rand(0..12)
    factorB = rand(0..12)
    problem = Problem.create(
      question: factorA.to_s+" x "+factorB.to_s,
      correct_answer: factorA*factorB,
      quiz_id: self.id
      )
    @last_problem = problem.id
    return problem.question
  end

  def get_response (answer)
    problem = Problem.find(last_problem)
    problem.response = answer
    problem.save
  end

  def grade_quiz
    count = 0

    self.problems.each do |problem|
      count +=1 if problem.check_answer
    end
    self.update(score: count.to_f/(self.num_questions+1).to_f)
  end
end

def last_problem
  self.problems.last.id
end
