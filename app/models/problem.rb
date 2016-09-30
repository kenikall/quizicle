class Problem < ActiveRecord::Base
  belongs_to :quiz

  def solving_time
    self.updated_at-self.created_at
  end

  def check_answer
    self.correct_answer.to_s.downcase == self.response.to_s.downcase
  end
end
