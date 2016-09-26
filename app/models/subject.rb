class Subject < ActiveRecord::Base
  has_many :skills
  has_many :quizzes
end
