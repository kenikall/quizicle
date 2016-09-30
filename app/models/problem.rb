# class Problem < ActiveRecord::Base
  belongs_to :quiz

  def solving_time
    # return difference between creation time and update time
  end

  def check_answer
    @correct_answer.to_s.downcase == @response.to_s.downcase
  end
end
